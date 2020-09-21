---- Carry weapon SWEP
AddCSLuaFile()
DEFINE_BASECLASS "weapon_tttbase"

SWEP.HoldType               = "pistol"

if CLIENT then
	SWEP.PrintName           = "magnet_name"
	SWEP.Slot                = 4

	SWEP.DrawCrosshair       = false
	SWEP.ViewModelFlip       = false
end

SWEP.Base                   = "weapon_tttbase"

SWEP.AutoSpawnable          = false

SWEP.ViewModel              = Model("models/weapons/v_stunbaton.mdl")
SWEP.WorldModel             = Model("models/weapons/w_stunbaton.mdl")

SWEP.Primary.ClipSize       = -1
SWEP.Primary.DefaultClip    = -1
SWEP.Primary.Automatic      = true
SWEP.Primary.Ammo           = "none"
SWEP.Primary.Delay          = 0.1

SWEP.Secondary.ClipSize     = -1
SWEP.Secondary.DefaultClip  = -1
SWEP.Secondary.Automatic    = true
SWEP.Secondary.Ammo         = "none"
SWEP.Secondary.Delay        = 0.3

SWEP.Kind                   = WEAPON_CARRY
SWEP.InLoadoutFor           = {ROLE_INNOCENT, ROLE_TRAITOR, ROLE_DETECTIVE}

SWEP.AllowDelete            = false
SWEP.AllowDrop              = false
SWEP.NoSights               = true


local allow_rag  = CreateConVar("ttt_ragdoll_carrying", "1")
local prop_force = CreateConVar("ttt_prop_carrying_force", "4000")
local no_throw   = CreateConVar("ttt_no_prop_throwing", "0")
local pin_rag    = CreateConVar("ttt_ragdoll_pinning", "1")
local pin_rag_inno = CreateConVar("ttt_ragdoll_pinning_innocents", "0")

-- Allowing weapon pickups can allow players to cause a crash in the physics
-- system (ie. not fixable). Tuning the range seems to make this more
-- difficult. Not sure why. It's that kind of crash.
local allow_wep = CreateConVar("ttt_weapon_carrying", "0")
local wep_range = CreateConVar("ttt_weapon_carrying_range", "50")

-- not customizable via convars as some objects rely on not being carryable for
-- gameplay purposes
CARRY_WEIGHT_LIMIT = 45

local PIN_RAG_RANGE = 90

function SWEP:Initialize()
	self.bActive = false
end
function SWEP:PrimaryAttack()
end

function SWEP:SecondaryAttack()
	if not self:CanSecondaryAttack() then return end
	if self.bActive then
		self:SetNextPrimaryFire(CurTime() + SWEP.Primary.Delay )
		self:SetNextSecondaryAttack(CurTime() + SWEP.Secondary.Delay )
		self:DetachObject()
		self:SendWeaponAnim( ACT_VM_MISSCENTER )
	else
		self:FindObject()
	end
end

function SWEP:FindObject()
	--This whole function was written to mirrror weapon_physcannon.cpp
	local trData = {
		start = self:GetPos(),
		endpos = self:GetPos() + self:GetOwner():GetForward() * wep_range:GetInt(),
		mask =  bit.bor(MASK_SHOT, CONTENTS_GRATE),
		ignoreworld = false
	}
	local trace = util.TraceLine(trData)
	local ent
	--Try again with hull trace
	if ( trace.Fraction == 1.0 or not trace.Entity or trace.Entity:IsWorld() ) then
		trData[maxs] = Vector(4, 4, 4)
		trData[mins] = Vector(-4, -4, -4)
		util.TraceHull(trData)
	end
	local bPull, bAttach = false, false
	if trace.Fraction < 1 and trace.Entity and not trace.Entity:IsWorld() then
		ent = trace.Entity
		if trace.Fraction <= 0.25 then
			bAttach = true
		else
			bPull = true
		end
	end
	--if we're still having a bad time, mess with things in a nearby cone
	local ents
	if not (bPull or bAttach) then
		ents = ents.FindInCone(self:GetPos(), self:GetOwner():GetForward(), 0.97)
	end
	if ents ~= nil then
		ent = ents[1] --just pick the first result, that's what Valve did, so, good enough for me
		if ent:GetPos():DistToSqr(self:GetPos()) < math.pow(wep_range:GetInt(), 2) then
			bAttach = true
		else
			bPull = true
		end
	end
	if bAttach and self:CanPickup(ent) then
		self:Attach(ent)
		self.bActive = true
		return
	end
	local phys = ent:GetPhysicsObject()
	if bPull and IsValid(phys) then
		local pullDir = self:GetPos() - ent:WorldSpaceCenter()
		pullDir:Normalize()
		pullDir:Mul(prop_force:GetInt())
		local mass = phys:GetMass()
		if mass < 50 then
			pullDir:Mul((mass + 0.5) * 0.02)
		end
		phys:ApplyForceCenter(pullDir)
	end
end

function SWEP:CanPickup(target)
	local phys = target:GetPhysicsObject()
	local ply = self:GetOwner()

	return IsValid(phys) and IsValid(ply) and
			(not phys:HasGameFlag(FVPHYSICS_NO_PLAYER_PICKUP)) and
			phys:GetMass() < CARRY_WEIGHT_LIMIT and
			(not PlayerStandsOn(target)) and
			(target.CanPickup ~= false) and
			(target:GetClass() ~= "prop_ragdoll" or allow_rag:GetBool()) and
			((not target:IsWeapon()) or allow_wep:GetBool())
end

function SWEP:Drop()
	if not self:CheckValidity() then return end
	if not self:AllowEntityDrop() then return end
	if self.attached then
		self.handler:RemoveFromMotionController(self.attached)
		self.handler:Remove()
	end
end

function SWEP:ShouldDropOnDie()
	return false
end

function SWEP:OnDrop()
	self:Remove()
end


function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 0, "CanRagPin")
	self:NetworkVar("Entity", 0, "CarriedRag")
	return self.BaseClass.SetupDataTables(self)
end

if CLIENT then
	local draw = draw
	local util = util

	local PT = LANG.GetParamTranslation
	local key_params = {primaryfire = Key("+attack", "LEFT MOUSE")}
	function SWEP:DrawHUD()
	  self.BaseClass.DrawHUD(self)

	  if self:GetCanRagPin() and IsValid(self:GetCarriedRag()) then
		 local client = LocalPlayer()

		 if not client:IsSpec() and client:IsTraitor() then
			local tr = util.TraceLine({start  = client:EyePos(),
				endpos = client:EyePos() + (client:GetAimVector() * PIN_RAG_RANGE),
				filter = {client, self, self:GetCarriedRag()},
				mask   = MASK_SOLID})

			if tr.HitWorld and (not tr.HitSky) then
				draw.SimpleText(PT("magnet_help", key_params), "TabLarge", ScrW() / 2, ScrH() / 2 - 50, COLOR_RED, TEXT_ALIGN_CENTER)
			end
		 end
	  end
	end
end

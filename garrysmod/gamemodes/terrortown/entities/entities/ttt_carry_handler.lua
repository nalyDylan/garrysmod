--[[
The goal here is to replicate the CGrabController code in weapon_physcannon.cpp
]]
AddCSLuaFile()

ENT.Type = "anim"

ENT.Carried = nil
ENT.CarriedMass = 0
ENT.PrevThink = 0
ENT.TargetPos = Vector(0,0,0)
ENT.TargetAng = Angle(0,0,0)
ENT.Owner = nil


local REDUCED_CARRY_MASS = 1

function ENT:OnRemove()
   self:DetachEntity(false)
end

function ENT:SetTargetPosition(target, targetOrientation)
   self.targetPosition = target
   self.targetRotation = targetOrientation

   --this is defined but not used in weapon_physcannon here
   --[[
      TODO: Is this important here? Should it be somewhere else?
      Should it be deleted?
   ]]
   local timeToArrive = FrameTime()

   --[[
   TODO: There's a bunch of code here in weapon_physcannon that wakes a single attachment
   of the GrabController, I'm not sure we need that?
   ]]
end

function ENT:Attach(ent)
   local phys = ent:GetPhysicsObject()
   if self.attached or not self:CanPickup(ent) or not IsValid(phys) then
      return
   end
   if not self.handler then
      self.handler = ents.Create("ttt_carry_handler")
      if not self.handler then return end
   end
   self.attached = ent
   self.handler:AddToMotionController(phys)

   phys:Wake()
   phys:AddGameFlag(FVPHYSICS_PLAYER_HELD)
   --[[
   the below is in weapon_physcannon, but does it matter?
   TODO: Put some sort of print statement here and test this on some TTT maps
   I can't imagine too many TTT entities have lots of physobjects, and the documentation
   says ragdolls only have one.

   This code is here to stop crazy physics though
   ]]
   local count = ent:GetPhysicsObjectCount()
   local loadweight = 0
   local flFactor = math.max(count / 7.5, 1)
   local obj
   for i = 0,count do
      obj = GetPhysicsObjectNum(i)
      loadweight = loadweight + obj:GetMass()
      table.insert(self.savedMass, obj:GetMass())
      obj:SetMass(1 / flFactor)
      obj:SetDamping(10)
   end
   phys:SetMass(1)
   phys:EnableDrag(false)
end
function ENT:Initialize()
   --[[
   I can't take the name m_shadow seriously for these because I listen
   to Avenged Sevenfold... so self will do.
   presumably though this is for the PhysObject Shadow though.
   Defining these here for now because they seem to change on the fly maybe?

   TODO: Do these change?
   ]]
   self.dampFactor = 1
   self.teleportDistance = 0
   self.maxSpeed = 1000
   self.maxAngular = 3600
   self.maxDampSpeed = 2000
   self.maxDampAngular = self.maxAngular
   self.attachedEntity = nil
   self.savedMass = {}
   if SERVER and IsValid(self.Carried) then
      self:SetModel(self.Carried:GetModel())
   end
   self:PhysicsInit( SOLID_VPHYSICS )
   self:SetMoveType( MOVETYPE_VPHYSICS )
   self:SetSolid( SOLID_VPHYSICS )
   self:SetCollisionGroup(COLLISION_GROUP_NONE)
--   self:SetSolid(SOLID_NONE)
   self:SetNoDraw(true)

--   self:SetHealth(9999)



--   local ply = self:GetOwner()
--   self.Owner = ply
--   if IsValid(ply) then
--      self.TargetPos = ply:GetShootPos() + (ply:GetAimVector() * 70)
--      self.TargetAng = ply:GetAimVector()
--   end


   if SERVER and IsValid(self.Carried) then

      local phys = self:GetPhysicsObject()
      local carphys = self.Carried:GetPhysicsObject()

      if IsValid(phys) and IsValid(carphys) then
         phys:Wake()
         carphys:Wake()

         phys:SetMass(9999)

         phys:SetDamping(0, 1000)
         carphys:SetDamping(0, 1000)

--         if not carphys:IsPenetrating() then
--            phys:SetPos(carphys:GetPos())
--            phys:SetAngle(carphys:GetAngle())
--            carphys:SetPos( phys:GetPos() )
--            carphys:SetAngle( phys:GetAngle() )
--         end

      end

      self.Carried:SetGravity(false)
      self.Carried:SetOwner(self:GetOwner())
--      self.Carried:SetNoDraw(true)
--      self.Carried:SetSolid(SOLID_NONE)
   end
end

function ENT:OnRemove()
   if IsValid(self.Carried) then
      self.Carried:SetGravity(true)
      self.Carried:SetOwner(nil)
--      self.Carried:SetNoDraw(false)
--      self.Carried:SetSolid(SOLID_VPHYSICS)
      self.Carried:SetMoveType(MOVETYPE_VPHYSICS)
      
      local carphys = self.Carried:GetPhysicsObject()
      if IsValid(carphys) then
         carphys:SetDamping(0,0)
      end

      self.Carried:PhysWake()

   end
end


--function ENT:Think()
--   if CLIENT then return end
--
--   -- Check on all entities involved
--
--   local obj = self.Carried
--   local ply = self:GetOwner()
--   if not IsValid(obj) or not IsValid(ply) or not ply:Alive() then
--      self:Remove()
--      return
--   end
--
--
--
--   -- Check some other requirements
--   local spos = ply:GetShootPos()
--   if ply:GetGroundEntity() == obj or obj:NearestPoint(spos):Distance(spos) > 150 then
--      self:Remove()
--      return
--   end
--
--
--   self.TargetPos = spos + (ply:GetAimVector() * 70)
--   self.TargetAng = ply:GetAimVector()
--
--   local phys = self:GetPhysicsObject()
--   local carryphys = obj:GetPhysicsObject()
--   if IsValid(phys) and IsValid(carryphys) then
--      if phys:IsPenetrating() then
--         self:Remove()
--         return
----         self.TargetPos = phys:GetPos() + Vector(0,0,5)
----         phys:SetPos(self.TargetPos)
--      end
--
--      carryphys:SetPos(phys:GetPos())
--      carryphys:SetAngle(phys:GetAngles())
--      carryphys:SetVelocity(phys:GetVelocity())
--   end
--
--end


--function ENT:PhysicsSimulate(phys, delta)
--   phys:Wake()
--
--   local p = {}
--   p.pos = self.TargetPos
--   p.angle = self.TargetAng
--   p.secondstoarrive = 0.05
--   p.maxangular = 100
--   p.maxangulardamp = 10000
--   p.maxspeed = 100
--   p.maxspeeddamp = 1000
--   p.dampfactor = 0.8
--   p.teleportdistance = 0
--   p.deltatime = delta
--
--   phys:ComputeShadowControl(p)
--end


function ENT:OnTakeDamage(dmg)
   -- do nothing
end
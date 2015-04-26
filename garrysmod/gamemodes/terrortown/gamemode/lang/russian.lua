---- Russian language strings

local L = LANG.CreateLanguage("Русский")

--- General text used in various places
L.traitor    = "Предатель"
L.detective  = "Детектив"
L.innocent   = "Невиновный"
L.last_words = "Последнее Слово"

L.terrorists = "Террористы"
L.spectators = "Наблюдатели"

--- Round status messages
L.round_minplayers = "Недостаточно игроков для начала раунда..."
L.round_voting     = "Голосование в процессе, старт раунда через {num} секунд..."
L.round_begintime  = "Новый раунд начинается через {num} секунд. Приготовьтесь."
L.round_selected   = "Предатели выбраны."
L.round_started    = "Раунд начался!"
L.round_restart    = "Перезапуск раунда админом."

L.round_traitors_one  = "Вы - последний предатель."
L.round_traitors_more = "Вы - предатель. Ваши товарищи: {names}"

L.win_time         = "Время вышло! Предатели повержены."
L.win_traitor      = "Предатели победили!"
L.win_innocent     = "Предатели уничтожены!"
L.win_showreport   = "Посмотрим на отчеты раунда на {num} секунд."

L.limit_round      = "Лимит раундов достигнут. {mapname} скоро загрузится."
L.limit_time       = "Время вышло. {mapname} сейчас загрузится."
L.limit_vote       = "Время голосовать за новую карту!"
L.limit_left       = "{num} раундов или {time} минут осталось до смены карты на {mapname}."

--- Credit awards
L.credit_det_all   = "Детективы, вы награждены {num} кредитами за ваши действия."
L.credit_tr_all    = "Предатели, вы награждены {num} кредитами за ваши действия."

L.credit_kill      = "Вы получили {num} кредит(ов) за убийство."

--- Karma
L.karma_dmg_full   = "Ваша карма {amount}, и вы наносите больший урон в этом раунде!"
L.karma_dmg_other  = "Ваша карма {amount}. Ваш урон понижен на {num}%. Если вы не остановитесь - будете забанены!"

--- Body identification messages
L.body_found       = "{finder} нашел тело {victim}. {role}"

-- The {role} in body_found will be replaced by one of the following:
L.body_found_t     = "Он был Предателем!"
L.body_found_d     = "Он был Детективом."
L.body_found_i     = "Он был Невинным."

L.body_confirm     = "{finder} подтвердил смерть {victim}."

L.body_call        = "{player} позвал Детектива к телу {victim}!"
L.body_call_error  = "Вы должны подтвердить смерть игрока, прежде чем звать Детектива!"

L.body_burning     = "АЙ! Это тело горит!"
L.body_credits     = "Вы нашли {num} кредитов на теле!"

--- Menus and windows
L.close = "Закрыть"
L.cancel = "Отмена"

-- For navigation buttons
L.next = "След."
L.prev = "Пред."

-- Equipment buying menu
L.equip_title     = "Снаряжение"
L.equip_tabtitle  = "Заказать Снаряжение"

L.equip_status    = "Статус заказа"
L.equip_cost      = "У вас {num} кредитов осталось."
L.equip_help_cost = "Любое снаряжение стоит 1 кредит."

L.equip_help_carry = "Вы можете покупать вещи только для которых у вас есть место."
L.equip_carry      = "Вы МОЖЕТЕ взять это."
L.equip_carry_own  = "У вас уже есть это."
L.equip_carry_slot = "У вас уже занят слот {slot}."

L.equip_help_stock = "Из всех предметов, вы можете купить только один за раунд."
L.equip_stock_deny = "Этого предмета нет в наличии."
L.equip_stock_ok   = "Этот предмет есть в наличии."

L.equip_custom     = "Кастомный предмет сервера"

L.equip_spec_name  = "Имя"
L.equip_spec_type  = "Тип"
L.equip_spec_desc  = "Описание"

L.equip_confirm    = "Купить"

-- Disguiser tab in equipment menu
L.disg_name      = "Маскировка"
L.disg_menutitle = "Контроль маскировки"
L.disg_not_owned = "У вас уже есть Маскировка!"
L.disg_enable    = "Включить Маскировку"

L.disg_help1     = "Если активна, она скрывает ваш счет, карму и кол-во убийств от всех. + скрывает вас от детектива."
L.disg_help2     = "Нажмите NUMPAD Enter для активации Маскировки."

-- Radar tab in equipment menu
L.radar_name      = "Радар"
L.radar_menutitle = "Контроль радара"
L.radar_not_owned = "У вас уже есть радар!"
L.radar_scan      = "Совершить сканирование"
L.radar_auto      = "Повторить сканирование"
L.radar_help      = "Результаты сканирования показываются {num} секунд, после чего радар будет перезагружен и готов к использованию."
L.radar_charging  = "Ваш радар все еще работает!"

-- Transfer tab in equipment menu
L.xfer_name       = "Передача"
L.xfer_menutitle  = "Передать кредиты"
L.xfer_no_credits = "У вас нету кредитов для передачи!"
L.xfer_send       = "Передать Кредит"
L.xfer_help       = "Вы можете пересылать кредиты только игрокам в роли {role}."

L.xfer_no_recip   = "Получатель не действителен, кредит не передан."
L.xfer_no_credits = "Недостаточно кредитов для передачи."
L.xfer_success    = "Передан кредит игроку {player}."
L.xfer_received   = "{player} дал вам {num} кредитов."

-- Radio tab in equipment menu
L.radio_name      = "Радио"
L.radio_help      = "Нажмите кнопку, чтобы проиграть какой либо звук."
L.radio_notplaced = "Вы должны поставить радио, чтобы проиграть на нем звук."

-- Radio soundboard buttons
L.radio_button_scream  = "Крик"
L.radio_button_expl    = "Взрыв"
L.radio_button_pistol  = "Выстрел пистолета"
L.radio_button_m16     = "Выстрел с М4"
L.radio_button_deagle  = "Выстрел с Дигла"
L.radio_button_mac10   = "Выстрел из МАС10"
L.radio_button_shotgun = "Выстрел из дробовика"
L.radio_button_rifle   = "Выстрел из винтовки"
L.radio_button_huge    = "Очередь из пулемета"
L.radio_button_c4      = "Пиканье С4"
L.radio_button_burn    = "Горение"
L.radio_button_steps   = "Шаги"


-- Intro screen shown after joining
L.intro_help     = "Если вы новичок, нажмите F1 для помощи!"

-- Chat-related
L.spec_teamchat_hint = "ПОДСКАЗКА: За наблюдателя вы можете говорить только в TEAM чат!"
L.inno_globalchat_hint = "Если вы невиновны, используйте глобальный чат для разговора."

-- "Continue playing" vote
L.contvote_continue = "Продолжить игру на этой"
L.contvote_change   = "Начать голосование"

-- Radiocommands/quickchat
L.quick_title   = "Быстрые Сообщения"

L.quick_yes     = "Да."
L.quick_no      = "Нет."
L.quick_help    = "На Помощь!"
L.quick_imwith  = "Я с {player}."
L.quick_see     = "Я вижу {player}."
L.quick_suspect = "{player} ведет себя подозрительно."
L.quick_traitor = "{player} предатель!"
L.quick_inno    = "{player} невиновный."
L.quick_check   = "Есть кто живой?"

-- {player} in the quickchat text normally becomes a player nickname, but can
-- also be one of the below.  Keep these lowercase.
L.quick_nobody    = "никто"
L.quick_disg      = "кто-то замаскированный"
L.quick_corpse    = "неизвестное тело"
L.quick_corpse_id = "Труп {player}"


--- Body search window
L.search_title  = "Результаты Поиска"
L.search_info   = "Информация"
L.search_confirm = "Подтвердить Смерть"
L.search_call   = "Позвать Детектива"

-- Descriptions of pieces of information found
L.search_nick   = "Это труп {player}."

L.search_role_t = "Он был Предателем!"
L.search_role_d = "Это был доблестный Детектив."
L.search_role_i = "Он был Невиновным."

L.search_words  = "Последние его слова были: '{lastwords}'"
L.search_armor  = "Он носил бронежилет."
L.search_disg   = "Он носил устройство - передатчик помех."
L.search_radar  = "Он носил радар, но он более не работает."
L.search_c4     = "В его кармане вы нашли записку. В ней сказано, что нужно перерезать {num}-й провод чтобы безопасно обезвредить бомбу."

L.search_dmg_crush  = "Много костей было сломано. Видимо на него упало что-то тяжелое."
L.search_dmg_bullet = "Очевидно, что его застрелили."
L.search_dmg_fall   = "Он упал и разбился... GENIOUS!."
L.search_dmg_boom   = "Он взорвался."
L.search_dmg_club   = "Его одежда порвана. Видимо его забили."
L.search_dmg_drown  = "Он утонул -_-."
L.search_dmg_stab   = "Его зарезали."
L.search_dmg_burn   = "Кажется, кому-то поджарили зад..."
L.search_dmg_tele   = "Похоже его ДНК была обосрана БОМЖами!"
L.search_dmg_car    = "Пока он переходил дорогу, его сбил долбо*б на машине."
L.search_dmg_other  = "Невозможно определить причину смерти!"

L.search_weapon = "Видимо его убили при помощи {weapon}."
L.search_head   = "Бах и в голову. Нет времени на разговоры!"
L.search_time   = "Он умер за {time} минут до того, как вы его нашли."
L.search_dna    = "Он умер совсем недавно и на нем еще осталась ДНК убийцы! У вас есть {time} чтобы его отсканировать."

L.search_kills1 = "Вы нашли список убийств, что подтверждает смерть {player}."
L.search_kills2 = "В списке убийств были следующие имена:"
L.search_eyes   = "Используя свои навыки детектива вы выяснили, что последний, кого видел данный человек был: {player}. Убийца или случайный свидетель?"


-- Scoreboard
L.sb_playing    = "Вы играете на..."
L.sb_mapchange  = "Карта сменится через {num} раундов или {time}"

L.sb_mia        = "Пропал без Вести"
L.sb_confirmed  = "Убит"

L.sb_ping       = "Пинг"
L.sb_deaths     = "Смерти"
L.sb_score      = "Счет"
L.sb_karma      = "Карма"

L.sb_info_help  = "Обыщите тело и увидите результаты тут."

L.sb_tag_friend = "ТОВАРИЩ"
L.sb_tag_susp   = "ПОДОЗРИТЕЛЬНЫЙ"
L.sb_tag_avoid  = "ИЗБЕГАТЬ"
L.sb_tag_kill   = "УБИТЬ"
L.sb_tag_miss   = "ПРОПАЛ"

--- Help and settings menu (F1)
L.help_title = "Помощь и Настройки"

-- Tabs
L.help_tut     = "Урок"
L.help_tut_tip = "Как играть на ТТТ в 6-ти шагах"

L.help_settings = "Настройки"
L.help_settings_tip = "Настройки вашего интерфейса"

-- Settings
L.set_title_gui = "Настройки Интерфейса"

L.set_tips      = "Показывать подсказки наверху"

L.set_startpopup = "Время показа таблички о начале раунда"
L.set_startpopup_tip = "Когда раунд начинается, маленькое сообщение всплывает. Здесь регулировка его длительности."

L.set_cross_opacity = "Положение прицела на экране"
L.set_cross_disable = "Выключить прицел"
L.set_minimal_id    = "Не показывать информацию о цели"
L.set_healthlabel   = "Показывать статус здоровья на полосе здоровья"
L.set_lowsights     = "Опустить оружие во время прицеливания"
L.set_lowsights_tip = "Опустить оружие во время прицеливания. Это делает прицеливание более легким, но менее реалистичным."
L.set_fastsw        = "Быстрое переключение оружия"
L.set_fastsw_tip    = "Выключить меню оружие, что позволяет вам мгновенно переключаться между оружием."
L.set_wswitch       = "Выключить автоматическое закрытие меню выбора оружия"
L.set_wswitch_tip   = "Отключает авто-закрытие меню оружия."
L.set_cues          = "Проигрывать звук начала и конца раунда"


L.set_title_play    = "Настройки Геймплея"

L.set_specmode      = "Режим 'Только Наблюдение' "
L.set_specmode_tip  = "Режим наблюдения не позволит вам возрождаться в раундах, пока вы его не выключите."
L.set_mute          = "Заглушить живых игроков пока ты мертв"
L.set_mute_tip      = "Нажмите чтобы отключить звук других игроков пока ты мертв."


L.set_title_lang    = "Настройки Локализации"

L.set_lang          = "Выбрать Язык:"


--- Weapons and equipment, HUD and messages

-- Equipment actions, like buying and dropping
L.buy_no_stock    = "У вас уже есть это оружие."
L.buy_pending     = "Вы уже заказали это, ждите..."
L.buy_received    = "Вы получили Спец. Экипировку."

L.drop_no_room    = "У тебя нет места. Выбрось свое оружие!"

L.disg_turned_on  = "Маскировка Включена!"
L.disg_turned_off = "Маскировка Отключена."

-- Equipment item descriptions
L.item_passive    = "Предмет с Пассивным Эффектом"
L.item_active     = "Предмет с Активным Эффектом"
L.item_weapon     = "Оружие"

L.item_armor      = "Бронежилет"
L.item_armor_desc = [[
Уменьшает урон от пуль на 30%.

Уже есть на Детективах.]]

L.item_radar      = "Радар"
L.item_radar_desc = [[
Позволяет сканировать признаки жизни.

Запускается автоматически как только
ты купишь это. Настройка доступна в
спец. Меню.]]

L.item_disg       = "Маскировка"
L.item_disg_desc  = [[
Прячет ваш ID и предотвращает
возможность быть последним,
кого видела жертва

Включить можно в этой вкладне
спец. Меню.]]

-- C4
L.c4_hint         = "Нажмите {usekey} для активации/деактивации."
L.c4_no_disarm    = "Ты не можешь деактивировать С4 другого предателя, пока он жив."
L.c4_disarm_warn  = "С4 которую ты заложил была разминирована."
L.c4_armed        = "Вы успешно активировали бомбу."
L.c4_disarmed     = "Вы успешно разминировали бомбу! Так держать."
L.c4_no_room      = "Вы не можете взять эту C4."

L.c4_desc         = "Мощная взрывчатка с таймером."

L.c4_arm          = "Активировать C4"
L.c4_arm_timer    = "Таймер"
L.c4_arm_seconds  = "До детонации осталось:"
L.c4_arm_attempts = "При попытке разминирования, {num} из 6 проводов вызовут взрыв."

L.c4_remove_title    = "Удаление"
L.c4_remove_pickup   = "Поднять C4"
L.c4_remove_destroy1 = "Уничтожить C4"
L.c4_remove_destroy2 = "Подтвердить Уничтожение"

L.c4_disarm       = "Разминировать C4"
L.c4_disarm_cut   = "Кликните для того, чтобы порезать провод №{num}"

L.c4_disarm_t     = "Вы - Предатель. Перережьте любой провод для деактивации бомбы. Для невинных это не так легко!"
L.c4_disarm_owned = "Перережьте провод если хотите разминировать бомбу."
L.c4_disarm_other = "Аккуратнее... Перережьте провод для разминирования. Если вы ошибетесь, она взорвется!"

L.c4_status_armed    = "АКТИВИРОВАНА"
L.c4_status_disarmed = "ДЕАКТИВИРОВАНА"

-- Visualizer
L.vis_name        = "Показыватель"
L.vis_hint        = "Нажмите {usekey} для поднятия."

L.vis_help_pri    = "{primaryfire} активирукт устройство."

L.vis_desc        = [[
Устройство для просмотра преступления.

Анализирует по трупу
как жертва была убита, но только если
он умер от пуль.]]

-- Decoy
L.decoy_name      = "Приманка для Детектива"
L.decoy_no_room   = "Вы не можете взять эту приманку."
L.decoy_broken    = "Ваша приманка уничтожена!!"

L.decoy_help_pri  = "{primaryfire} активировать Приманку."

L.decoy_desc      = [[
Показывает фальшивую информацию детективам.
То есть если вы положите это устройство,
Детективы просканировавшие трупы ваших жертв
будут видеть эту метку, вместо вас на радаре.]]

-- Defuser
L.defuser_name    = "Набор Сапера"
L.defuser_help    = "{primaryfire} разминирует С4."

L.defuser_desc    = [[
Мгновенно разминирует С4.

Бесконечное использование.
С4 будет легче найти.]]

-- Flare gun
L.flare_name      = "Поджигатель"
L.flare_desc      = [[
Может быть использован для сжигания трупов
или поджигания игроков.

Некоторые мудаки используют его как салют.]]

-- Health station
L.hstation_name   = "Лечебная Станция"
L.hstation_hint   = "Нажмите {usekey} для лечения. Заряд: {num}."
L.hstation_broken = "Ваша Лечебная Станция уничтожена!"
L.hstation_help   = "{primaryfire} - положить Лечебную станцию."

L.hstation_desc   = [[
Позволяет пополнять здоровье если развернута.

Медленно восстанавливает свой запас.
Есть возможность просмотра ДНК пользователей.]]

-- Knife
L.knife_name      = "Нож"
L.knife_thrown    = "Брошенный Нож"

L.knife_desc      = [[
Мгновенно убивает цель, но только один раз.

Его еще можно кинуть.]]

-- Poltergeist
L.polter_desc     = [[
Закладывает успорители на объекты
чтобы толкать их в разные стороны.

Те, кто находится рядом будут
получать урон.]]

-- Radio
L.radio_broken    = "Ваше радио уничтожено!"
L.radio_help_pri  = "{primaryfire} - Положить Радио."

L.radio_desc      = [[
Проигрывает фальшивые звуки.

Проложите радио где-либо и
выбирайте какой звук оно будет
воспроизводить из этого меню.]]

-- Silenced pistol
L.sipistol_name   = "Пистолет с Глушителем"

L.sipistol_desc   = [[
Этот пистолет не издает шума

Жертвы не будут много кричать.]]

-- Newton launcher
L.newton_name     = "Пушка Ньютона"

L.newton_desc     = [[
Толкайте людей с безопасного расстояния!

Ведь это так весело! Но эта
пушка очень долго заряжается.]]

-- Binoculars
L.binoc_name      = "Бинокль"
L.binoc_desc      = [[
Посмотрите на тело через бинокль
чтобы определить его с расстояния.

Неограниченное использование,
но определение запимает время.]]

L.binoc_help_pri  = "{primaryfire} идентефицирует тело."
L.binoc_help_sec  = "{secondaryfire} изменяет степерь приближения."

-- UMP
L.ump_desc        = [[
UMP-45 с эксперементальным механизмом
который дизориентирует цель.

Использует патроны для SMG.]]

--Traitors AK47
L.ak47_desc        = [[
AK-47 - возможно любимое оружие
предателей! Скорострельный, мощный и стильный,
он делает вас непобедимым.]]

-- DNA scanner
L.dna_name        = "ДНК Сканер"
L.dna_identify    = "Вы должны обыскать тело чтобы собрать ДНК убийцы."
L.dna_notfound    = "ДНК убийцы не обнаружено."
L.dna_limit       = "Не хватает места. Выбросьте старые образцы чтобы подобрать новые."
L.dna_decayed     = "ДНК убийцы сгнила."
L.dna_killer      = "Вы собрали образец ДНК убийцы с тела!"
L.dna_no_killer   = "ДНК не может быть получена (killer disconnected?)."
L.dna_armed       = "Бомба все еще активирована! Сначала разминируйте ее!"
L.dna_object      = "Собрано {num} новых образцов ДНК с объекта."
L.dna_gone        = "ДНК не может быть найдена."

L.dna_desc        = [[
Собирайте ДНК с тел чтобы найти
убийцу!

ДНК можно собрать только со "свежих" трупов.]]

L.dna_menu_title  = "Контроль сканирования ДНК"
L.dna_menu_sample = "ДНК найдена на {source}"
L.dna_menu_remove = "Выбросить Выделенное"
L.dna_menu_help1  = "Это образцы ДНК которые вы собрали."
L.dna_menu_help2  = [[
Когда заряжен, вы можете искать цели.
Поиск цели на дальней дистанции расходует
больше энергии.]]

L.dna_menu_scan   = "Сканировать"
L.dna_menu_repeat = "Авто-Повтор"
L.dna_menu_ready  = "ГОТОВ"
L.dna_menu_charge = "ЗАРЯДКА"
L.dna_menu_select = "ВЫБРАТЬ ОБРАЗЕЦ"

L.dna_help_primary   = "{primaryfire} для того, чтобы собрать ДНК"
L.dna_help_secondary = "{secondaryfire} для открытия меню сканера"

-- Magneto stick
L.magnet_name     = "Палка-Долбалка"
L.magnet_help     = "{primaryfire} для прикрепления тела к полу."

-- Grenades and misc
L.grenade_smoke   = "Дымовая Граната"
L.grenade_fire    = "Зажигательная Граната"

L.unarmed_name    = "Убрано"
L.crowbar_name    = "Лом"
L.pistol_name     = "Пистолет"
L.rifle_name      = "Винтовка"
L.shotgun_name    = "Дробовик"

-- Teleporter
L.tele_name       = "Телепортер"
L.tele_failed     = "Телепортация не успешна."
L.tele_marked     = "Локация для телепортировки отмечена."

L.tele_no_ground  = "Невозможно телепортироваться, пока вы не стоите на твердой поверхности!"
L.tele_no_crouch  = "Невозможно телепортироваться, пока вы сидите!"
L.tele_no_mark    = "Локация не отмечена! Отметте локацию перед телепортацией."

L.tele_no_mark_ground = "Невозможно пометить точку телепортации, пока вы не стоите на твердой поверхности!"
L.tele_no_mark_crouch = "Невозможно пометить точку телепортации, пока вы сидите!"

L.tele_help_pri   = "{primaryfire} телепортирует к помеченой точке."
L.tele_help_sec   = "{secondaryfire} помечает точку, на которой вы стоите."

L.tele_desc       = [[
Телепортирует вас к отмеченной точке.

Телепортация издает звук и количество использований
ограничено.]]

-- Ammo names, shown when picked up
L.ammo_pistol     = "9mm патроны"

L.ammo_smg1       = "SMG патроны"
L.ammo_buckshot   = "Патроны к Дробовику"
L.ammo_357        = "Патроны для Винтовки"
L.ammo_alyxgun    = "Патроны для Дигла"
L.ammo_ar2altfire = "Светящаяся шашка"
L.ammo_gravity    = "Грави-Патроны"


--- HUD interface text

-- Round status
L.round_wait   = "Ожидание"
L.round_prep   = "Подготовка"
L.round_active = "В процессе"
L.round_post   = "Конец"

-- Health, ammo and time area
L.overtime     = "ДОП. ВРЕМЯ"
L.hastemode    = "В ПРОЦЕССЕ"

-- TargetID health status
L.hp_healthy   = "Здоров"
L.hp_hurt      = "Слегка Ранен"
L.hp_wounded   = "Ранен"
L.hp_badwnd    = "Сильно Ранен"
L.hp_death     = "Присмерти"


-- TargetID karma status
L.karma_max    = "Уважаемый"
L.karma_high   = "Не сильно Уважаемый"
L.karma_med    = "Любитель Пострелушек"
L.karma_low    = "Опасный"
L.karma_min    = "РДМщик"

-- TargetID misc
L.corpse       = "Тело"
L.corpse_hint  = "Нажмите {usekey} для поиска. {walkkey} + {usekey} для скрытного поиска."

L.target_disg  = " (ЗАМАСКИРОВАН)"
L.target_unid  = "Неопределенное Тело"

L.target_traitor = "ТОВАРИЩ ПРЕДАТЕЛЯ"
L.target_detective = "ДЕТЕКТИВ"

L.target_credits = "Обыщите для взятия непотраченных кредитов"

-- Traitor buttons (HUD buttons with hand icons that only traitors can see)
L.tbut_single  = "Одно использование"
L.tbut_reuse   = "Много использований"
L.tbut_retime  = "Используйте еще раз через {num} секунд"
L.tbut_help    = "Нажмите {key} для активации"

-- Equipment info lines (on the left above the health/ammo panel)
L.disg_hud     = "Вы под маскировкой. Ваше имя скрыто."
L.radar_hud    = "Радар будет заряжен через: {time}"

-- Spectator muting of living/dead
L.mute_living  = "Живые игроки заглушены"
L.mute_specs   = "Наблюдатели Заглушены"
L.mute_off     = "Никто не заглушен"

-- Spectators and prop possession
L.punch_title  = "ПРЫГ-О-МЕТР"
L.punch_help   = "WASD или ПРОБЕЛ - толкнуть объект. Ctrl - выйти."
L.punch_bonus  = "Ваш плохой счет понизил ПРЫГ-О-МЕТР на {num}"
L.punch_malus  = "Ваш хороший счет повысил ПРЫГ-О-МЕТР на {num}!"

L.spec_help    = "ЛКМ для наблюдения за игроками, или нажмите {usekey} смотря на какой-либо предмет чтобы управлять им."

--- Info popups shown when the round starts

-- These are spread over multiple lines, hence the square brackets instead of
-- quotes. That's a Lua thing. Every line break (enter) will show up in-game.
L.info_popup_innocent = [[Вы невиновны, но среди вас есть предатели...
Кому доверять, а кого опасаться? Решать вам...

Оглядывайтесь назад и держитесь с вашими товарищами чтобы выжить!]]

L.info_popup_detective = [[Вы - Детектив! Штаб выдал вам специальную экипировку чтобы найти предателей.
Используйте их чтобы помочь невиновным выжить, но будьте осторожны:
Предатели будут пытаться убить вас первыми!

Нажмите {menukey} чтобы получить ваше снаряжение!]]

L.info_popup_traitor_alone = [[Ты - Предатель. У тебя нет товарищей в этом раунде.

Убей всех чтобы выиграть!

Нажмите {menukey} чтобы получить ваше снаряжение!]]

L.info_popup_traitor = [[Вы - Предатель. В этом раунде у вас есть товарищи..
Но будьте осторожны, или вас могут рассекретить...

Ваши товарищи:
{traitorlist}

Нажмите {menukey} чтобы получить ваше снаряжение!]]

--- Various other text
L.name_kick = "Игрок был выкинут с сервера за изменение своего ника во время раунда."

L.idle_popup = [[Вы не двигались в течении {num} секунд и были переведены в режим 'Только Наблюдение'. Пока вы в нем - вы не будете возрождаться.

Вы можете отключить режим 'Только Наблюдение' нажатием {helpkey} и в меню 'Настройки' снимите галочку с 'Только Наблюдение'.]]

L.idle_popup_close = "Ничего не Делать"
L.idle_popup_off   = "Отключить режим наблюдения"

L.idle_warning = "Внимание: Возможно вы АФК. Если вы не покажете свою активность вы будете переведены в режим 'Только Наблюдение'!"

L.spec_mode_warning = "Вы в режиме Наблюдения и не будете возрождаться. Чтобы отключить этот режим - зайдите в настройки и снимите галочку с 'Режим Только Наблюдение'."


-- Tips, shown at bottom of screen to spectators
-- Tips panel
L.tips_panel_title = "Подсказки"
L.tips_panel_tip   = "Подсказка:"

-- Tip texts
L.tip1 = "Предатели могут обыскивать тела скрытно, нажимая {walkkey} и {usekey} смотря на тело."

L.tip2 = "Активация С4 на большем таймере заставит С4 пикать медленнее и мягче, а также увеличит кол-во проводов необходимых для разминирования."

L.tip3 = "Детективы могут обыскивать тело чтобы увидеть кто отразился в ее глазах. Это последний человек кого видел убитый. Это может быть и невинный, потому что убийца мог стрелять в спину."

L.tip4 = "Никто не узнает что вы умерли, пока ваше тело не обыщут и не опознают."

L.tip5 = "Когда Предатель убивает Детектива, он автоматически получает кредиты как награду."

L.tip6 = "Когда Предатель умирает, все Детективы получают награду ввиде кредитов."

L.tip7 = "Когда Предатели делают значительные успехи в убийстве невинных, они получают кредит как награду."

L.tip8 = "Предатели и Детективы могут собирать кредиты с трупов умерших Предателей или Детективов."

L.tip9 = "Толкатель может превратить любой объект в сметрельную ловушку. Каждый толчок сопровождается энерго-всплеском."

L.tip10 = "Если вы Предатель или Детектив - следите за красными надписями сверху! Они могут быть важными для вас."

L.tip11 = "За Детектива или Предателя не забудьте тратить ваши кредиты, которые вы могли получить во время раунда!"

L.tip12 = "ДНК сканер Детективов может собирать ДНк с тел, брошенного оружия или разминированной С4. Эта информация может сильно помочь в расследовании!"

L.tip13 = "Если вы близко к человеку которого вы убиваете - вы можете оставить свою ДНК на его теле, а Детектив может ее собрать ДНК сканером!"

L.tip14 = "Чем дальше Вы от кого-то, кого убиваете, тем быстрее ваш образец ДНК на их теле распадается."

L.tip15 = "Вы Предатель и хотите по снайперить? Включить маскировку и стреляйте! Если вы промахнетесь - то отбегите на безопасное расстояние, выключите маскировку и никто не узнает, что именно ВЫ стреляли."

L.tip16 = "Играя за предателей, ваш телепорт может помочь вам убежать, когда вас преследуют. Он позволяет вам быстро путешествовать через всю карту. Удостоверьтесь, что вы отметили безопасную позицию."

L.tip17 = "Невиновные сгруппированы и трудно разъединить их? Полагайтесь на радио, оно проигрывает звуки C4 или перестрелки, чтобы увести некоторых из них."

L.tip18 = "Используя радио, играя за предателя, Вы можете проигрывать звуки через свое меню оорудования после того как радио было куплено и установлено. Ставьте в очередь звуки, затем проигрывайте их, это отвлечет внимание других."

L.tip19 = "Как Детектив, вы можете отдать проверенному невинному разминирующее устройство, и в то время как вы будете проводить расследование, он сможет разминировать бомбу."

L.tip20 = "Бинокль детективов позволяет смотреть на дальнее рассояние и идентифицировать трупы. Печально, если предатели надеялись использовать труп в качестве приманки. Конечно, используя бинокль, детектив разоружен и отвлечен..."

L.tip21 = "Станция восстановления здоровья помогает восстановить хп игрока, но не забывайте, этот игрок может быть и предателем..."

L.tip22 = "Лечебная Станция собирает ДНК со всех, кто ей пользовался. Детективы могут использовать это для расследования."

L.tip23 = "В отличие от оружия и C4, радиооборудование для предателей не содержит образец ДНК человека. Не волнуйтесь о детективах, находящих его."

L.tip24 = "Нажмите {helpkey}, чтобы рассмотреть короткую обучающую программу или изменить некоторые TTT-настройки. Например, Вы можете отключить эти советы."

L.tip25 = "Когда Детективы обыскивают тело, результаты доступны всем игрокам через TAB."

L.tip26 = "В табло символ лупы рядом с чьим-то именем указывает на то, что у Вас есть информация о обыске этого человека. Если символ яркий, то данные прибывали от Детектива и могут содержать дополнительную информацию."

L.tip27 = "Трупы с лупой возле ника игрока - были обысканы детективом, их результаты доступны всем игрокам через табло."

L.tip28 = "Зрители могут нажать {mutekey}, чтобы заглушить определенных людей или группы людей."

L.tip29 = "Если на сервере установлены дополнительные языковые пакеты, вы можете переключиться на них через меню настроек ТТТ."

L.tip30 = "Быстрый чат или 'radio' команды можно использовать, нажав {zoomkey}."

L.tip31 = "За Наблюдателя, нажмите {duckkey} чтобы разблокировать мышь и нажимать кнопки на этой панели. Нажмите {duckkey} снова чтобы выйти из этого режима."

L.tip32 = "Используя монтировку, на ПКМ вы толкаете игроков."

L.tip33 = "Стреляя через прицел оружия вы немного увеличите точность и уменьшите отдачу. Стрельба с колена этого НЕ делает."

L.tip34 = "Дымовые гранаты эффективны в помещении, особенно для создания путаницы в переполненых комнатах."

L.tip35 = "Как Предатель, вы можете таскать трупы и прятать их от посторонних глаз."

L.tip36 = "Обучающая программа, включается на {helpkey} ,она содержит краткий обзор самых важных клавиш игры."

L.tip37 = "На табло нажмите на имя игрока, и вы сможите выбрать признак для него, такой как 'подозреваемый' или 'друг'. Этот признак обнаружится, если вы посмотрите на него."

L.tip38 = "Многие из размещаемых предметов (таких как С4, Радио) могут быть прикреплены к стенам, используя ПКМ (правую кнопку мыши)."

L.tip39 = "C4 дает меньший урон при перерезании неверного провода, нежели от взрыва по истечению времени."

L.tip40 = "По началу, раунд длиться всего несколько минут, но с каждой смертью время увеличивается."


--- Round report
L.report_title = "Результаты"

-- Tabs
L.report_tab_hilite = "Основное"
L.report_tab_hilite_tip = "Основные События"
L.report_tab_events = "События"
L.report_tab_events_tip = "Логи как все было"
L.report_tab_scores = "Счет"
L.report_tab_scores_tip = "Таблица очков игроков"

-- Event log saving
L.report_save     = "Сохранить в log.txt"
L.report_save_tip = "Сохранить как текстовый файл"
L.report_save_error  = "Нету данных для сохранения."
L.report_save_result = "Лог-Файл сохранен в:"

-- Big title window
L.hilite_win_traitors = "Победа Предателей"
L.hilite_win_innocent = "Победа Невинных"


L.hilite_players1 = "{numplayers} игроков всего, {numtraitors} из них были Предатели."
L.hilite_players2 = "{numplayers} игроков всего, один из них Предатель."

L.hilite_duration = "Раунд длился {time}"

-- Columns
L.col_time   = "Время"
L.col_event  = "Событие"
L.col_player = "Игрок"
L.col_role   = "Роль"
L.col_kills1 = "Убийств Невинных"
L.col_kills2 = "Убийств Предателей"
L.col_points = "Очков"
L.col_team   = "Командный Бонус"
L.col_total  = "Всего Очков"

-- Name of a trap that killed us that has not been named by the mapper
L.something      = "что-то"

-- Kill events
L.ev_blowup      = "{victim} взорвался"
L.ev_blowup_trap = "{victim} был взорван {trap}"

L.ev_tele_self   = "{victim} убил себя"
L.ev_sui         = "{victim} не смог выдержать и самоубился"
L.ev_sui_using   = "{victim} самоубился при помощи {tool}"

L.ev_fall        = "{victim} упал с большой высоты"
L.ev_fall_pushed = "{victim} разбился насмерть после того как {attacker} тихонько толкнул его"
L.ev_fall_pushed_using = "{victim} разбился насмерть после того как {attacker} использовал {trap} чтобы толкнуть его"

L.ev_shot        = "{victim} был застрелен {attacker}"
L.ev_shot_using  = "{victim} был застрелен {attacker} при помощи {weapon}"

L.ev_drown       = "{victim} был утоплен {attacker}"
L.ev_drown_using = "{victim} был утоплен {trap} включенной {attacker}"

L.ev_boom        = "{victim} был взорван {attacker}"
L.ev_boom_using  = "{victim} был взорван {attacker} используя {trap}"

L.ev_burn        = "{victim} был зажарен {attacker}"
L.ev_burn_using  = "{victim} был зажарен {trap} активированной {attacker}"

L.ev_club        = "{victim} был забит {attacker}"
L.ev_club_using  = "{victim} был забит {attacker} при помощи {trap}"

L.ev_slash       = "{victim} был зарезан {attacker}"
L.ev_slash_using = "{victim} порезан {attacker} при помощи {trap}"

L.ev_tele        = "{victim} был телепортирован до смерти {attacker}"
L.ev_tele_using  = "{victim} был расщеплен на атомы при помощи {trap} установленной {attacker}"

L.ev_goomba      = "{victim} был раздавлен огромной задницей {attacker}"

L.ev_crush       = "{victim} был раздавлен {attacker}"
L.ev_crush_using = "{victim} был раздавлен при помощи {trap} {attacker}"

L.ev_other       = "{victim} был убит {attacker}"
L.ev_other_using = "{victim} был убит при помощи {attacker} используя {trap}"

-- Other events
L.ev_body        = "{finder} нашел тело {victim}"
L.ev_c4_plant    = "{player} заложил С4"
L.ev_c4_boom     = "С4 заложенная {player} взорвалась"
L.ev_c4_disarm1  = "{player} разминировал С4, заложенную {owner}"
L.ev_c4_disarm2  = "{player} не смог разминировать С4, заложенную {owner}"
L.ev_credit      = "{finder} нашел {num} кредит(ов) на теле {player}"

L.ev_start       = "Раунд начался"
L.ev_win_traitor = "Чертовы предатели победили в раунде!"
L.ev_win_inno    = "Белые и пушистые невиновные победили в раунде!"
L.ev_win_time    = "Предатели были слоупоками, и у них кончилось время!"

--- Awards/highlights
L.aw_sui1_title = "Самоубийца-Сенсей"
L.aw_sui1_text  = "показал другим самоубийцам как это делается."

L.aw_sui2_title = "Одинок в Депрессии"
L.aw_sui2_text  = "единственный, кто убил себя."

L.aw_exp1_title = "Грант по Исследованиям в области Взрывов"
L.aw_exp1_text  = "очень любит взрывы. {num} тестовых субьектов помогло."

L.aw_exp2_title = "Полевое Исследование"
L.aw_exp2_text  = "проверил свое сопротивление ко взрывам. Оно оказалось слишком маленьким."

L.aw_fst1_title = "Первая Кровь"
L.aw_fst1_text  = "убил первого невиновного."

L.aw_fst2_title = "Идиот бл**ь"
L.aw_fst2_text  = "набил первое убийство в раунде убив своего товарища-предателя. Хорошая Работа!"

L.aw_fst3_title = "Первый Погибший"
L.aw_fst3_text  = "был первый кто умер. Жаль, что он был товарищем-невинным."

L.aw_fst4_title = "Первый ВЗРЫВ"
L.aw_fst4_text  = "ударил по предателям превым, будучи невиновным."

L.aw_all1_title = "Я Слежу За Тобой"
L.aw_all1_text  = "был ответственнен за каждый шаг, совершенный невинными в этом раунде."

L.aw_all2_title = "Одинокий Волк"
L.aw_all2_text  = "был ответственным за каждое убийство совершенное предателями в этом раунде."

L.aw_nkt1_title = "Один Готов!"
L.aw_nkt1_text  = "сумел убить одного невиновного. Клево!"

L.aw_nkt2_title = "Пуля на Двоих"
L.aw_nkt2_text  = "показал насколько удачлива была его жертва, что промазал и убил другую."

L.aw_nkt3_title = "Серийный Предатель"
L.aw_nkt3_text  = "закончил три жизни невинных в этом раунде."

L.aw_nkt4_title = "Волк среди стада овец"
L.aw_nkt4_text  = "есть невиновных на обед. Сегодня в меню {num} невиновных."

L.aw_nkt5_title = "Операция: Контр-Терроризм"
L.aw_nkt5_text  = "платят за убийство. Он уже накопил на очередную яхту."

L.aw_nki1_title = "Легкотня"
L.aw_nki1_text  = "нашел предателя, убил предателя. Легко."

L.aw_nki2_title = "Присоединился к отряду Правосудие"
L.aw_nki2_text  = "убил двух Предателей."

L.aw_nki3_title = "Что на обед?"
L.aw_nki3_text  = "приготовил трех Предателей на обед."

L.aw_nki4_title = "Профессиональный Убийца"
L.aw_nki4_text  = "заплатили за убийства. Теперь он может купить пятый бассейн."

L.aw_fal1_title = "Нет Мр. Бонд, я настаиваю чтобы вы прыгнули"
L.aw_fal1_text  = "толкнул кого-то с большой высоты."

L.aw_fal2_title = "Вписался в Пол"
L.aw_fal2_text  = "позволил себе упасть после падения с высоты."

L.aw_fal3_title = "Это птица? Это самолет?"
L.aw_fal3_text  = "убил человека упав на него с большой высоты."

L.aw_hed1_title = "Эффектно"
L.aw_hed1_text  = "получил наслаждение от выстрелов в голову и решил сделать {num}."

L.aw_hed2_title = "Невролог"
L.aw_hed2_text  = "извлек мозги из {num} голов для полного анализа."

L.aw_hed3_title = "Видеоигры Заставили Меня сделать Это"
L.aw_hed3_text  = "вспомнил свои года в симуляторе маньяка и укакошил {num} бедолаг."

L.aw_cbr1_title = "Бац Бац Бац"
L.aw_cbr1_text  = "очень любит махать ломом, уже {num} человек в этом убедились."

L.aw_cbr2_title = "Мистер Фримен"
L.aw_cbr2_text  = "воткнул свой лом в мозги {num} человек."

L.aw_pst1_title = "Мистер СМЕРТЬ"
L.aw_pst1_text  = "выбил {num} убийств при помощи пистолета, а затем пошел обнимать кого-то до смерти."

L.aw_pst2_title = "Любитель Мелкого Калибра"
L.aw_pst2_text  = "убил маленькую армию из {num} при помощи пистолета. Вообще-то встроив туда маленький дробовик."

L.aw_sgn1_title = "Легкий режим"
L.aw_sgn1_text  = "стреляет туда, где болит, убив {num} целей."

L.aw_sgn2_title = "Тысяца маленьких Дробинок"
L.aw_sgn2_text  = "не полюбил свой дробовик и выпустил все патроны из него. {num} свидетелям не очень это понравилось."

L.aw_rfl1_title = "Целься и Стреляй"
L.aw_rfl1_text  = "показал всем, что для {num} убийств нужен автомат и крепкая рука."

L.aw_rfl2_title = "Я тебя вижу!"
L.aw_rfl2_text  = "знает свою винтовку. Теперь {num} людей знают ее тоже."

L.aw_dgl1_title = "Это как Маленькая Пушка"
L.aw_dgl1_text  = "очень сильно полюбил свой Desert Eagle и показал это {num} людям."

L.aw_dgl2_title = "Мастер Дигла"
L.aw_dgl2_text  = "вынес {num} человек при помощи своего Дигла."

L.aw_mac1_title = "Молись и Убивай"
L.aw_mac1_text  = "убил {num} человек при помощи MAC-10, но сам не знает сколько ему понадобилось патронов."

L.aw_mac2_title = "Мак и Сыр"
L.aw_mac2_text  = "думает, сколько людей бы он вынес с 2-х MAC-10. {num} то число?"

L.aw_sip1_title = "Тише!"
L.aw_sip1_text  = "заткнул {num} людей при помощи пистолета с глушителем."

L.aw_sip2_title = "Ассасин"
L.aw_sip2_text  = "убил {num} людей, которые даже не подозревали, что их убивают."

L.aw_knf1_title = "Нож тебя Знает"
L.aw_knf1_text  = "проткнул кому-то лицо через интернет."

L.aw_knf2_title = "Где ты ЭТО взял?!"
L.aw_knf2_text  = "не был Предателем, но зарезал кого-то ножом."

L.aw_knf3_title = "Мастер Ножа"
L.aw_knf3_text  = "нашел {num} ножей и пустил их в ход."

L.aw_knf4_title = "Человек-Нож"
L.aw_knf4_text  = "убил {num} людей ножом. Не спрашивайте как!"

L.aw_flg1_title = "Спасите Меня уже!"
L.aw_flg1_text  = "использовал сигнальные ракеты чтобы позвать на помощь, но сжег {num} людей."

L.aw_flg2_title = "Шашка обозначает ОГОНЬ"
L.aw_flg2_text  = "рассказал {num} людям, насколько плохо одевать легко воспламеняющююся одежду."

L.aw_hug1_title = "Гармония с H.U.G.E"
L.aw_hug1_text  = "был в гармонии со своим H.U.G.E, каким-то образом попав в {num} человек."

L.aw_hug2_title = "Спокойный Пулемет"
L.aw_hug2_text  = "палил без остановки со своего H.U.G.E. Когда все стихло, он обнаружил, что убил {num} людей."

L.aw_msx1_title = "Пыщ Пыщ Пыщ"
L.aw_msx1_text  = "снял {num} людей при помощи М4."

L.aw_msx2_title = "Безумие с М4"
L.aw_msx2_text  = "знает как стрелять с М4, убив {num} жертв."

L.aw_tkl1_title = "Ну Блин"
L.aw_tkl1_text  = "сорвался палец как раз тогда, когда он целился в друга."

L.aw_tkl2_title = "Двойной Фейспалм"
L.aw_tkl2_text  = "думал что он Предатель дважды, но был неправ в обоих случаях."

L.aw_tkl3_title = "Пожиратель Кармы"
L.aw_tkl3_text  = "не смог остановиться после убийства двоих своих напарников. Три - Его счастливое число."

L.aw_tkl4_title = "РДМщик"
L.aw_tkl4_text  = "убил всю свою команду. ЗАБАНЬТЕ ЕГО УЖЕ."

L.aw_tkl5_title = "Ролевой Игрок"
L.aw_tkl5_text  = "был помешан на РП. Понятно почему он убил большинство своей команды."

L.aw_tkl6_title = "Мудак"
L.aw_tkl6_text  = "не понял на чьей он стороне и по-этому убил половину своих друзей."

L.aw_tkl7_title = "Деревенщина"
L.aw_tkl7_text  = "очень хорошо защитил свою территорию, убив более четверти своих товарищей."

L.aw_brn1_title = "По Бабушкиному Рецепту"
L.aw_brn1_text  = "зажарил несколько людей до хрустящей корочки."

L.aw_brn2_title = "Закашлялся"
L.aw_brn2_text  = "громко закашлял после зажарки одной из своих жертв и был услышан."

L.aw_brn3_title = "Пироманьяк"
L.aw_brn3_text  = "сжег их всех, но сейчас у него закончились зажигательные гранаты. Как же он будет справляться!?"

L.aw_fnd1_title = "Сыщик"
L.aw_fnd1_text  = "нашел {num} тел валяющихся вокруг."

L.aw_fnd2_title = "Поймать их всех!"
L.aw_fnd2_text  = "нашел {num} трупов для его коллекции."

L.aw_fnd3_title = "Смеясь над Смертью"
L.aw_fnd3_text  = "споткнулся о трупы товарищей, на этот раз {num} раз за этот раунд."

L.aw_crd1_title = "БОМЖ"
L.aw_crd1_text  = "как бомжара собрал {num} кредитов с тел."

L.aw_tod1_title = "Лох"
L.aw_tod1_text  = "умер за несколько секунд до того, как его команда одержада победу."

L.aw_tod2_title = "Я ненавижу эту игру!"
L.aw_tod2_text  = "умер сразу после начала раунда."


--- New and modified pieces of text are placed below this point, marked with the
--- version in which they were added, to make updating translations easier.


--- v23
L.set_avoid_det     = "Не становиться Детективом"
L.set_avoid_det_tip = "Включите это для того чтобы не становиться Детективом. Это не значит что вы будете становиться Предателем чаще."

--- v24
L.drop_no_ammo = "У вас недостаточно патронов в Магазине чтобы выкинуть их как коробку с патронами."

--- v31
L.set_cross_brightness = "Яркость прицела"
L.set_cross_size = "Размер прицела"

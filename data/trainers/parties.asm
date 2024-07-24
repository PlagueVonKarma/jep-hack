; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_list_item ; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_MOVES
	db 7
	dw HOOTHOOT
	dw TACKLE, MUD_SLAP, GROWL, FORESIGHT
	db 9
	dw PIDGEOTTO
	dw TACKLE, MUD_SLAP, GUST, NO_MOVE
	db -1 ; end

	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_MOVES
	db 16
	dw IGGLYBUFF ; This adds Johto to Whitney's team without really increasing the difficulty. Her team is basically perfect already.
	dw POUND, SING, CHARM, SWEET_KISS
	db 18
	dw CLEFAIRY
	dw DOUBLESLAP, MIMIC, ENCORE, METRONOME
	db 20
	dw MILTANK
	dw ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	db -1 ; end

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 14
	dw KAKUNA ; Keeps the organic "Bugsy is researching how cocoon Pokemon keep their moves" thing
	dw POISON_STING, STRING_SHOT, HARDEN, NO_MOVE
	db 14
	dw YANMA
	dw LEECH_LIFE, FORESIGHT, QUICK_ATTACK, DOUBLE_TEAM
	db 16
	dw SCYTHER
	dw QUICK_ATTACK, LEER, FURY_CUTTER, NO_MOVE
	db -1 ; end
	; Potential revision: Underlevelled Ariados? Test further.
	; Also - This makes the Chikorita playthrough harder. Test?

	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "MORTY@", TRAINERTYPE_MOVES
	db 21
	dw PHANDARIN ; Not Stromen - Morty is looking for Ho-Oh, keep in mind!
	dw LEECH_LIFE, DISABLE, SPITE, RETURN ; Not Curse, goes against lore.
	db 21
	dw BIPULLA
	dw TACKLE, CONFUSION, LICK, AGILITY
	db 25
	dw MISMAGIUS
	dw HYPNOSIS, SHADOW_BALL, MEAN_LOOK, DREAM_EATER
	db 23
	dw HAUNTER
	dw SPITE, MEAN_LOOK, MIMIC, NIGHT_SHADE
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES
	db 33
	dw DELIBIRD
	dw PRESENT, ICY_WIND, RAPID_SPIN, RAIN_DANCE ; Rain Dance can make Fire moves worse ig? Spikes is cool but it's an event move - do we want that?
	db 33
	dw BUU
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 35
	dw DEWGONG
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	; WEARLYCAN
	db 41
	dw PILOSWINE ; MAMOSWINE
	dw ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	db -1 ; end

	end_list_items

JasmineGroup: ; Jasmine is going to use Egg Moves!
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES
	db 30
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 30
	dw FORRETRESS
	dw TAKE_DOWN, SELFDESTRUCT, PIN_MISSILE, PROTECT ; EM Pin Missile is very very apt
	db 32
	dw SKARMORY
	dw DRILL_PECK, SAND_ATTACK, STEEL_WING, LEER ; EM Drill Peck for a power boost, Skarmory isn't normally threatening.
	db 35 ; Steel Wing TM too as it's obtainable around this point.
	dw STEELIX
	dw SCREECH, SANDSTORM, ROCK_HEAD, IRON_TAIL ; Changed Sunny Day because it just kind of doesn't work...it makes Typhlosion kill it, in exchange for hindering a Feraligatr speedrun? Sandstorm seems more interesting...
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES
	db 25
	dw MACHOKE
	dw KARATE_CHOP, LOW_KICK, FOCUS_ENERGY, HEADBUTT
	db 25
	dw HITMONTOP
	dw ROLLING_KICK, RAPID_SPIN, PURSUIT, FOCUS_ENERGY
	db 27
	dw HERACROSS ; Look, stag beetles can fling all kinds of things. Just like Chuck throws a boulder!
	dw HORN_ATTACK, ROCK_SMASH, ENDURE, LEER ; Also it gets like no moves
	db 30
	dw POLIWRATH
	dw HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_MOVES
	db 41
	dw COATL
	dw TRANSFORM, DRAGONBREATH, MORNING_SUN, GUST
	db 43
	dw GYARADOS
	dw FLAMETHROWER, SURF, BODY_SLAM, DRAGONBREATH
	db 43
	dw AMPHAROS
	dw THUNDER_WAVE, THUNDERBOLT, FIRE_PUNCH, HEADBUTT
	db 47
	dw DRAGONAIR ; MINISTARE
	dw THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
	db 47
	dw DRAGONAIR
	dw THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
	db 50
	dw KINGDRA
	dw SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
	db -1 ; end

	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (1)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end

	next_list_item ; RIVAL1 (2)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CYNDAQUIL
	db -1 ; end

	next_list_item ; RIVAL1 (3)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw TOTODILE
	db -1 ; end

	next_list_item ; RIVAL1 (4)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw BAYLEEF
	db -1 ; end

	next_list_item ; RIVAL1 (5)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw QUILAVA
	db -1 ; end

	next_list_item ; RIVAL1 (6)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw CROCONAW
	db -1 ; end

	next_list_item ; RIVAL1 (7)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw BAYLEEF
	dw GROWL, REFLECT, RAZOR_LEAF, POISONPOWDER
	db -1 ; end

	next_list_item ; RIVAL1 (8)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw QUILAVA
	dw LEER, SMOKESCREEN, EMBER, QUICK_ATTACK
	db -1 ; end

	next_list_item ; RIVAL1 (9)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw CROCONAW
	dw LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

	next_list_item ; RIVAL1 (10)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (11)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw QUILAVA
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (12)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw FERALIGATR
	dw RAGE, WATER_GUN, BITE, SCARY_FACE
	db -1 ; end

	next_list_item ; RIVAL1 (13)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (14)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw TYPHLOSION
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (15)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 34
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	end_list_items

PokemonProfGroup:
	next_list_item ; OAK (1)
	db "OAK@", TRAINERTYPE_MOVES
	db 60
	dw KANGASKHAN
	dw ATTRACT, DIZZY_PUNCH, EARTHQUAKE, SURF
	db 60
	dw VENUSAUR
	dw SLEEP_POWDER, RAZOR_LEAF, SLUDGE_BOMB, SWORDS_DANCE
	db 60
	dw CHARIZARD
	dw BELLY_DRUM, FIRE_BLAST, EARTHQUAKE, BODY_SLAM
	db 60
	dw TOTARTLE
	dw GIGA_DRAIN, HYDRO_PUMP, BODY_SLAM, ICE_BEAM
	db 60
	dw NIDOKING
	dw EARTHQUAKE, ICE_BEAM, THUNDERBOLT, LOVELY_KISS
	db 60
	dw TAUROS
	dw BODY_SLAM, HYPER_BEAM, EARTHQUAKE, BLIZZARD ; Iconic King of Gen 1 set to represent Oak's aging. 
	db -1 ; end

	end_list_items

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 40
	dw XATU
	dw NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db 41
	dw JYNX
	dw MEAN_LOOK, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 41
	dw ESPEON
	dw REFLECT, QUICK_ATTACK, MORNING_SUN, PSYCHIC_M
	db 41
	dw SLOWKING
	dw CURSE, SURF, EARTHQUAKE, PSYCHIC_M
	db 42
	dw FARIGIRAF
	dw PSYCHIC_M, CRUNCH, STOMP, AGILITY ; Check how Return/Frustration work
	db -1 ; end
	
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 65
	dw XATU
	dw NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db 65
	dw JYNX
	dw MEAN_LOOK, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 65
	dw ESPEON
	dw REFLECT, QUICK_ATTACK, MORNING_SUN, PSYCHIC_M
	db 65
	dw SLOWKING
	dw CURSE, SURF, EARTHQUAKE, PSYCHIC_M
	db 65
	dw WYRDEER
	dw SWAGGER, STOMP, PSYCH_UP, PSYCHIC_M ; Check how Return/Frustration work
	db 65
	dw FARIGIRAF
	dw PSYCHIC_M, CRUNCH, STOMP, AGILITY ; Check how Return/Frustration work
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 50
	dw TYPHLOSION
	db 50
	dw FERALIGATR
	db -1 ; end

	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 42
	dw JABETTA
	dw JUMP_KICK, HYDRO_PUMP, MEDITATE, DRILL_PECK
	db 42
	dw HITMONLEE
	dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
	db 42
	dw HITMONCHAN
	dw MEGA_PUNCH, ICE_PUNCH, COUNTER, MACH_PUNCH
	db 43
	dw STEELIX
	dw IRON_TAIL, EARTHQUAKE, EXPLOSION, ROCK_HEAD
	db 46
	dw MACHAMP
	dw ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end
	
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 65
	dw JABETTA
	dw JUMP_KICK, HYDRO_PUMP, MEDITATE, DRILL_PECK
	db 65
	dw HITMONLEE
	dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
	db 65
	dw HITMONCHAN
	dw MEGA_PUNCH, ICE_PUNCH, COUNTER, MACH_PUNCH
	db 65
	dw HERACROSS
	dw MEGAHORN, ENDURE, REVERSAL, FLAIL
	db 65
	dw STEELIX
	dw IRON_TAIL, EARTHQUAKE, EXPLOSION, ROCK_HEAD
	db 65
	dw MACHAMP
	dw ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end
	
	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 42
	dw UMBREON
	dw SAND_ATTACK, CONFUSE_RAY, PURSUIT, MEAN_LOOK
	db 42
	dw BELLEDAM
	dw PURSUIT, HEAL_BELL, LOVELY_KISS, ATTRACT
	db 44
	dw HONCHKROW
	dw QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 47
	dw HOUNDOOM
	dw ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db 55
	dw TYRANITAR
	dw PURSUIT, ROCK_SLIDE, ICE_BEAM, DYNAMICPUNCH
	db -1 ; end
	
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 65
	dw UMBREON
	dw SAND_ATTACK, CONFUSE_RAY, PURSUIT, MEAN_LOOK
	db 65
	dw BELLEDAM
	dw PURSUIT, HEAL_BELL, LOVELY_KISS, ATTRACT
	db 65
	dw WARUCHU
	dw PURSUIT, THUNDERBOLT, THUNDER_WAVE, CRUNCH
	db 65
	dw HONCHKROW
	dw QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 65
	dw HOUNDOOM
	dw ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db 65
	dw TYRANITAR
	dw PURSUIT, ROCK_SLIDE, ICE_BEAM, DYNAMICPUNCH
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 43
	dw QWILFATHER
	dw SPIKES, HYDRO_PUMP, MINIMIZE, HAZE
	db 40
	dw ARIADOS
	dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, AGILITY
	db 41
	dw VENOMOTH
	dw SLEEP_POWDER, GIGA_DRAIN, PSYCHIC_M, TOXIC
	db 42
	dw MUK
	dw MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 44
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end
	
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 65
	dw QWILFATHER
	dw SPIKES, HYDRO_PUMP, MINIMIZE, HAZE
	db 65
	dw ARIADOS
	dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, AGILITY
	db 65
	dw LICKILORD
	dw SWAGGER, PSYCH_UP, BODY_SLAM, EARTHQUAKE
	db 65
	dw VENOMOTH
	dw SLEEP_POWDER, GIGA_DRAIN, PSYCHIC_M, TOXIC
	db 65
	dw MUK
	dw MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 65
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44
	dw GYARADOS
	dw THUNDERBOLT, RAIN_DANCE, SURF, HYPER_BEAM
	db 47
	dw CHARIZARD
	dw ROCK_SLIDE, FLAMETHROWER, EARTHQUAKE, HYPER_BEAM
	db 47
	dw GAVILLAIN
	dw THUNDERBOLT, DRAGONBREATH, GLARE, HYPER_BEAM
	db 46
	dw AERODACTYL
	dw WING_ATTACK, ANCIENTPOWER, EARTHQUAKE, HYPER_BEAM ; Now legal!
	db 46
	dw IGUANARCH
	dw DRAGONBREATH, GLARE, THUNDERBOLT, HYPER_BEAM
	db 50
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end
	
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 70
	dw GYARADOS
	dw THUNDERBOLT, RAIN_DANCE, SURF, HYPER_BEAM
	db 70
	dw CHARIZARD
	dw BELLY_DRUM, FLAMETHROWER, EARTHQUAKE, HYPER_BEAM
	db 70
	dw GAVILLAIN
	dw THUNDERBOLT, DRAGONBREATH, GLARE, HYPER_BEAM
	db 70
	dw AERODACTYL
	dw WING_ATTACK, ANCIENTPOWER, EARTHQUAKE, HYPER_BEAM
	db 70
	dw IGUANARCH
	dw DRAGONBREATH, GLARE, THUNDERBOLT, HYPER_BEAM
	db 70
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 60
	dw GOLEM
	dw DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 60
	dw SUDOWOODO
	dw MIMIC, ROCK_SLIDE, EARTHQUAKE, SELFDESTRUCT
	db 60
	dw OMASTAR
	dw BITE, SURF, PROTECT, ICE_BEAM
	db 60
	dw KABUTOPS
	dw SWORDS_DANCE, ANCIENTPOWER, SURF, GIGA_DRAIN
	db 60
	dw AERODACTYL
	dw EARTHQUAKE, ANCIENTPOWER, WING_ATTACK, STEEL_WING
	db 60
	dw STEELIX
	dw IRON_TAIL, EARTHQUAKE, SANDSTORM, FISSURE ; No Explosion, it's his last Pokemon!
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 60
	dw POLITOED
	dw SURF, HYPNOSIS, PERISH_SONG, WHIRLPOOL
	db 60
	dw QUAGSIRE
	dw BELLY_DRUM, BODY_SLAM, EARTHQUAKE, ANCIENTPOWER
	db 60
	dw GRENMAR
	dw HYDRO_PUMP, FIRE_BLAST, ENCORE, HEADBUTT
	db 60
	dw LANTURN
	dw SURF, CONFUSE_RAY, THUNDERBOLT, ICE_BEAM
	db 60
	dw GOLDUCK
	dw SURF, PSYCHIC_M, BODY_SLAM, ICE_BEAM
	db 60
	dw STARMIE
	dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 60
	dw ELECTRODE
	dw EXPLOSION, THUNDERBOLT, THUNDER_WAVE, MIRROR_COAT
	db 60
	dw KAZAPPELIN
	dw HYDRO_PUMP, PIN_MISSILE, THUNDERBOLT, MINIMIZE
	db 60
	dw MAGNEZONE
	dw THUNDERBOLT, THUNDER_WAVE, RAIN_DANCE, THUNDER
	db 60
	dw GOROTORA
	dw BODY_SLAM, EARTHQUAKE, THUNDERBOLT, THUNDER_WAVE
	db 60
	dw ELECTIVIRE
	dw THUNDERBOLT, ROLLING_KICK, BODY_SLAM, PURSUIT
	db 60
	dw RAICHU ; GOROCHU
	dw BELLY_DRUM, THUNDERBOLT, BODY_SLAM, SUBMISSION
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 60
	dw JUMPLUFF
	dw LEECH_SEED, ENCORE, GIGA_DRAIN, REFLECT
	db 60
	dw TOEDSCRUEL
	dw SPORE, SWORDS_DANCE, EARTHQUAKE, DOUBLE_EDGE
	db 60
	dw SAKURAZE
	dw SUNNY_DAY, SOLARBEAM, FIRE_BLAST, SYNTHESIS
	db 60
	dw VICTREEBEL
	dw SOLARBEAM, SLUDGE_BOMB, SWORDS_DANCE, SLEEP_POWDER
	db 60
	dw ELECTIVIRE ; TANGROWTH
	dw THUNDERBOLT, ROLLING_KICK, BODY_SLAM, PURSUIT ; SLEEP_POWDER, SWORDS_DANCE, EARTHQUAKE, GIGA_DRAIN
	db 60
	dw BELLOSSOM ; GOROCHU
	dw SLEEP_POWDER, SOLARBEAM, SUNNY_DAY, GIGA_DRAIN
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db 2
	dw LEDYBA
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 6
	dw SENTRET
	db 8
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 10
	dw SANDSHREW
	db 8
	dw SPEAROW
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 10
	dw MANKEY
	db 12
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 33
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 33
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 27
	dw VOLTORB
	db 27
	dw MAGNEMITE
	db 31
	dw VOLTORB
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 16
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 17
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 17
	dw TANGELA
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 22
	dw TANGELA
	db 20
	dw QUAGSIRE
	db 25
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 33
	dw GROWLITHE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, ACID, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 27
	dw TANGELA
	db 30
	dw QUAGSIRE
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	dw PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 32
	dw TANGELA
	dw POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 32
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "PERO@", TRAINERTYPE_NORMAL
	db 49
	dw SLOWKING ; How did bro have a L9 slowking in the spaceworld demo bro 
	db 49
	dw CLOYSTER ; DISTURBAN
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 7
	dw PIDGEY
	db 7
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 14
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 15
	dw PIDGEY
	db 19
	dw PIDGEY
	db 15
	dw PIDGEY
	db 15
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 16
	dw DODUO
	db 17
	dw DODUO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db 18
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 25
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw PIDGEY
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
	db -1 ; end
	
	next_list_item ; BIRD_KEEPER (19)
	db "MATT@", TRAINERTYPE_MOVES ; Reference to the Birdkeeper in Falkner's Stadium 2 Gym.
	db 50
	dw NOCTOWL
	dw HYPNOSIS, DREAM_EATER, STEEL_WING, TAKE_DOWN
	db 50
	dw CACAWPHONY
	dw MEGAPHONE, DRILL_PECK, DOUBLE_EDGE, SCREECH
	db 50
	dw XATU
	dw HYPNOSIS, PSYCHIC_M, NIGHT_SHADE, DRILL_PECK
	db -1 ; end
	
	next_list_item ; BIRD_KEEPER (19)
	db "SHAW@", TRAINERTYPE_MOVES ; Reference to the Shaw Monument in Scotland, an 18th-century falconry observation tower that is fully intact!
	db 50
	dw TREBIR
	dw PERISH_SONG, ENCORE, SING, WING_ATTACK
	db 50
	dw FEAROW
	dw MIRROR_MOVE, DOUBLE_EDGE, STEEL_WING, DRILL_PECK
	db 50
	dw HONCHKROW
	dw PURSUIT, DRILL_PECK, NIGHT_SHADE, QUICK_ATTACK
	db -1 ; end
	
	next_list_item ; BIRD_KEEPER (19)
	db "FREDERICK@", TRAINERTYPE_MOVES ; Reference to the Frederick II of Hohenstaufen, one of the earliest knowledgable Falconers in history
	db 50
	dw TREBIR
	dw PERISH_SONG, ENCORE, SING, WING_ATTACK
	db 50
	dw FEAROW
	dw MIRROR_MOVE, DOUBLE_EDGE, STEEL_WING, DRILL_PECK
	db 50
	dw HONCHKROW
	dw PURSUIT, DRILL_PECK, NIGHT_SHADE, QUICK_ATTACK
	db -1 ; end
	
	next_list_item ; BIRD_KEEPER (19)
	db "NORIKAGE@", TRAINERTYPE_MOVES ; Asakura Norikage 朝倉 教景 (1476 - 1555), brought Goshawk breeding to Asakura Clan in the 16th Century.
	db 50
	dw DELIBIRD
	dw PRESENT, ICY_WIND, QUICK_ATTACK, THIEF
	db 50
	dw PIDGEOT
	dw WING_ATTACK, QUICK_ATTACK, MIRROR_MOVE, WHIRLWIND
	db -1 ; end
	
	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 60
	dw ARIADOS
	dw SPIDER_WEB, AGILITY, BATON_PASS, DOUBLE_TEAM
	db 60
	dw VENOMOTH
	dw SLEEP_POWDER, PSYCHIC_M, GIGA_DRAIN, STUN_SPORE
	db 60
	dw NIDOQUEEN
	dw EARTHQUAKE, THUNDERBOLT, ICE_BEAM, BODY_SLAM
	db 60
	dw GENGAR
	dw HYPNOSIS, THUNDERBOLT, PERISH_SONG, PSYCHIC_M
	db 60
	dw ELECTIVIRE ; CLODSIRE
	dw THUNDERBOLT, ROLLING_KICK, BODY_SLAM, PURSUIT ; BELLY_DRUM, EARTHQUAKE, SPIKES, BODY_SLAM
	db 60
	dw BELLIGNAN ; GOROCHU
	dw SLEEP_POWDER, SWORDS_DANCE, SLUDGE_BOMB, GIGA_DRAIN
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_NORMAL
	db 26
	dw CHARMANDER
	db 26
	dw SQUIRTLE
	db 26
	dw BULBASAUR
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 24
	dw CHARMELEON
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
	db -1 ; end
	
	; Previously unused, now Winner's Path
	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 56
	dw VENUSAUR
	db 56
	dw CHARIZARD
	db 56
	dw TOTARTLE
	db -1 ; end
	
	; Previously unused, now Winner's Path
	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 53
	dw CACAWPHONY
	db 54
	dw WARUCHU
	db 53
	dw SNEASEL ; WEARLYCAN
	db 56
	dw PILOSWINE ; BUNDRAKE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
	db -1 ; end
	
	; Previously unused, now Winner's Path
	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 53
	dw TREBIR
	db 54
	dw GOROCHU
	db 53
	dw SNEASEL ; WEAVILE
	db 56
	dw PILOSWINE ; BUNBERG
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	dw SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	dw EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	dw ABSORB, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_BAND
	dw STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	dw SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 9
	dw SENTRET
	db 13
	dw SENTRET
	db 17
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 45
	dw FURRET
	db 48
	dw PERSIAN ; Uses L10 Meowth in SW97 demo
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 53
	dw FURRET
	db 53
	dw MEGANIUM
	db 55
	dw EUCALA
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 34
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 45
	dw FURRET ; MIMEAR
	db 48
	dw CLEFABLE
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 17
	dw HOPPIP
	dw SYNTHESIS, TAIL_WHIP, TACKLE, POISONPOWDER
	db 17
	dw SKIPLOOM
	dw SYNTHESIS, TAIL_WHIP, TACKLE, STUN_SPORE
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 16
	dw NIDORINO
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	dw RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	dw LICK, SUPERSONIC, CUT, NO_MOVE
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 17
	dw NIDOKING
	db 17
	dw NIDOQUEEN
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL ; Proton, he's a grunt here. 
	db 14
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 9
	dw ZUBAT
	db 9
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 23
	dw GRIMER
	db 25
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw RATTATA
	db 21
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ZUBAT
	db 26
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 23
	dw GRIMER
	db 23
	dw ZUBAT
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 26
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw GOLBAT
	db 22
	dw GRIMER
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 17
	dw ZUBAT
	db 17
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 18
	dw VENONAT
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 17
	dw GRIMER
	db 18
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 9
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 18
	dw GROWLITHE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 60
	dw ARIADOS ; MR_RIME
	dw SPIDER_WEB, AGILITY, BATON_PASS, DOUBLE_TEAM ; REFLECT, LIGHT_SCREEN, PSYCHIC_M, ICE_BEAM
	db 60
	dw HYPNO
	dw SWAGGER, PSYCH_UP, HEADBUTT, THUNDER_WAVE ; god this is hilarious
	db 60
	dw JYNX
	dw LOVELY_KISS, PSYCHIC_M, ICE_BEAM, MEAN_LOOK
	db 60
	dw EXEGGUTOR
	dw SLEEP_POWDER, GIGA_DRAIN, EXPLOSION, PSYCHIC_M
	db 60
	dw ESPEON
	dw PSYCHIC_M, MORNING_SUN, BITE, QUICK_ATTACK ; SYNCHRONIZE, keep Bite for Dark attacking options
	db 60
	dw ALAKAZAM
	dw PSYCHIC_M, RECOVER, FIRE_PUNCH, THUNDERPUNCH
	db -1 ; end

	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 3
	dw LEDYBA
	db 3
	dw SPINARAK
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 32
	dw BEEDRILL
	db 32
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 2
	dw GENTLARVA
	db 3
	dw WEEDLE
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 10
	dw CARAPTHOR
	db 12
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 12
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 18
	dw LEDIAN ; It'll look scary in Azalea Gym but it's also Ledian
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 15
	dw YANMA ; To show Yanma is on Route 35
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 9
	dw METAPOD
	db 10
	dw KAKUNA
	db 9
	dw METAPOD
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 14
	dw BUTTERFREE
	db 15
	dw BEEDRILL
	db 14
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	dw FURY_ATTACK, FOCUS_ENERGY, TWINEEDLE, RAGE
	db 24
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	dw FURY_ATTACK, PURSUIT, TWINEEDLE, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	dw PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 10
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (20)
	db "SIONED@", TRAINERTYPE_NORMAL
	db 40
	dw PARASECT ; Uses L7 Paras in SW97 demo
	db 42
	dw BARREAU
	db 42
	dw CARAPTHOR
	db -1 ; end

	next_list_item ; BUG_CATCHER (21)
	db "ELWYN@", TRAINERTYPE_NORMAL
	db 40
	dw LEDIAN ; Uses L9 Ledian in SW97 demo
	db 42
	dw TRICULES
	db 42
	dw BUTTERFREE
	db -1 ; end
	
	next_list_item ; BUG_CATCHER (21)
	db "DANE@", TRAINERTYPE_NORMAL ; From HGSS, + Carapthor
	db 44
	dw BEEDRILL 
	db 48
	dw BUTTERFREE
	db 44
	dw CARAPTHOR
	db -1 ; end
	
	next_list_item ; BUG_CATCHER (21)
	db "DION@", TRAINERTYPE_NORMAL ; From HGSS, + Ledian and Barreau
	db 44
	dw BARREAU ; Should have screens, making the next two Pokemon...less awful.
	db 42
	dw ARIADOS
	db 42
	dw LEDIAN
	db -1 ; end
	
	next_list_item ; BUG_CATCHER (21)
	db "STACEY@", TRAINERTYPE_NORMAL ; In HGSS, this trainer has 3 Metapod. I have sense, so that won't happen here. Instead, we can have some fun.
	db 41
	dw LEDIAN ; At this level, it only knows screens, letting it do useful things instead of 1 damage with Swift.
	db 43
	dw SCYTHER
	db 43
	dw VENOMOTH
	db -1 ; end
	
	next_list_item ; BUG_CATCHER (21)
	db "ELLIS@", TRAINERTYPE_NORMAL ; From HGSS. Fine...may alter later.
	db 42
	dw WEEDLE 
	db 44
	dw KAKUNA
	db 53
	dw BEEDRILL
	db -1 ; end
	
	next_list_item ; BUG_CATCHER (21)
	db "ABNER@", TRAINERTYPE_NORMAL ; From HGSS
	db 42
	dw BUTTERFREE
	db 42
	dw BEEDRILL
	db 45
	dw PIKACHU
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL ; There are multiple "Karp Spam" Fishers, so Justin is being completely changed.
	db 15 ; Essentially, he is the player's introduction to Old Rod fishing in GSC.
	dw MAGIKARP
	db 15
	dw ORFRY
	db 17
	dw TENTACOOL 
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10
	dw ORFRY
	db 16 ; Could be a little strong, but Orfry evolves here...
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 8
	dw KRABBY
	db -1 ; end

	next_list_item ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL ; Route 43, so this is where stuff becomes real
	db 30
	dw MAGIKARP
	db 20
	dw GYARADOS
	db 35
	dw MAGIKARP
	db 25
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 18
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 27
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL ; He can be 6 Magikarp guy
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 33
	dw MANTINE
	db 35
	dw OCTILLERY
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES ; Unsure about this guy
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID ; MANTYKE - that in the game yet?
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFATHER
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 29
	dw GOLDEEN
	db 32
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	next_list_item ; FISHER (25)
	db "BRAN@", TRAINERTYPE_NORMAL
	db 54
	dw QWILFATHER
	db 57
	dw KAZAPPELIN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 20
	dw TENTACOOL
	db 20
	dw TENTACOOL
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 18
	dw SHELLDER
	db 20
	dw WARTORTLE
	db 18
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 19
	dw TENTACOOL
	db 19
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 16
	dw TENTACOOL
	db 17
	dw TENTACOOL
	db 16
	dw TENTACOOL
	db 19
	dw STARYU
	db 17
	dw TENTACOOL
	db 19
	dw REMORAID
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 20
	dw GYARADOS
	db 20
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 23
	dw KRABBY
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 21
	dw STARYU
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 19
	dw STARYU
	db 19
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 18
	dw GOLDEEN
	db 20
	dw GOLDEEN
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 20
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db 22
	dw GOLDEEN
	dw PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 22
	dw SEEL
	db 23
	dw GRENMAR
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 20
	dw STARYU
	db 20
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 21
	dw HORSEA
	dw BUBBLE, SMOKESCREEN, LEER, WATER_GUN
	db 21
	dw HORSEA
	dw DRAGON_RAGE, SMOKESCREEN, LEER, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw GRENMAR
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWHIRL
	db 17
	dw RATICATE
	db 19
	dw KRABBY
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	dw BUBBLE, LEER, VICEGRIP, HARDEN
	db 20
	dw KRABBY
	dw BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 18
	dw MACHOP
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 19
	dw WOOPER
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 11
	dw MOIBELLE ; Nerds like cats, right? Maybe this could be fun.
	db -1 ; end

	next_list_item ; SUPER_NERD (3) 
	db "GREGG@", TRAINERTYPE_NORMAL
	db 50
	dw ELECTRODE
	db 51
	dw PORYGON2
	db 50
	dw BELLEDAM
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL ; also seems unused
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL ; unused
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 34
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON2 ; This guy is in Kanto, may as well buff em up a storm!
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL ; Goldenrod Tunnel
	db 10
	dw MAGNEMITE
	db 13
	dw VOLTORB
	db 9
	dw MAGNEMITE
	db 9
	dw KOLTA ; In RBY they have these in Cinnabar, could restore it universally?
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL ; lots of unused super nerds...
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES ; unused - is it because of the name..?
	db 15 ; Could put in Goldenrod Tunnel with a super nerfed Porygon? Game Corner reference??
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 19
	dw SLOWPOKE
	dw CURSE, WATER_GUN, GROWL, STRENGTH
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw MEGANIUM
	dw RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw MEGANIUM
	dw GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw FERALIGATR
	dw SURF, RAIN_DANCE, SLASH, SCREECH
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL ; Vermillion Gym
	db 47
	dw MAGNEZONE
	db 43
	dw ELECTRODE
	db 42
	dw GOROTORA
	db 42
	dw ELECTABUZZ
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL ; This guy is notorious!
	db 16
	dw GEODUDE
	db 18
	dw PHANPY ; But he still must have Johto!
	db -1 ; end

	next_list_item ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 4
	dw PHANPY
	db 6
	dw WOOPER
	db 8
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL ; Lower floor of Union Cave - anything we can do?
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL ; same here
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw PHANPY
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 16
	dw PHANPY
	db 16
	dw GEODUDE
	db 18
	dw DUGTRIO ; WHAT THE FUCK YOU'RE AT MT MORTAR you can keep it tho
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL ; outside blackthorn...
	db 24
	dw PHANPY
	db 27
	dw GRAVELER
	db 32
	dw URSARING
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw MACHOP
	db 27
	dw GLIGAR
	db 32
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw STEELIX
	db 33 ; Bulbapedia says he doesn't have a Swinub? Cool tho.
	dw PILOSWINE
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_NORMAL ; changed to optimise, moves type is unnecessary.
	db 27
	dw LARVITAR
	db 32
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL ; genuinely deranged to have 5 L13 Geodudes when you're on the way to the Elite Four...
	db 32
	dw SLUGMA
	db 32
	dw PUPITAR
	db 34
	dw URSARING
	db 38
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 25
	dw PHANPY
	db 27
	dw TEDDIURSA
	db 29
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_MOVES ; Kanto trainer??
	db 43
	dw GOLEM
	dw ROCK_HEAD, EARTHQUAKE, EXPLOSION, BODY_SLAM
	db 45
	dw RHYDON
	dw EARTHQUAKE, ROCK_HEAD, ROAR, BODY_SLAM
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL ; unused?
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL ; kanto
	db 40
	dw DUGTRIO
	db 43
	dw RHYDON
	db 47
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL ; kanto
	db 43
	dw SANDSLASH
	db 43
	dw STEELIX
	db 45
	dw GOLEM
	db 40
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 45
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db 12
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 30
	dw SWINUB
	db 34
	dw STEELIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL ; unused?
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL ; unused?
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL ; Kanto trainer, fix later
	db 27
	dw HORSEA
	db 28
	dw KOFFING
	db 29
	dw SLUGMA
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 44
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KINGDRA ; also a kanto trainer
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL ; kanto
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING ; kanto
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL ; kanto 
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9) ; kanto
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 57
	dw HOUNDOOM
	dw PURSUIT, FIRE_BLAST, BEAT_UP, CRUNCH ; Beat Up seems REALLY fun with the high atk mons of the team.
	db 54
	dw NINETALES
	dw HYPNOSIS, CONFUSE_RAY, FIRE_BLAST, DIG
	db 55
	db ARCANINE
	dw FIRE_BLAST, ROAR, BODY_SLAM, EXTREMESPEED
	db 56
	dw MAGCARGO ; I am giving it a chance!!!
	dw CURSE, BODY_SLAM, FLAMETHROWER, ROCK_SLIDE
	db 57
	dw MAGMAR ; MAGMORTAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 57
	dw RAPIDASH
	dw QUICK_ATTACK, HYPNOSIS, BODY_SLAM, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL ; Goldenrod tunnel, I believe during the rocket invasion. same with the next. evaluate levels.
	db 23
	dw TRUSTAN
	db 25
	dw MAGMAR
	db 23
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_NORMAL ; probably doesn't need type-moves
	db 26
	dw TRUSTAN
	db 24
	dw FURRET
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL ; SS Aqua
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw FLAREON
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL ; can i just say this is the best name ever
	db 29
	dw MAGMAR
	db 32
	dw WEEZING
	db 29
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL ; HE LIVES
	db 43 ; just need to reuse him
	dw MAGMAR ; MAGMORTAR
	db 48
	dw CHARIZARD
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL ; Burned Tower, to be re-used
	db 15
	dw PUPPERON
	db 16
	dw VULPIII
	db 15
	dw KOLTA ; seems cute right?
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 7
	dw KOFFING
	db 10
	dw SLUGMA
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 11
	dw MAGBY
	db 13
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIII
	db 10
	dw MAGBY
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL ; I get his gimmick, but I do not like it.
	db 7
	dw VOLTORB
	db 7
	dw VOLTORB
	db 10
	dw PINECO
	db 15
	dw AIPOM
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 29
	dw MR__MIME
	db 29
	dw MAGMAR
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 10
	dw VOLTORB
	db 10
	dw VOLTORB
	db 12
	dw PINECO
	db 17
	dw AIPOM
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 25
	dw VOLTORB
	db 25
	dw VOLTORB
	db 27
	dw PINECO
	db 32
	dw AMBIPOM
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 36
	dw ELECTRODE
	db 36
	dw ELECTRODE
	db 40
	dw FORRETRESS
	db 42
	dw AMBIPOM
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL ; part of the unused rematches
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_MOVES ; cianwood gym
	db 26
	dw TYROGUE
	dw TACKLE, MACH_PUNCH
	db 30
	dw HITMONLEE
	dw DOUBLE_KICK, MEDITATE, JUMP_KICK, FOCUS_ENERGY
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES ; cianwood gym
	db 26
	dw TYROGUE
	dw TACKLE, MACH_PUNCH
	db 30
	dw HITMONCHAN
	dw COMET_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_MOVES ; cianwood gym
	db 28 ; This represents Ogasawara - anything we can do?
	dw MACHOP
	dw LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 32
	dw MACHOKE
	dw LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL ; Boss fight who gives Tyrogue.
	db 34
	dw HITMONLEE
	db 34
	dw HITMONCHAN
	db 36
	dw HITMONTOP ; Demonstrates all 3 evolutions instead of just two.
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_NORMAL ; Cianwood gym
	db 26
	dw MANKEY ; JABETTA - is that in the game yet? lol
	db 27
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL ; Only Kenji fight in Crystal
	db 34
	dw MACHAMP
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL ; ss aqua
	db 30
	dw MACHOKE
	db 32
	dw MACHOKE
	db 34
	dw MACHOKE
	db -1 ; end

	end_list_items

ExecutiveMGroup: ; Unsure which is which. Little help?
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	dw EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	dw TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	dw EMBER, SMOG, BITE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	dw TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; EXECUTIVEM (4)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw RATICATE
	db 22
	dw KOFFING
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL ; Ruins of Alph
	db 26
	dw GIRAFARIG
	db 30
	dw UNOWN ; I think it's a little neat, don't you?
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL ; Saffron Gym...
	db 47
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL ; Route 11 Kanto
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE ; EXEGGUTORA?
	db 30
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL ; Castro? Woke Game Freak?
	db 34 ; Oh, Kanto Route 11.
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES ; Just south of Ecruteak.
	db 17
	dw DROWZEE
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE ; jesus ok
	db 22
	dw STANTLER
	dw HYPNOSIS, TACKLE, LEER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES ; omg from hoenn? hi!!!
	db 25 ; Route 39
	dw QATU
	dw PECK, NIGHT_SHADE, LEER, FUTURE_SIGHT
	db 26
	dw SLOWPOKE ; deranged moveset i love it
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw NATU
	dw PECK, LEER, NIGHT_SHADE, NO_MOVE
	db 15
	dw KADABRA
	dw TELEPORT, KINESIS, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 28
	dw NATU
	dw LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 32
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 46
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL ; your parents were so mean holy
	db 40 ; Kanto Route 47
	dw STARMIE
	db 40
	dw EXEGGUTOR
	db 44
	dw FARIGIRAF
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME ; saffron gym cba to fix
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL ; ss aqua
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_F
	db 10
	dw MOIBELLE
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 9
	dw HOPPIP
	db 9
	dw SUNKERN
	db 12
	dw BULBASAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_NORMAL ; unnecessary
	db 13
	dw PICHU
	db 16
	dw PIKACHU
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 13
	dw VULPIII
	db 15
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36 ; Fuchsia Gym
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 44
	dw AMPHAROS ; Kanto Route 4
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 31 ; Kanto Route 4
	dw FURRET
	db 33
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33 ; ss aqua
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw SUNKERN
	db 17
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL ; Route 46...post-blackthorn? I-I'm speechless, this genuinely makes me angry, TWO L16 PONYTAS
	db 30 ; Technically post-Sudowoodo you can find your way there, but this is still unjustified as hell
	dw RAPIDASH
	db 33
	dw FURRET
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw BELLIGNAN
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL ; literally IN KANTO ROUTE 9
	db 42
	dw SKIPLOOM; TANGROWTH
	db 42
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 40
	dw NIDOQUEEN
	db 44
	dw RAICHU ; GOROCHU ; KANTO ROUTE 9???
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SUNFLORA
	db 29
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES ; Route 43
	db 31
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	dw ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw RAPIDASH
	db 32
	dw FURRET ; will fix levels when i can be bothered, rematches are hard
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL ; celadon gym???
	db 47
	dw EXEGGUTOR
	db 48
	dw VICTREEBEL ; surely more can be done too
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_NORMAL ; first fight on route 43
	db 30 ; and no the moves thing wasn't needed
	dw CLEFAIRY
	db 34
	dw JIGGLYPUFF ; 90% sure there's a better way to do this
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw FURRET
	dw HEADBUTT, QUICK_ATTACK, DEFENSE_CURL, ROLLOUT ; flashbang
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SUNFLORA
	db 32
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 35
	dw SUNFLORA
	dw SUNNY_DAY, SOLARBEAM, RAZOR_LEAF, PETAL_DANCE
	db 38
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_M
	db 11
	dw PHANPY
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 14
	dw WOOPER
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 10
	dw SNUBBULL
	db 10
	dw BITTYBAT
	db 14
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 15
	dw MARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING ; Fuchsia Gym
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 34 ; Kanto Route 25
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31 ; Kanto Route 9
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE ; Kanto Route 9
	db 29
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO ; Unused?
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15 ; unused?
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 17
	dw PHANPY
	db 17
	dw GEODUDE
	db 23
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw PHANPY
	db 23
	dw GRAVELER
	db 26
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT ; unused?
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40 ; unused?
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40 ; unused?
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40 ; unused?
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 37 ; Pewter Gym, lots of improvements to make
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL ; Route 43
	db 30
	dw SANDSHREW
	db 30
	dw SANDSLASH
	db 32
	dw GOLBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw DONPHAN
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 45
	dw DONPHAN
	dw EARTHQUAKE, RAPID_SPIN, ROLLOUT, DEFENSE_CURL
	db 43
	dw GOLEM
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 46
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 44
	dw QUAGSIRE
	dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL ; Route 45
	db 32 ; It seems the devs realised they messed up this area and fixed it real quick
	dw FEAROW
	db 32
	dw PRIMEAPE ; ANNIHILAPE??
	db 34
	dw TAUROS
	db -1 ; end

	end_list_items

ExecutiveFGroup: ; Ariana
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES ; Radio Tower
	db 30
	dw BELLEDAM
	dw PURSUIT, HEAL_BELL, LOVELY_KISS, FAINT_ATTACK
	db 32
	dw ARBOK
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw MUK ; A fun thing we can do is acknowledge Team Rocket is Kantonian and give the Pokemon Kanto-exclusive TMs. Show they have money and power!
	dw SLUDGE, SELFDESTRUCT, MINIMIZE, DISABLE
	db 32
	dw VILEPLUME
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW ; HONCHKROW?
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES ; Radio Tower
	db 32
	dw ARBOK
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW ; HONCHKROW?
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
	; Sneasler
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_NORMAL
	db 22
	dw HAUNTER
	db -1 ; end

	next_list_item ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (9)
	db "LI@", TRAINERTYPE_MOVES
	db 10
	dw BELLIGNAN
	dw FLASH, VINE_WHIP, GROWTH, WRAP
	db -1 ; end

; So these sages are in the Dragon's Den but end up being the Kimono Girls but again.
; Let's give them the Eeveelutions the Kimono Girls don't have!
	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 42
	dw NOCTOWL
	db 42
	dw LEAFEON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 42
	dw NOCTOWL
	db 42
	dw GLACEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 42
	dw NOCTOWL
	db 42
	dw SYLVEON
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 18
	dw MISDREAVUS
	db 20
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 20
	dw BIPULLA
	db 20
	dw MISDREAVUS
	db -1 ; end

	next_list_item ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL ; Unused?
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL ; unused
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL ; unused
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL ; Saffron Gym
	db 35
	dw HYPNO
	db 35
	dw SLOWKING
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL ; Saffron Gym
	db 34
	dw HYPNO
	db 36
	dw SLOWBRO
	db -1 ; end

	end_list_items

BoarderGroup: ; All in Pryce's Gym. Could expand to Ice Path and Seafoam.
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 28
	dw SNEASEL
	db 29
	dw DEWGONG
	db 30
	dw SEEL
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 28
	dw SWINUB
	db 28
	dw SWINUB ; WARFURS
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 27
	dw SHELLDER
	db 30
	dw CLOYSTER
	db 26
	dw BUU
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM ; Kanto Route 13
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db BERRY
	db 29
	dw CHARMANDER
	db BERRY
	db 29
	dw SQUIRTLE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM ; Kanto Route 14
	db 23 ; Previously a Psyduck trainer, now 6 Kotora.
	dw KOTORA
	db BERRY
	db 23
	dw KOTORA
	db BERRY
	db 23
	dw KOTORA
	db BERRY
	db 23
	dw KOTORA
	db BERRY
	db 23
	dw KOTORA
	db BERRY
	db 23
	dw KOTORA
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM ; ss aqua
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MOIBELLE
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db BERRY
	db 29
	dw SLOWKING
	db BERRY
	db 29
	dw SEAKING
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw DONPHAN
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw URSARING
	db BERRY
	db -1 ; end

	end_list_items

; Unusually, Naoko specifically has an unused fight.
; Maybe we can do something with her in Nihon.
; I've geared up the team, anyway.
KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 30
	dw SUNFLORA
	db 36
	dw NINETALES
	db 38
	dw JUMPLUFF
	db 45
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	db -1 ; end

	end_list_items

; No rematches here, just a lot of unused dupes.
; Potential alt usage? rename a few?
; See spreadsheet for combinations.
TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 10
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 10
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

; Added this to make room for more stuff. 
; Yeah, they filled trainers to max capacity originally. Pretty impressive.
SECTION "Enemy Trainer Parties 3", ROMX

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 28
	dw FURRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db BERRY
	db -1 ; end

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75
	dw SNORLAX
	dw AMNESIA, SNORE, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	dw QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58
	dw ARCANINE
	dw ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 14
	dw HOOTHOOT
	db 17
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw SPINARAK
	db 14
	dw GROWLITHE
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw ZUBAT
	db 11
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 25
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw EKANS
	db 23
	dw ODDISH
	db 21
	dw EKANS
	db 24
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	dw WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	dw ABSORB, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end
	end_list_items


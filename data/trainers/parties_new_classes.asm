SECTION "Enemy Trainer Parties 4", ROMX

; RBY / unused trainer types. Mostly placeholders.
ChannelerGroup:
	next_list_item ; CHANNELER (1)
	db "SHANNA@", TRAINERTYPE_NORMAL
	db 23
	dw GASTLY
	db -1 ; end
	end_list_items

CueBallGroup:
	next_list_item ; CUE_BALL (1)
	db "KIRBY@", TRAINERTYPE_NORMAL
	db 23
	dw CLEFFA
	db -1 ; end
	end_list_items

EngineerGroup:
	next_list_item ; ENGINEER (1)
	db "DASHU@", TRAINERTYPE_NORMAL
	db 52
	dw MAGNEZONE
	db 54
	dw ELECTIVIRE
	db -1 ; end
	end_list_items

RockerGroup:
	next_list_item ; ROCKER (1)
	db "BOWIE@", TRAINERTYPE_NORMAL
	db 23
	dw VOLTORB
	db -1 ; end
	end_list_items

TamerGroup:
	next_list_item ; TAMER (1)
	db "MOE@", TRAINERTYPE_NORMAL
	db 23
	dw TAUROS
	db -1 ; end
	end_list_items

FirefighterGroup:
	next_list_item ; FIREFIGHTER (1)
	db "REMY@", TRAINERTYPE_NORMAL
	db 23
	dw POLIWAG
	db -1 ; end
	end_list_items

TeacherMGroup:
	next_list_item ; TEACHERM (1)
	db "DORNYEI@", TRAINERTYPE_NORMAL
	db 23
	dw BLISSEY
	db -1 ; end
	end_list_items

PainterGroup:
	next_list_item ; PAINTER (1)
	db "RACHEL@", TRAINERTYPE_NORMAL
	db 23
	dw SMEARGLE
	db -1 ; end
	
	next_list_item ; PAINTER (1)
	db "DALI@", TRAINERTYPE_MOVES
	db 50
	dw NOCTOWL
	dw REFLECT, HYPNOSIS, WING_ATTACK, FORESIGHT
	db 53
	dw SMEARGLE
	dw EXTREMESPEED, BELLY_DRUM, NO_MOVE, NO_MOVE ; lol
	db -1 ; end
	
	end_list_items

SoldierGroup:
	next_list_item ; SOLDIER (1)
	db "PEPPINO@", TRAINERTYPE_NORMAL
	db 23
	dw FORRETRESS
	db -1 ; end
	end_list_items

SportsmanGroup:
	; one should be called Jet, using Dodrio, Electrode, Rapidash, Tauros, and Bellosom. Manga character.
	next_list_item ; SPORTSMAN (1)
	db "JACQUES@", TRAINERTYPE_NORMAL
	db 23
	dw DODUO
	db -1 ; end
	end_list_items
	
AerofossilGroup:
	next_list_item ; SPORTSMAN (1)
	db "???@", TRAINERTYPE_NORMAL
	db 99
	dw AERODACTYL
	db -1 ; end
	end_list_items

KabufossilGroup:
	next_list_item ; SPORTSMAN (1)
	db "???@", TRAINERTYPE_NORMAL
	db 99
	dw KABUTOPS
	db -1 ; end
	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_NORMAL
	db 18
	dw SNUBBULL
	db -1 ; end

	next_list_item ; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; LASS (3)
	db "ALICE@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 34
	dw ARBOK
	db 30
	dw GLOOM
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 30
	dw BULBASAUR
	db 32
	dw IVYSAUR
	db 34
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw PIDGEOTTO
	db 31
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 29
	dw PARAS
	db 32
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 33
	dw HOPPIP
	db 34
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 18
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 18
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 34
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 21
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 36
	dw GOLDUCK
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end
	
	next_list_item ; LASS (2)
	db "IKUE@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw NIDOQUEEN ; From the Yellow Lass
	db NO_ITEM
	db BODY_SLAM, SCRATCH, BLIZZARD, THUNDERBOLT
	db 43
	dw GOROTORA ; Basically the beta Pikaclone counterpart, right?
	db NO_ITEM
	db THUNDERBOLT, SCARY_FACE, QUICK_ATTACK, PURSUIT
	db 45
	dw PIKACHU ; And a pipe bomb.
	db LIGHT_BALL
	db THUNDERBOLT, QUICK_ATTACK, DOUBLE_EDGE, AGILITY ; Moves from Johto anime
	db -1 ; end

	end_list_items

WalkerGroup:
	next_list_item
	db "WALKER@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw TOGEKISS
	db PINK_BOW
	db EXTREMESPEED, MIRROR_MOVE, SAFEGUARD, HIDDEN_POWER ; HP Water
	db 60
	dw LUXWAN
	db STICK
	db FURY_CUTTER, SLASH, DRILL_PECK, THUNDERBOLT
	db 60
	dw CARETORKER
	db LEFTOVERS
	db SOFTBOILED, DRILL_PECK, HEAL_BELL, WHIRLWIND ; Drill Peck should be Dazzling Gleam!
	db 60
	dw DODRIO
	db POLKADOT_BOW
	db FLAIL, DRILL_PECK, AGILITY, ENDURE
	db 60
	dw AERODACTYL ; Progenitor of Birds in Tajiri lore!
	db MIRACLEBERRY
	db ROCK_HEAD, WING_ATTACK, EARTHQUAKE, FIRE_BLAST
	db 60
	dw SKARMORY
	db NO_ITEM ; Fire-type damage reduction item here please!
	db STEEL_WING, DRILL_PECK, PURSUIT, LEER
	db -1 ; end
	end_list_items
	
LoreleiGroup:
	next_list_item
	db "LORELEI@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw CLOYSTER
	db MINT_BERRY
	db SPIKES, ICE_BEAM, SURF, EXPLOSION
	db 60
	dw SNEASEL ; WEAVILE
	db PRZCUREBERRY
	db BEAT_UP, SLASH, ICE_BEAM, SWAGGER
	db 60
	dw JYNX
	db NO_ITEM
	db LOVELY_KISS, PSYCHIC_M, PERISH_SONG, THIEF
	db 60
	dw LUXWAN ; BUNBERG
	db MIRACLEBERRY
	db SYNTHESIS, ICE_BEAM, RAZOR_LEAF, PRESENT ; funny,,,,,
	db 60
	dw NINETALES ; NINETALESA
	db FAIRY_FEATHER
	db ICE_BEAM, CONFUSE_RAY, HIDDEN_POWER, NO_MOVE ; DAZZLING_GLEAM please! also, HP Electric
	db 60
	dw LAPRAS
	db NEVERMELTICE
	db THUNDERBOLT, ICE_BEAM, SURF, CONFUSE_RAY
	db -1 ; end
	end_list_items
	
XXXGroup: ; South Man
	next_list_item
	db "???@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw BALUMBA
	db MIRACLEBERRY
	db HYPNOSIS, GUST, EXPLOSION, NO_MOVE ; Dazzling Gleam pls!
	db 60
	dw SYLVEON
	db PRZCUREBERRY
	db QUICK_ATTACK, GROWTH, LIGHT_SCREEN, NO_MOVE ; Dazzling Gleam pls!
	db 60
	dw MIMEAR
	db MAGNET
	db LOVELY_KISS, THUNDERBOLT, PRESENT, NO_MOVE ; Dazzling Gleam pls!
	db 60
	dw WEEZING ; WEEZINGG
	db NO_ITEM ; Ground-type reducing item
	db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, NO_MOVE ; Dazzling Gleam pls!
	db 60
	dw PHANDARIN
	db PSNCUREBERRY
	db SHADOW_BALL, BODY_SLAM, PURSUIT, NO_MOVE ; Dazzling Gleam pls!
	db 60
	dw GRANBO
	db FAIRY_FEATHER
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Dazzling Gleam pls!
	db -1 ; end
	end_list_items
	
ImposterOakGroup:
	next_list_item
	db "PROF.OAK@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw TAUROS
	db POLKADOT_BOW
	db BODY_SLAM, HYPER_BEAM, FIRE_BLAST, THUNDERBOLT
	db 60
	dw EXEGGUTOR
	db MIRACLE_SEED
	db SLEEP_POWDER, GIGA_DRAIN, PSYCHIC_M, STUN_SPORE
	db 60
	dw ARCANINE
	db MINT_BERRY
	db FIRE_BLAST, EXTREMESPEED, BODY_SLAM, REST
	db 60
	dw GYARADOS
	db MYSTIC_WATER
	db HYDRO_PUMP, THUNDERBOLT, DOUBLE_EDGE, ROAR
	db 60
	dw WEEZING
	db NO_ITEM
	db SLUDGE_BOMB, THUNDERBOLT, EXPLOSION, FIRE_BLAST
	db 60
	dw GENGAR
	db NO_ITEM
	db HYPNOSIS, DREAM_EATER, SHADOW_BALL, EXPLOSION ; An inept set designed to illustrate that Impostor Oak isn't actually very competent.
	db -1 ; end
	end_list_items
	
AgathaGroup:
	next_list_item
	db "AGATHA@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw KITSEN
	db NO_ITEM
	db HYPNOSIS, THIEF, NIGHTMARE, DESTINY_BOND ; rude
	db 60
	dw PRIMEAPE ; ANNIHILAPE
	db SCOPE_LENS ; hahahahaha
	db CROSS_CHOP, ROCK_HEAD, SHADOW_BALL, FOCUS_ENERGY
	db 60
	dw MAROWAK ; MAROWAKA
	db THICK_CLUB
	db EARTHQUAKE, BONEMERANG, SHADOW_BALL, SWORDS_DANCE
	db 60
	dw MISMAGIUS
	db PRZCUREBERRY
	db THUNDERBOLT, PERISH_SONG, MEAN_LOOK, PROTECT ; also rude
	db 60
	dw GENGAR
	db MAGNET ; psychic damage-reducing item?
	db CONFUSE_RAY, THUNDERBOLT, GIGA_DRAIN, PSYCHIC_M
	db 60
	dw DOKUROAR
	db HARD_STONE
	db ROCK_SLASH, SHADOW_BALL, EARTHQUAKE, HIDDEN_POWER ; HP Fighting
	db -1 ; end
	end_list_items

; Could fit Cactormus with Spikes into this, considering it's a notable Ground move.
; Ship out Nidoqueen?
LeaderGiovanniGroup: ; since he uses different sprites
	next_list_item
	db "GIOVANNI@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw GLIGAR ; GLISCOR
	db SHARP_BEAK
	db EARTHQUAKE, WING_ATTACK, SWORDS_DANCE, SANDSTORM
	db 60
	dw DONPHAN ; TRAMPEL
	db LEFTOVERS
	db BELLY_DRUM, EARTHQUAKE, BODY_SLAM, ROCK_SLIDE
	db 60
	dw NIDOQUEEN
	db MYSTIC_WATER
	db SURF, FIRE_BLAST, EARTHQUAKE, BODY_SLAM
	db 60
	dw MAROWAK ; GUARDIA
	db THICK_CLUB
	db SWORDS_DANCE, EARTHQUAKE, BONEMERANG, BODY_SLAM
	db 60
	dw NIDOKING
	db NEVERMELTICE
	db THUNDERBOLT, ICE_BEAM, EARTHQUAKE, BODY_SLAM
	db 60
	dw RHYDON ; RHYPERIOR
	db SOFT_SAND
	db EARTHQUAKE, ROCK_SLIDE, BODY_SLAM, ROAR
	db -1 ; end
	end_list_items
	
GreenGroup:
	next_list_item
	db "GREEN@", TRAINERTYPE_ITEM_MOVES
	db 60
	dw HITMONCHAN
	db MIRACLEBERRY
	db MACH_PUNCH, MIND_READER, DYNAMICPUNCH, PURSUIT
	db 60
	dw JOLTEON
	db MINT_BERRY
	db THUNDERBOLT, REST, DOUBLE_KICK, THUNDER_WAVE
	db 60
	dw LAPRAS
	db MYSTIC_WATER
	db THUNDERBOLT, ICE_BEAM, SURF, CONFUSE_RAY
	db 60
	dw AERODACTYL
	db BURNT_BERRY
	db ROCK_HEAD, WING_ATTACK, FIRE_BLAST, EARTHQUAKE
	db 60
	dw GYARADOS
	db NO_ITEM ; electric damage-reducing item
	db THUNDERBOLT, HYDRO_PUMP, TWISTER, ICE_BEAM
	db 60
	dw VENUSAUR
	db MIRACLE_SEED
	db GIGA_DRAIN, SLUDGE_BOMB, SWORDS_DANCE, BODY_SLAM
	db -1 ; end
	end_list_items

; To be used during the GS Ball event.
; Uses a lot of his "favourites" from the Kurtball thing.
KurtGroup:
	next_list_item
	db "KURT@", TRAINERTYPE_MOVES
	db 50
	dw PARASECT
	db SPORE, GIGA_DRAIN, SLASH, ROCK_SLASH
	db 50
	dw SANDSLASH
	db SWORDS_DANCE, EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	db 50
	dw BELLOSSOM
	db SLEEP_POWDER, GROWTH, PETAL_DANCE, SYNTHESIS
	db 50
	dw MUK
	db SLUDGE_BOMB, EXPLOSION, FIRE_BLAST, THUNDERBOLT
	db 50
	dw GRANBULL
	db HEAL_BELL, TAKE_DOWN, CURSE, SHADOW_BALL
	db 50
	dw SLOWBRO
	db SURF, PSYCHIC_M, ICE_BEAM, EARTHQUAKE
	db -1 ; end
	end_list_items


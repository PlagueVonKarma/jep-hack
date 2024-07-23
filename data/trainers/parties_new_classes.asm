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

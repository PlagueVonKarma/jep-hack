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

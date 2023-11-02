TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock_Beach
	dw TreeMonSet_Rock_Dark_Cave
	dw TreeMonSet_Rock_Tower
	dw TreeMonSet_Rock_Ice
	dw TreeMonSet_Rock_Square
	dw TreeMonSet_Rock_Well
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, EKANS
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, NOCTOWL
	dbbw  5, 10, BUTTERFREE
	dbbw  5, 10, BEEDRILL
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, CATERPIE
	dbbw 15, 10, WEEDLE
	dbbw 10, 10, HOOTHOOT
	dbbw  5, 10, METAPOD
	dbbw  5, 10, KAKUNA
	db -1

; Rock Smash begins here.
TreeMonSet_Rock_Beach:
	dbbw 70, 23, KRABBY
	dbbw 20, 23, CORSOLA
	dbbw 10, 25, SHUCKLE
	db -1

TreeMonSet_Rock_Dark_Cave:
	dbbw 70,  8, GEODUDE
	dbbw 20,  9, PHANPY
	dbbw 10,  9, DUNSPARCE
	db -1

TreeMonSet_Rock_Tower:
	dbbw 90, 14, GEODUDE
	dbbw 10, 16, SLUGMA
	db -1

TreeMonSet_Rock_Ice:
	dbbw 90, 25, GEODUDE
	dbbw 10, 25, SWINUB
	db -1

TreeMonSet_Rock_Square:
	dbbw 85, 35, GRAVELER
	dbbw 10, 35, SHUCKLE
	dbbw  5, 40, GOLEM
	db -1

TreeMonSet_Rock_Well:
	dbbw 90, 15, KRABBY
	dbbw 10, 15, SHELLDER
	db -1

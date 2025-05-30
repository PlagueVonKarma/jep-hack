MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn VIRIDIAN_POKECENTER_1F,      5,  3

	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 26
	spawn CERULEAN_CITY,              19, 22
	spawn ROUTE_10_NORTH,             11,  2
	spawn VERMILION_CITY,              9,  6
	spawn LAVENDER_TOWN,               5,  6
	spawn SAFFRON_CITY,                9, 30
	spawn CELADON_CITY,               29, 10
	spawn FUCHSIA_CITY,               19, 28
	spawn CINNABAR_ISLAND,            11, 12
	spawn ROUTE_23,                    9,  6

	spawn NEW_BARK_TOWN,              13,  6
	spawn CHERRYGROVE_CITY,           29,  4
	spawn VIOLET_CITY,                31, 26
	spawn ROUTE_32,                   11, 74
	spawn AZALEA_TOWN,                15, 10
	spawn CIANWOOD_CITY,              23, 44
	spawn GOLDENROD_CITY,             14, 28
	spawn OLIVINE_CITY,               13, 22
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,                5, 20
	spawn BLACKTHORN_CITY,            21, 30
	spawn SILVER_CAVE_OUTSIDE,        23, 20
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
	
	spawn ONE_ISLAND,    17,  7
	spawn TWO_ISLAND,    19,  6 ; these are placeholders and hopefully zeta will make them all good and proper them before testing
	spawn THREE_ISLAND,  11,  26
	spawn FOUR_ISLAND,   17,  7
	spawn FIVE_ISLAND,   17,  7
	spawn SIX_ISLAND,    17,  7
	spawn SEVEN_ISLAND,  17,  7
	
	spawn SILENT_HILLS,				  13,  5
	spawn OLD_CITY,				  	  27, 29
	spawn SAVOY_CITY,				  25, 15
	spawn CORAL_CITY,				  31, 11
	spawn RUDDY_TOWN,				  31, 15
	spawn SUNGLOW_CITY,				  15, 15
	spawn BLUE_FOREST,				  13, 19
	spawn AVENTURINE_CITY,			  33, 21
	
	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1

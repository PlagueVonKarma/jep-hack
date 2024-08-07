	object_const_def

LavenderCryptSet1_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptSet1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  6, LAVENDER_CRYPT, 2 ; Entrance
	; Within-Map Warps
	warp_event  4,  3, LAVENDER_CRYPT_SET_1, 3
	warp_event  6, 13, LAVENDER_CRYPT_SET_1, 2
	warp_event  7,  4, LAVENDER_CRYPT_SET_1, 5
	warp_event 22,  4, LAVENDER_CRYPT_SET_1, 4
	warp_event 20,  2, LAVENDER_CRYPT_SET_1, 7
	warp_event  1,  5, LAVENDER_CRYPT_SET_1, 6
	warp_event 17,  4, LAVENDER_CRYPT_SET_1, 10
	warp_event 17,  5, LAVENDER_CRYPT_SET_1, 11
	warp_event  1, 12, LAVENDER_CRYPT_SET_1, 8
	warp_event  1, 13, LAVENDER_CRYPT_SET_1, 9
	warp_event 19,  6, LAVENDER_CRYPT_SET_1, 13
	warp_event 17, 14, LAVENDER_CRYPT_SET_1, 12
	warp_event  3, 14, LAVENDER_CRYPT_SET_1, 15
	warp_event 16,  1, LAVENDER_CRYPT_SET_1, 14
	warp_event  4, 17, LAVENDER_CRYPT_SET_1, 17
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 16
	warp_event 20, 13, LAVENDER_CRYPT_SET_1, 19
	warp_event  8, 16, LAVENDER_CRYPT_SET_1, 18
	;Outside of Map Warps
	warp_event  8,  1, LAVENDER_CRYPT_SET_2, 15
	warp_event  5, 15, LAVENDER_CRYPT_SET_2, 16
	warp_event  5, 16, LAVENDER_CRYPT_SET_2, 17
	warp_event 19, 15, LAVENDER_CRYPT_SET_3, 7
	warp_event 21,  5, LAVENDER_CRYPT_SET_3, 8
	warp_event 21,  6, LAVENDER_CRYPT_SET_3, 9
	warp_event 18, 18, LAVENDER_CRYPT_SET_3, 18
	warp_event 16, 12, LAVENDER_CRYPT_SET_2, 26
	warp_event 16, 16, LAVENDER_CRYPT_SET_3, 19
	warp_event 16, 17, LAVENDER_CRYPT_SET_3, 20
	
	def_coord_events

	def_bg_events

	def_object_events

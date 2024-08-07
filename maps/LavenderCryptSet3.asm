	object_const_def

LavenderCryptSet3_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptSet3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, LAVENDER_CRYPT, 4
	warp_event  7, 13, LAVENDER_CRYPT_DOKUROARS_ROOM, 1 ; To Dokuroar
	; Within-Map Warps
	warp_event  8,  4, LAVENDER_CRYPT_SET_3, 4
	warp_event 22,  3, LAVENDER_CRYPT_SET_3, 3
	warp_event 18,  2, LAVENDER_CRYPT_SET_3, 6
	warp_event  5,  2, LAVENDER_CRYPT_SET_3, 5
	; Outside of Map Warps
	warp_event 22,  6, LAVENDER_CRYPT_SET_1, 23
	warp_event 19, 14, LAVENDER_CRYPT_SET_1, 24
	warp_event 19, 15, LAVENDER_CRYPT_SET_1, 25
	warp_event 20, 18, LAVENDER_CRYPT_SET_2, 18
	warp_event  7,  6, LAVENDER_CRYPT_SET_2, 19
	warp_event 18,  7, LAVENDER_CRYPT_SET_2, 20
	warp_event 22, 11, LAVENDER_CRYPT_SET_2, 21
	warp_event  7, 16, LAVENDER_CRYPT_SET_2, 22
	warp_event  2,  4, LAVENDER_CRYPT_SET_2, 23
	warp_event 19, 10, LAVENDER_CRYPT_SET_2, 24
	warp_event 21, 14, LAVENDER_CRYPT_SET_2, 25
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 26
	warp_event 20,  6, LAVENDER_CRYPT_SET_1, 28
	warp_event 20,  7, LAVENDER_CRYPT_SET_1, 29
	
	def_coord_events

	def_bg_events

	def_object_events

	object_const_def

LavenderCryptSet3_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptSet3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, LAVENDER_CRYPT, 4
	warp_event  7, 13, LAVENDER_CRYPT_SET_1, 1 ; To Dokuroar
	
	warp_event 21, 14, LAVENDER_CRYPT_SET_1, 1
	warp_event 22,  6, LAVENDER_CRYPT_SET_1, 1
	warp_event 18,  2, LAVENDER_CRYPT_SET_1, 1
	warp_event  8,  4, LAVENDER_CRYPT_SET_1, 1
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 1
	warp_event 19, 10, LAVENDER_CRYPT_SET_1, 1
	warp_event 19, 14, LAVENDER_CRYPT_SET_1, 1
	warp_event 19, 15, LAVENDER_CRYPT_SET_1, 1
	
	warp_event  1,  8, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 1
	warp_event  7,  6, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 2
	warp_event  2,  2, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 3
	
	warp_event 22,  3, LAVENDER_CRYPT_SET_1, 1 ; right entry 1
	warp_event 22, 18, LAVENDER_CRYPT_SET_1, 1 ; right entry 2
	
	warp_event  7, 17, LAVENDER_CRYPT_SET_1, 1 ; Dokuroar bottom-left room entry point
	
	def_coord_events

	def_bg_events

	def_object_events

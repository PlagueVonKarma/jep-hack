	object_const_def

LavenderCryptSet1_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptSet1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  6, LAVENDER_CRYPT, 2
	warp_event  3, 14, LAVENDER_CRYPT_SET_1, 1
	warp_event 19,  6, LAVENDER_CRYPT_SET_1, 1
	warp_event 17,  5, LAVENDER_CRYPT_SET_1, 1
	warp_event 17,  4, LAVENDER_CRYPT_SET_1, 1
	warp_event 20,  2, LAVENDER_CRYPT_SET_1, 1
	warp_event  7,  4, LAVENDER_CRYPT_SET_1, 1
	warp_event  4,  3, LAVENDER_CRYPT_SET_2, 24 ; top-left corridor entry
	warp_event 16, 16, LAVENDER_CRYPT_SET_1, 1
	warp_event 20, 13, LAVENDER_CRYPT_SET_1, 1
	warp_event 16, 12, LAVENDER_CRYPT_SET_1, 1
	warp_event  4, 17, LAVENDER_CRYPT_SET_1, 1
	warp_event 16, 17, LAVENDER_CRYPT_SET_1, 1
	
	warp_event  8,  1, LAVENDER_CRYPT_SET_1, 1 ; top-left entry warp 1
	warp_event  1,  5, LAVENDER_CRYPT_SET_1, 1 ; top-left entry warp 2
	warp_event  1,  5, LAVENDER_CRYPT_SET_1, 1 ; top-left entry warp 3
	
	warp_event 16,  1, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 1
	warp_event 22,  4, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 2
	warp_event 17,  6, LAVENDER_CRYPT_SET_1, 1 ; top-right entry 3
	
	warp_event  1, 12, LAVENDER_CRYPT_SET_1, 1 ; bottom-left entry 1
	warp_event  6, 13, LAVENDER_CRYPT_SET_1, 1 ; bottom-left entry 2
	warp_event  2, 17, LAVENDER_CRYPT_SET_1, 1 ; bottom-left entry 3
	warp_event  8, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom-left entry 4
	
	warp_event 17, 14, LAVENDER_CRYPT_SET_1, 1 ; bottom-right entry 1
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom-right entry 3
	
	def_coord_events

	def_bg_events

	def_object_events

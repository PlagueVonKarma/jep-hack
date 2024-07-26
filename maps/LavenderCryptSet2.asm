	object_const_def

LavenderCryptSet2_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptSet2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, LAVENDER_CRYPT, 3
	warp_event  8, 16, LAVENDER_CRYPT_SET_1, 1
	warp_event 16,  4, LAVENDER_CRYPT_SET_1, 1
	warp_event 18,  3, LAVENDER_CRYPT_SET_1, 1
	warp_event 17,  2, LAVENDER_CRYPT_SET_1, 1
	warp_event 21,  1, LAVENDER_CRYPT_SET_1, 1
	warp_event  8, 10, LAVENDER_CRYPT_SET_1, 1
	warp_event  2,  9, LAVENDER_CRYPT_SET_1, 1
	warp_event 22, 18, LAVENDER_CRYPT_SET_1, 1
	warp_event 20, 16, LAVENDER_CRYPT_SET_1, 1
	warp_event  4, 17, LAVENDER_CRYPT_SET_1, 1
	warp_event 17, 17, LAVENDER_CRYPT_SET_1, 1 ; linked at bottom
	warp_event 17, 18, LAVENDER_CRYPT_SET_1, 1 ; linked at bottom
	warp_event 17,  9, LAVENDER_CRYPT_SET_1, 1 ; linked in top-right
	warp_event 17, 10, LAVENDER_CRYPT_SET_1, 1 ; linked in top-right
	warp_event 19,  5, LAVENDER_CRYPT_SET_1, 1
	
	warp_event  1, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom entry 1
	warp_event 10, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom entry 2
	warp_event 18, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom entry 3
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 1 ; bottom entry 4
	
	warp_event 16,  2, LAVENDER_CRYPT_SET_1, 1 ; top-right entry warp 1
	warp_event 22,  5, LAVENDER_CRYPT_SET_1, 1 ; top-right entry warp 2
	warp_event 22, 10, LAVENDER_CRYPT_SET_1, 1 ; top-right entry warp 3
	
	warp_event  1,  2, LAVENDER_CRYPT_SET_1, 1 ; top-left entry 1
	warp_event  8,  6, LAVENDER_CRYPT_SET_1, 1 ; top-left entry warp 2
	warp_event  3,  9, LAVENDER_CRYPT_SET_1, 1 ; top-left entry warp 3

	def_coord_events

	def_bg_events

	def_object_events

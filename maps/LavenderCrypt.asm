	object_const_def

LavenderCrypt_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCrypt_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, SOUL_HOUSE, 3 ; Entrance
	warp_event 15,  3, LAVENDER_CRYPT_SET_1, 1 ; Right Room
	warp_event  9,  1, LAVENDER_CRYPT_SET_2, 1 ; Middle Room
	warp_event  3,  3, LAVENDER_CRYPT_SET_3, 1 ; Left Room
	warp_event  9,  6, LAVENDER_CRYPT_DOKUROARS_ROOM, 3 ; Exit point for the room; goes through the pit.
	warp_event  8,  3, LAVENDER_CRYPT_SET_2, 14; OWNED

	def_coord_events

	def_bg_events

	def_object_events
	object_const_def

LavenderCryptDokuroarsRoom_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCryptDokuroarsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, LAVENDER_CRYPT_SET_3, 2 ; Entrance
	warp_event  6, 15, LAVENDER_CRYPT_SET_3, 2 ; Entrance
	warp_event  7,  2, LAVENDER_CRYPT, 5 ; Exit

	def_coord_events

	def_bg_events

	def_object_events
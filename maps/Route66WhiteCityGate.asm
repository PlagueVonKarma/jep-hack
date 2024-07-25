	object_const_def

Route66WhiteCityGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route66WhiteCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 7, ROUTE_66, 1
	warp_event  1, 7, ROUTE_66, 1
	warp_event  8, 7, WHITE_CITY, 1
	warp_event  9, 7, WHITE_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
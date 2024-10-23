	object_const_def

Route50SavoyCityGate_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route50SavoyCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 7, SAVOY_CITY, 1
	warp_event  1, 7, SAVOY_CITY, 1
	warp_event  8, 7, ROUTE_50, 1
	warp_event  9, 7, ROUTE_50, 1

	def_coord_events

	def_bg_events

	def_object_events

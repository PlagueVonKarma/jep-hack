	object_const_def

CoralCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CoralCityFlypointCallback

CoralCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CORAL
	endcallback

CoralCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 32, SAVOY_CITY, 4					;south port, north
	warp_event 14, 33, SAVOY_CITY, 5					;south port, south
	
	def_coord_events

	def_bg_events

	def_object_events


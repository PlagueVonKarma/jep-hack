	object_const_def

BlueForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BlueForestFlypointCallback

BlueForestFlypointCallback:
	setflag ENGINE_FLYPOINT_BLUE_FOREST
	endcallback
	
BlueForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 22, DEBUG_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
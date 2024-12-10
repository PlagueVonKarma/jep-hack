	object_const_def

AventurineCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_AVENTURINE
	return

AventurineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 30, 13, DEBUG_ROOM, 1
	warp_event 31, 13, DEBUG_ROOM, 1
	
	def_coord_events

	def_bg_events

	def_object_events


	object_const_def

SunglowCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_SUNGLOW_CITY
	return

SunglowCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8, 5, DEBUG_ROOM, 1
	warp_event 9, 5, DEBUG_ROOM, 1
	
	def_coord_events

	def_bg_events

	def_object_events


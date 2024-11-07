	object_const_def

RuddyTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_RUDDY
	return

RuddyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28, 30, ROUTE_52, 1
	warp_event 29, 30, ROUTE_52, 2
	
	def_coord_events

	def_bg_events

	def_object_events


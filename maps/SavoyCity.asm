	object_const_def

SavoyCity_MapScripts:
	def_scene_scripts

	def_callbacks

SavoyCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 15, ROUTE_50, 1		;east gate
	warp_event 22,  5, DEBUG_ROOM, 1	;north gate, left
	warp_event 23,  5, DEBUG_ROOM, 1	;north gate, right
	
	def_coord_events

	def_bg_events

	def_object_events


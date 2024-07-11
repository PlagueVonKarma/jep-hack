	object_const_def

Route48_MapScripts:
	def_scene_scripts

	def_callbacks

Route48Sign1:
	jumptext Route48Sign1Text

Route48Sign1Text:
	text "ROUTE 48"
	line "NORTH: JOHTO"
	cont "SAFARI ZONE"
	done
	
Route48Sign2:
	jumptext Route48Sign2Text

Route48Sign2Text:
	text "JOHTO SAFARI"
	line "ZONE"
	para "#MON-u-Catch!"
	done

Route48_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  3, DEBUG_ROOM, 1 ; Will be the Johto Safari Zone.

	def_coord_events

	def_bg_events
	bg_event 21, 25, BGEVENT_READ, Route48Sign1
	bg_event 13,  5, BGEVENT_READ, Route48Sign2
	
	def_object_events
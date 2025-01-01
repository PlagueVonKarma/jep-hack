	object_const_def

Route53_MapScripts:
	def_scene_scripts

	def_callbacks

Route53SignScript1:
	jumptext Route53SignText1

Route53SignText1:
	text "ROUTE 53"
	para "WEST: RUDDY TOWN"
	line "EAST: OCHRE TOWN"
	done

Route53SignScript2:
	jumptext Route53SignText2

Route53SignText2:
	text "RUDDY SAND"
	line "BATHS"
	
	para "Relax your"
	line "mind and body!"
	done

Route53SignScript3:
	jumptext Route53SignText3

Route53SignText3:
	text "Comment to be"
	line "written."
	done

Route53_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, ROUTE_53_RUDDY_TOWN_GATE, 3
		
	def_coord_events

	def_bg_events
	bg_event  8,  9, BGEVENT_READ, Route53SignScript1
	bg_event 24,  9, BGEVENT_READ, Route53SignScript2
	bg_event 16,  6, BGEVENT_READ, Route53SignScript3

	def_object_events


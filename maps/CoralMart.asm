	object_const_def
	const CORALMART_CLERK
	const CORALMART_SAILOR
	const CORALMART_POKEFAN_M

CoralMart_MapScripts:
	def_scene_scripts

	def_callbacks

CoralMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CORALCITY
	closetext
	end

CoralMartSailorScript:
	jumptextfaceplayer CoralMartSailorText

CoralMartPokefanMScript:
	jumptextfaceplayer CoralMartPokefanMText

CoralMartSailorText:
	text "Bah! Nowt that"
	line "would survive a"
	cont "voyage!"
	
	para "I'm gonna go get"
	line "DEMPSEY!" ; Referencing Jack Dempsey - he's actually just the sailor in the pokecenter.
	done

CoralMartPokefanMText:
	text "GREAT BALLS?"
	line "Where I'm from,"
	cont "they're called"
	cont "SUPER BALLS."
	done

CoralMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CORAL_CITY, 4
	warp_event  5,  7, CORAL_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralMartClerkScript, -1
	object_event 15,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralMartSailorScript, -1
	object_event  9,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralMartPokefanMScript, -1

	object_const_def
	const OLDMART_CLERK
	const OLDMART_TWIN
	const OLDMART_BUG_CATCHER

OldMart_MapScripts:
	def_scene_scripts

	def_callbacks

OldMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_OLDCITY
	closetext
	end

OldMartTwinScript:
	jumptextfaceplayer OldMartTwinText

OldMartBugCatcherScript:
	jumptextfaceplayer OldMartBugCatcherText

OldMartTwinText:
	text "I'm buying MAIL"
	line "to send to my"
	cont "foreign friend!"
	done

OldMartBugCatcherText:
	text "I heard there's a"
	line "tree with GOLD"
	cont "BERRIES around"
	cont "here."
	
	para "If I go to JOHTO's"
	line "BATTLE TOWER, they"
	cont "could be useful!"
	done

OldMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, OLD_CITY, 4
	warp_event  5,  7, OLD_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldMartClerkScript, -1
	object_event 15,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldMartTwinScript, -1
	object_event  9,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OldMartBugCatcherScript, -1

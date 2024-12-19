	object_const_def
	const RUDDYMART_CLERK
	const RUDDYMART_POKEFAN_M
	const RUDDYMART_SPACEWORLD_GIRL

RuddyMart_MapScripts:
	def_scene_scripts

	def_callbacks

RuddyMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_RUDDYTOWN
	closetext
	end

RuddyMartPokefanMScript:
	jumptextfaceplayer RuddyMartPokefanMText

RuddyMartSpaceworldGirlScript:
	jumptextfaceplayer RuddyMartSpaceworldGirlText

RuddyMartPokefanMText:
	text "My kid is always"
	line "asking for weird"
	cont "MAIL."
	
	para "I'll never unders-"
	line "tand the young!"
	done

RuddyMartSpaceworldGirlText:
	text "The selection"
	line "here is so odd!"
	
	para "I guess they can't"
	line "afford much?"
	done

RuddyMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, RUDDY_TOWN, 4
	warp_event  5,  7, RUDDY_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyMartClerkScript, -1
	object_event 13,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyMartPokefanMScript, -1
	object_event  9,  5, SPRITE_SPACEWORLD_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuddyMartSpaceworldGirlScript, -1

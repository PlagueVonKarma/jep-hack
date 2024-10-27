	object_const_def
	const ROUTE50_SAVOYCITYGATE_OFFICER
	const ROUTE50_SAVOYCITYGATE_SPACEWORLD_GIRL
	const ROUTE50_SAVOYCITYGATE_SUPER_NERD

Route50SavoyCityGate_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route50SavoyCityGateOfficerScript:
	jumptextfaceplayer Route50SavoyCityGateOfficerText

Route50SavoyCityGateOfficerText:
	text "You're heading to"
	line "SAVOY CITY?"
	
	para "It's a great place!"
	line "The people, on the"
	cont "other hand…" ; Story of anyone visiting Paris (allegedly)
	done

Route50SavoyCityGateSpaceworldGirlScript:
	jumptextfaceplayer Route50SavoyCityGateSpaceworldGirlText

Route50SavoyCityGateSpaceworldGirlText:
	text "Huh? You're bother-"
	line "ing me! Step off!"
	done

Route50SavoyCityGateSuperNerdScript:
	jumptextfaceplayer Route50SavoyCityGateSuperNerdText

Route50SavoyCityGateSuperNerdText:
	text "Oh, this issue of"
	line "#MON HANDBOOK"
	cont "is great!"
	
	para "So MAWTLE is a"
	line "Dark #MON…"
	
	para "Hey! Quit peeking!"
	done

Route50SavoyCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 7, SAVOY_CITY, 1
	warp_event  1, 7, SAVOY_CITY, 1
	warp_event  8, 7, ROUTE_50, 1
	warp_event  9, 7, ROUTE_50, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route50SavoyCityGateOfficerScript, -1
	object_event  7,  4, SPRITE_SPACEWORLD_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50SavoyCityGateSpaceworldGirlScript, -1
	object_event  1,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50SavoyCityGateSuperNerdScript, -1

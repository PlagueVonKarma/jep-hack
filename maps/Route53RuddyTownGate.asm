	object_const_def
	const ROUTE53_RUDDYTOWNGATE_OFFICER
	const ROUTE53_RUDDYTOWNGATE_GENTLEMAN

Route53RuddyTownGate_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route53RuddyTownGateOfficerScript:
	jumptextfaceplayer Route53RuddyTownGateOfficerText

Route53RuddyTownGateOfficerText:
	text "The waters here"
	line "are hotter than"
	cont "usual."
	
	para "Expect to see"
	line "tropical fish!"
	done

Route53RuddyTownGateGrampsScript:
	jumptextfaceplayer Route53RuddyTownGateGrampsText

Route53RuddyTownGateGrampsText:
	text "My TREBIR plays"
	line "classic music to"
	cont "me."
	
	para "A simple grammap-"
	line "hone cannot"
	cont "replicate such"
	cont "beauty!"
	done

Route53RuddyTownGateTrebirScript:
	faceplayer
	opentext
	writetext Route53RuddyTownGateTrebirText
	cry TREBIR
	waitbutton
	closetext
	end

Route53RuddyTownGateTrebirText:
	text "TREBIR: Twitwoo!"
	done

Route53RuddyTownGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 7, RUDDY_TOWN, 5
	warp_event  1, 7, RUDDY_TOWN, 5
	warp_event  8, 7, ROUTE_53, 1 ; Route 53
	warp_event  9, 7, ROUTE_53, 1 ; Route 53

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route53RuddyTownGateOfficerScript, -1
	object_event  6,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route53RuddyTownGateGrampsScript, -1
	object_event  7,  4, SPRITE_SMALL_BIRD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Route53RuddyTownGateTrebirScript, -1

	object_const_def

Route66WhiteCityGate_MapScripts:
	def_scene_scripts
	scene_script Route66WhiteCityGateNoopScript, SCENE_WHITECITYGATEMOMENT

	def_callbacks

Route66WhiteCityGateNoopScript:
	end

; Progressgating so the player doesn't go flying up to Stand...
Route66WhiteCityGateOfficerScript:
	opentext
	checkevent EVENT_BEAT_LEADER_GREEN
	iftrue .skip
	writetext Route66WhiteCityGateOfficerNoGoText1
	waitbutton
	closetext
	pause 15
	applymovement PLAYER, Route66WhiteCityGateNoGoMovement
	opentext
	writetext Route66WhiteCityGateOfficerNoGoText2
	waitbutton
	closetext
.skip
	end

; This can never trigger unless the above event can't trigger.
Route66WhiteCityGateOfficerTalk:
	jumptext Route66WhiteCityGateOfficerYouGoText

Route66WhiteCityGateOfficerNoGoText1:
	text "Whoa, aren't you"
	line "hasty?"
	done
	
Route66WhiteCityGateOfficerNoGoText2:
	text "The road's closed,"
	line "come back another"
	cont "time."
	done

Route66WhiteCityGateOfficerYouGoText:
	text "WHITE CITY is a"
	line "big place."
	
	para "Don't get lost"
	line "out there!"
	done

Route66WhiteCityGateNoGoMovement:
	step LEFT
	step_end

Route66WhiteCityGateSpaceworldGirlScript:
	jumptextfaceplayer Route66WhiteCityGateSpaceworldGirlText

Route66WhiteCityGateSpaceworldGirlText:
	text "There's this guy"
	line "who comes through"
	cont "here all the time."
	
	para "What was his name…"
	
	para "CAL?"
	
	para "Yeah, we call him"
	line "a BATTLE MANIAC!"
	done

Route66WhiteCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 7, ROUTE_66, 1
	warp_event  1, 7, ROUTE_66, 1
	warp_event  8, 7, WHITE_CITY, 1
	warp_event  9, 7, WHITE_CITY, 1

	def_coord_events
	coord_event  4,  5, SCENE_WHITECITYGATEMOMENT, Route66WhiteCityGateOfficerScript
	coord_event  4,  4, SCENE_WHITECITYGATEMOMENT, Route66WhiteCityGateOfficerScript

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route66WhiteCityGateOfficerTalk, -1
	object_event  8,  3, SPRITE_SPACEWORLD_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route66WhiteCityGateSpaceworldGirlScript, -1

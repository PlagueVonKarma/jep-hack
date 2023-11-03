; Text on this route uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const ROUTE_49_BUG_CATCHER

Route49_MapScripts:
	def_scene_scripts

	def_callbacks

Route49Sign1:
	jumptext Route49Sign1Text

Route49Sign1Text:
	text "ROUTE 49" ; Originally Route 1, but since Johto exists now, we use Route 49.
	line "SILENT HILLS -"
	cont "OLD CITY" ; Localisation TBD
	done

Route49Sign2:
	jumptext Route49Sign2Text

Route49Sign2Text:
	text "QUIET CAVE"
	
	para "Please be aware"
	line "of wild #MON!"
	done

Route49Boy1:
	jumptextfaceplayer Route49Boy1Text

; Minamitoku stated that the school the boy went to here is used to prepare for exams and the like, so this seems to be the best localisation.
Route49Boy1Text:
	text "I saw a strange"
	line "#MON when I came"
	cont "back from prep"
	cont "school!"
	done

Route49Boy2:
	jumptextfaceplayer Route49Boy2Text

Route49Boy2Text:
	text "Hey, pal!" ; "Hey, boy!" originally, localised with gender-neutral pronouns to account for Crystal.
	para "You should use"
	line "# BALLs after"
	cont "you've weakened"
	cont "the #MON!"
	done

TrainerBugCatcherSioned:
	trainer BUG_CATCHER, SIONED, EVENT_BEAT_BUG_CATCHER_SIONED, BugCatcherSionedSeenText, BugCatcherSionedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSionedAfterText
	waitbutton
	closetext
	end

BugCatcherSionedSeenText:
	text "I haven't seen"
	line "you around here"
	cont "before!"
	done

BugCatcherSionedBeatenText:
	text "You're good,"
	line "too!"
	done

BugCatcherSionedAfterText:
	text "Foreigners often"
	line "say this place"
	cont "feels familiar."
	
	para "What's so special"
	line "about this place,"
	cont "anyhow?"
	done

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	;warp_event  8,  9, QUIET_CAVE, 1
	;warp_event  8,  8, QUIET_CAVE, 1

	def_coord_events

	def_bg_events
	bg_event 20,  8, BGEVENT_READ, Route49Sign1
	bg_event 12,  7, BGEVENT_READ, Route49Sign2

	def_object_events
	object_event 23,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherSioned, -1
	object_event 20,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route49Boy2, -1
	object_event 19, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route49Boy1, -1

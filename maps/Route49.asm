	object_const_def
	const ROUTE_49_BUG_CATCHER

Route49_MapScripts:
	def_scene_scripts

	def_callbacks

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
	;warp_event  8,  9, SILENT_CAVE, 1
	;warp_event  8,  8, SILENT_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 23,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherSioned, -1

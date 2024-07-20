	object_const_def

UnnumberedRoute_MapScripts:
	def_scene_scripts

	def_callbacks

UnnumberedRouteSign1Script:
	jumptext UnnumberedRouteSign1Text

UnnumberedRouteSign1Text:
	text "Route XX"
	line "WEST: SILENT"
	cont "HILLS"
	
	para "SOUTH: WINNER'S"
	line "PATH"
	done

UnnumberedRouteSign2Script:
	jumptext UnnumberedRouteSign2Text

UnnumberedRouteSign2Text:
	text "TRAINER TIPS"
	
	para "If you use DEF-"
	line "ENSE CURL before"
	cont "ROLLOUT, its"
	cont "power doubles!"
	done

TrainerPainterDali:
	trainer PAINTER, DALI, EVENT_BEAT_PAINTER_DALI, PainterDaliSeenText, PainterDaliBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PainterDaliAfterBattleText
	waitbutton
	closetext
	end

PainterDaliSeenText:
	text "I'm not strange!"
	line "I'm just normal."
	done

PainterDaliBeatenText:
	text "You're certainly"
	line "not imitating!"
	prompt

PainterDaliAfterBattleText:
	text "Have no fear"
	line "of perfection!"
	
	para "You'll never"
	line "reach it!"
	done

TrainerSuperNerdGregg:
	trainer SUPER_NERD, GREGG, EVENT_BEAT_SUPER_NERD_GREGG, SuperNerdGreggSeenText, SuperNerdGreggBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SuperNerdGreggAfterBattleText
	waitbutton
	closetext
	end

SuperNerdGreggSeenText:
	text "We're on the"
	line "verge of a"
	cont "revolution!"
	done

SuperNerdGreggBeatenText:
	text "It won't be"
	line "televised!"
	prompt

SuperNerdGreggAfterBattleText:
	text "Isn't it crazy?"
	
	para "Virtual reality!"
	
	para "The VIRTUAL BOY"
	line "will change the"
	cont "world!"
	done

TrainerFisherBran:
	trainer FISHER, BRAN, EVENT_BEAT_FISHER_BRAN, FisherBranSeenText, FisherBranBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext FisherBranAfterBattleText
	waitbutton
	closetext
	end

FisherBranSeenText:
	text "Agh! You made me"
	line "lose my catch!"
	done

FisherBranBeatenText:
	text "Now I can't catch"
	line "any!"
	prompt

FisherBranAfterBattleText:
	text "SILENT HILLS has"
	line "a #MON CENTER"
	
	para "Isn't that just"
	line "incredible?"
	done

UnnumberedRoute_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 57,  9, DEBUG_ROOM, 1 ; Unsure, probably the other route.

	def_coord_events

	def_bg_events
	bg_event  2,  4, BGEVENT_READ, UnnumberedRouteSign1Script
	bg_event 30,  6, BGEVENT_READ, UnnumberedRouteSign2Script

	def_object_events
	object_event 47,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPainterDali, -1
	object_event 10, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdGregg, -1
	object_event 41,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFisherBran, -1

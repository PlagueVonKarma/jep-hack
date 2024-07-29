SafariZoneBeta_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneCheckSteps:
	ld a, [wSafariZoneStepCount] ; check if you have more than 0 steps.
	jr nz, .skip ; if not zero, ignore. easy enough.
	
	checkitem SAFARI_BALL ; check if the player has any safari balls left
	iftrue .skip ; this checks if there's any at all, so same principle.
	
	playsound SFX_ELEVATOR_END
	opentext
	writetext SafariZoneTimesUpText
	waitbutton
	closetext
	warpfacing UP, SAFARI_ZONE_FUCHSIA_GATE_BETA, 4,  0
.skip
	ret

SafariZoneTimesUpText:
	text "PA: Ding-dong!"

	para "Time's up!"
	
	para "Your SAFARI GAME"
	line "is over!"
	done

SafariZoneBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 1
	warp_event 10, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 2

	def_coord_events

	def_bg_events

	def_object_events

BellchimeTrail_MapScripts:
	def_scene_scripts

	def_callbacks
	
BellchimeTrailPanUpTrigger:
	playsound SFX_EXIT_BUILDING
	applymovement PLAYER, hide_object
	waitsfx
	applymovement PLAYER, .PanUpMovement
	disappear PLAYER
	pause 10
	special FadeOutMusic
	special FadeOutPalettes
	pause 15
	setscene $0
	warpfacing UP, TIN_TOWER_1F, 7, 15
	end

.PanUpMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

TinTowerSignText:
	text "Bell Tower"

	para "A legendary #-"
	line "mon is said to"
	cont "roost here."
	done

BellchimeTrail_MapEvents:
	def_warp_events
	warp_event  4,  4, WISE_TRIOS_ROOM, 1
	warp_event  4,  5, WISE_TRIOS_ROOM, 2
	warp_event 21,  9, TIN_TOWER_1F, 1 ; hole

	def_coord_events
	coord_event 21,  9, 1, BellchimeTrailPanUpTrigger

	def_bg_events
	bg_event 22, 12, BGEVENT_READ, TinTowerSignText
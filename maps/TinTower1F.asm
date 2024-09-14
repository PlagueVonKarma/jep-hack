	object_const_def
	const TINTOWER1F_EUSINE
	const TINTOWER1F_SAGE1
	const TINTOWER1F_SAGE2
	const TINTOWER1F_SAGE3
	const TINTOWER1F_SAGE4
	const TINTOWER1F_SAGE5
	const TINTOWER1F_SAGE6

TinTower1F_MapScripts:
	def_scene_scripts
	scene_script TinTower1FNoopScene,          SCENE_TINTOWER1F_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTower1FNPCsCallback
	callback MAPCALLBACK_TILES, TinTower1FStairsCallback

TinTower1FNoopScene:
	end

 ; Much of this may look unnecessary but we are keeping the janky "temporarily let the player in" clause of vanilla
 ; I frankly think this could be made significantly better simply by not letting the player in until they have actually got the wing
TinTower1FNPCsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .GotRainbowWing
	sjump .Done
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_1 ; purpose?
.GotRainbowWing:
	checkevent EVENT_FOUGHT_HO_OH
	iffalse .Done
	appear TINTOWER1F_EUSINE
.Done:
	endcallback

TinTower1FStairsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftrue .DontHideStairs
	changeblock 10, 2, $09 ; floor
.DontHideStairs:
	endcallback

TinTower1FSage1Script:
	jumptextfaceplayer TinTower1FSage1Text

TinTower1FSage2Script:
	jumptextfaceplayer TinTower1FSage2Text

TinTower1FSage3Script:
	jumptextfaceplayer TinTower1FSage3Text

TinTower1FSage4Script:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .FoughtHoOh
	jumptextfaceplayer TinTower1FSage4Text1

.FoughtHoOh:
	jumptextfaceplayer TinTower1FSage4Text2

TinTower1FSage5Script:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .FoughtHoOh
	checkitem RAINBOW_WING
	iftrue .GotRainbowWing
	sjump .FoughtHoOh
.GotRainbowWing:
	writetext TinTower1FSage5Text2
	waitbutton
	closetext
	end

.FoughtHoOh:
	writetext TinTower1FSage5Text3
	waitbutton
	closetext
	end

TinTower1FSage6Script:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .FoughtHoOh
	jumptextfaceplayer TinTower1FSage6Text1

.FoughtHoOh:
	jumptextfaceplayer TinTower1FSage6Text2

TinTower1FEusine:
	jumptextfaceplayer TinTower1FEusineHoOhText

TinTower1FSage1Text:
	text "According to"
	line "legend…"

	para "When the hearts of"
	line "#MON and humans"

	para "commune, from the"
	line "heavens descends a"

	para "#MON of rainbow"
	line "colors…"

	para "Could it mean the"
	line "legendary #MON"

	para "are testing us"
	line "humans?"
	done

TinTower1FSage2Text:
	text "When the BRASS"
	line "TOWER burned down,"

	para "three nameless"
	line "#MON were said"

	para "to have perished."
	line "It was tragic."

	para "However…"

	para "A rainbow-colored"
	line "#MON…"

	para "In other words…"

	para "HO-OH descended"
	line "from the sky and"

	para "gave new life to"
	line "the three #MON."

	para "They are…"

	para "SUICUNE, ENTEI and"
	line "RAIKOU."

	para "That is what they"
	line "say."
	done

TinTower1FSage3Text:
	text "The two TOWERS are"
	line "said to have been"

	para "built to foster"
	line "friendship and"

	para "hope between #-"
	line "MON and people."

	para "That was 700 years"
	line "ago, but the ideal"

	para "still remains"
	line "important today."
	done

TinTower1FSage4Text1:
	text "HO-OH appears to"
	line "have descended"

	para "upon this, the TIN"
	line "TOWER!"
	done

TinTower1FSage5Text1:
	text "This will protect"
	line "you. Take it."
	done

TinTower1FSage5Text2:
	text "Now, go."
	done

TinTower1FSage6Text1:
	text "I believe you are"
	line "being tested."

	para "Free your mind"
	line "from uncertainty,"
	cont "and advance."
	done

TinTower1FEusineHoOhText:
	text "I knew it."

	para "I knew you'd get"
	line "to see the #MON"

	para "of rainbow colors,"
	line "<PLAYER>."

	para "It happened just"
	line "as I envisioned."

	para "My research isn't"
	line "bad, I might say."

	para "I'm going to keep"
	line "studying #MON"

	para "to become a famous"
	line "#MANIAC!"
	done

TinTower1FSage4Text2:
	text "The legendary"
	line "#MON are said"

	para "to embody three"
	line "powers…"

	para "The lightning that"
	line "struck the TOWER."

	para "The fire that"
	line "burned the TOWER."

	para "And the rain that"
	line "put out the fire…"
	done

TinTower1FSage5Text3:
	text "When the legendary"
	line "#MON appeared…"

	para "They struck terror"
	line "in those who saw"
	cont "their rise."

	para "And…"

	para "Some even took to"
	line "futile attacks."

	para "The legendary"
	line "#MON, knowing"

	para "their own power,"
	line "fled, ignoring the"
	cont "frightened people."
	done

TinTower1FSage6Text2:
	text "Of the legendary"
	line "#MON, SUICUNE"

	para "is said to be the"
	line "closest to HO-OH."

	para "I hear there may"
	line "also be a link to"

	para "#MON known as"
	line "UNOWN."

	para "The #MON UNOWN"
	line "must be sharing a"

	para "cooperative bond"
	line "with SUICUNE."
	done

TinTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 12
	warp_event 10, 15, ECRUTEAK_CITY, 12
	warp_event 10,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TinTower1FEusine, EVENT_TIN_TOWER_1F_EUSINE
	object_event  5,  9, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage1Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage2Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 14,  6, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage3Script, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage4Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event  9,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage5Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event 14,  2, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage6Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2

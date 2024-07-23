; This acts as a more "advanced" version of the Trainer School in Violet.
; Lots of GSC mechanical details, focused on what was "new" for the time.
; It also visualises some GSC intricacies that aren't talked about.

; Some of this was in Stadium 2.

	object_const_def
	const SEPIASCHOOL_EARL
	const SEPIASCHOOL_COOLTRAINER_F
	const SEPIASCHOOL_GAMEBOY_KID1
	const SEPIASCHOOL_GAMEBOY_KID2
	const SEPIASCHOOL_COOLTRAINER_M
	const SEPIASCHOOL_POKEDEX

SepiaSchool_MapScripts:
	def_scene_scripts

	def_callbacks

SepiaSchoolEarl:
	applymovement SEPIASCHOOL_EARL, SepiaSchoolEarlSpinMovement
	faceplayer
	opentext
	writetext SepiaSchoolEarlIntroText
	yesorno
	iffalse .Part1
	writetext SepiaSchoolEarlStatExpText
	yesorno
	iffalse .Done
.Part1:
	writetext SepiaSchoolEarlTeachMoreText
	yesorno
	iffalse .Done
	writetext SepiaSchoolEarlDVsText
	waitbutton
	closetext
	end

.Done:
	writetext SepiaSchoolEarlNoMoreToTeachText
	waitbutton
	closetext
	end

SepiaSchoolCoolTrainerFScript:
	jumptextfaceplayer SepiaSchoolCoolTrainerFText

SepiaSchoolGameboyKid1Script:
	faceplayer
	opentext
	writetext SepiaSchoolGameboyKid1Text
	waitbutton
	closetext
	turnobject SEPIASCHOOL_GAMEBOY_KID1, DOWN
	end

SepiaSchoolGameboyKid2Script:
	faceplayer
	opentext
	writetext SepiaSchoolGameboyKid2Text
	waitbutton
	closetext
	turnobject SEPIASCHOOL_GAMEBOY_KID2, DOWN
	end

SepiaSchoolCoolTrainerMScript:
	jumptextfaceplayer SepiaSchoolCoolTrainerMText

SepiaSchoolBlackboard:
	opentext
	writetext SepiaSchoolBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Confusion
	ifequal 2, .MeanPass
	ifequal 3, .Nightmare
	ifequal 4, .Spikes
	ifequal 5, .PhysSpc
	closetext
	end

.Confusion:
	writetext SepiaSchoolConfusionText
	waitbutton
	sjump .Loop

.MeanPass:
	writetext SepiaSchoolMeanPassText
	waitbutton
	sjump .Loop

.Nightmare:
	writetext SepiaSchoolNightmareText
	waitbutton
	sjump .Loop

.Spikes:
	writetext SepiaSchoolSpikesText
	waitbutton
	sjump .Loop

.PhysSpc:
	writetext SepiaSchoolPhysSpcText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 13
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 6, 1 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "CONFUSION@"
	db "TRAPPING@"
	db "NIGHTMARE@"
	db "SPIKES@"
	db "ATK TYPE@"
	db "QUIT@"

SepiaSchoolNotebook:
	opentext
	writetext SepiaSchoolNotebookText
	yesorno
	iffalse .Done
	writetext SepiaSchoolNotebookText1
	yesorno
	iffalse .Done
	writetext SepiaSchoolNotebookText2
	yesorno
	iffalse .Done
	writetext SepiaSchoolNotebookText3
	waitbutton
.Done:
	closetext
	end

SepiaSchoolBookshelf:
	jumpstd DifficultBookshelfScript

SepiaSchoolEarlSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

SepiaSchoolEarlIntroText:
	text "Aha! <PLAYER>!"
	
	para "More I can teach,"
	line "there is!"
	
	para "Hear me, you"
	line "must!"
	done

SepiaSchoolEarlStatExpText:
	text "Good! Teach you,"
	line "I will!"

	para "If your #MON"
	line "beats another, it"
	cont "gains STAT EXP.!"
	
	para "What it gets is"
	line "based on what"
	cont "that #MON was"
	cont "good at."
	
	para "Beat KADABRA,"
	line "gain much SPEED"
	cont "and SPCL.ATK!"
	
	para "Beat MANTINE,"
	line "gain much SPCL."
	cont "DEF!"

	para "More from me you"
	line "want to hear?"
	done

SepiaSchoolEarlTeachMoreText:
	text "So, want to know"
	line "how to breed"
	cont "strong #MON?"
	done

SepiaSchoolEarlDVsText:
	text "Fine! Teach you,"
	line "I will!"

	para "Each #MON have"
	line "genes."
	
	para "Determine the"
	line "stats of your"
	cont "#MON they will!"
	
	para "SPECIAL stats"
	line "will use the"
	cont "same gene."
	
	para "They can be pas-"
	line "sed down with"
	cont "EGGs, so good"
	cont "usage means"
	cont "strong #MON!"
	done

SepiaSchoolEarlNoMoreToTeachText:
	text "Oh! Smart student"
	line "you are! Nothing"
	cont "more do I teach!"

	para "Good at #MON"
	line "you must be!"
	done

SepiaSchoolCoolTrainerFText:
	text "Man, these are"
	line "really specific…"
	
	para "Will this be on"
	line "the test?"
	done

SepiaSchoolGameboyKid1Text:
	text "We're trading"
	line "#MON so we can"
	cont "gain more EXP!"
	done

SepiaSchoolGameboyKid2Text:
	text "Having a trusted"
	line "friend like this"
	cont "guy is great!"
	
	para "Alright, let's"
	line "beat up some"
	cont "#MON!"
	done

SepiaSchoolCoolTrainerMText:
	text "A #MON with low"
	line "HP will deal"
	cont "more damage if"
	cont "it uses FLAIL"
	cont "or REVERSAL?"

	para "So if I use"
	line "ENDURE…"
	
	para "Whoa! That means"
	line "my DODRIO…"
	done

SepiaSchoolBlackboardText:
	text "The blackboard"
	line "describes #MON"
	cont "intricacies."
	done

SepiaSchoolConfusionText:
	text "If confused, a"
	line "#MON will hit"
	cont "itself half of"
	cont "the time."
	
	para "If its ATTACK"
	line "was increased,"
	cont "it will take"
	cont "more damage!"
	
	para "Cure it with a"
	line "BITTER BERRY!"
	done

SepiaSchoolMeanPassText:
	text "If a #MON is"
	line "affecting another"
	cont "with SPIDER WEB"
	cont "or MEAN LOOK,"
	
	para "that #MON"
	line "can't switch out!"
	
	para "BATON PASS will"
	line "also keep the"
	cont "#MON trapped!"
	
	para "Use this to"
	line "your advantage!"
	done

SepiaSchoolNightmareText:
	text "If used against"
	line "a sleeping #-"
	cont "MON, NIGHTMARE"
	cont "deals a quarter"
	cont "of a #MON's HP"
	cont "every turn!"
	
	para "The only cure"
	line "is to wake it"
	cont "up or switch"
	cont "out!"
	done

SepiaSchoolSpikesText:
	text "SPIKES will"
	line "deal a little"
	cont "damage to #-"
	cont "MON that switch"
	cont "into battle!"
	
	para "FLYING type #-"
	line "MON are immune."
	
	para "Remove SPIKES"
	line "with RAPID SPIN!"
	done

SepiaSchoolPhysSpcText:
	text "Moves are physical"
	line "or special based"
	cont "on type."
	
	para "Physical attacks:"
	line "NORMAL, ROCK, BUG,"
	cont "FIGHTING, FLYING,"
	cont "GHOST, POISON, GR-"
	cont "OUND, and STEEL."
	
	para "Special attacks:"
	line "FIRE, WATER, ICE,"
	cont "ELECTRIC, PSYCHIC,"
	cont "GRASS, DRAGON,"
	cont "DARK, and FAIRY."
	done

SepiaSchoolNotebookText:
	text "It's this kid's"
	line "notebook…"
	
	; Hilarious glitch btw
	para "If a #MON"
	line "tries to use"
	cont "BELLY DRUM,"
	cont "but can't, it"
	cont "still gets an"
	cont "ATTACK boost!"

	para "Keep reading?"
	done

SepiaSchoolNotebookText1:
	text "GUST and TWISTER"
	line "deal double damage"
	cont "to a FLYing"
	cont "#MON!"
	
	para "EARTHQUAKE does"
	line "the same if it"
	cont "uses DIG!"

	para "Keep reading?"
	done

SepiaSchoolNotebookText2:
	text "Some moves that"
	line "restore HP will"
	cont "vary by weather."
	
	para "In the sun, SYN-"
	line "THESIS and MOR-"
	cont "NING SUN are best."
	
	para "In the rain, use"
	line "MOONLIGHT!"
	
	para "Sandstorms will"
	line "make most worse."

	para "Keep reading?"
	done

SepiaSchoolNotebookText3:
	text "PROTECT and DETECT"
	line "will fail if used"
	cont "too often."
	
	para "The chance halves"
	line "each time!"

	para "The next page"
	line "is… Blank!"

	para "GIRL: Hey!"

	para "These notes are"
	line "mine! I want to"
	cont "succeed at the"
	cont "championship!"
	done

SepiaSchoolYoungsterScript:
	jumptextfaceplayer SepiaSchoolYoungsterText

SepiaSchoolYoungsterText:
	text "I was using my"
	line "best GUARDIA, but"
	cont "after it used"
	cont "SWORDS DANCE, it"
	cont "became weak all"
	cont "of a sudden!"
	
	para "Gah! Was it so"
	line "strong it turned"
	cont "negative?!"
	
	para "Surely not, right?"
	done

SepiaSchool_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, OLD_CITY, 3
	warp_event  4, 15, OLD_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, SepiaSchoolBookshelf
	bg_event  1,  1, BGEVENT_READ, SepiaSchoolBookshelf
	bg_event  3,  0, BGEVENT_READ, SepiaSchoolBlackboard
	bg_event  4,  0, BGEVENT_READ, SepiaSchoolBlackboard

	def_object_events
	object_event  3,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SepiaSchoolEarl, 0
	object_event  4,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SepiaSchoolCoolTrainerFScript, -1
	object_event  2,  9, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SepiaSchoolGameboyKid1Script, -1
	object_event  3,  9, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SepiaSchoolGameboyKid2Script, -1
	object_event  5,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SepiaSchoolCoolTrainerMScript, -1
	object_event  4,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SepiaSchoolNotebook, -1
	object_event  5, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SepiaSchoolYoungsterScript, -1

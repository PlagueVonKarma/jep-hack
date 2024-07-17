	object_const_def
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_BUG_CATCHER4
	const VIRIDIANFOREST_BUG_CATCHER5
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherDane:
	trainer BUG_CATCHER, BUG_CATCHER_DANE, EVENT_BEAT_BUG_CATCHER_DANE, BugCatcherDaneSeenText, BugCatcherDaneBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherDaneAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDion:
	trainer BUG_CATCHER, BUG_CATCHER_DION, EVENT_BEAT_BUG_CATCHER_DION, BugCatcherDionSeenText, BugCatcherDionBeatenText, 0, .AfterScript
	
.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherDionAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherStacey:
	trainer BUG_CATCHER, BUG_CATCHER_STACEY, EVENT_BEAT_BUG_CATCHER_STACEY, BugCatcherStaceySeenText, BugCatcherStaceyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherStaceyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, BUG_CATCHER_ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, BugCatcherEllisSeenText, BugCatcherEllisBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAbner:
	trainer BUG_CATCHER, BUG_CATCHER_ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

; I wanted a trainer to serve as the Lass from Yellow, so I took Ikue (LGPE) and the Yellow Lass trainer, put them together, and put her in the same area. 
; Restores a removed reference to Ikue Otani from the Crystal localisation without removing the old name, in a cosmic sort of way.
TrainerLassIkue:
	trainer LASS, IKUE, EVENT_BEAT_LASS_IKUE, LassIkueSeenText, LassIkueBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LassIkueAfterBattleText
	waitbutton
	closetext
	end

LassIkueSeenText:
	text "PIKACHU is so"
	line "cute, right?"
	done

LassIkueBeatenText:
	text "I wonder if"
	line "you recognise"
	cont "my voice…"
	done

BugCatcherDaneSeenText:
	text "Welcome to"
	line "VIRIDIAN FOREST."
	cont "Enjoy my Bug-type"
	cont "#MON!"
	done

BugCatcherDaneBeatenText:
	text "That's wonderful…"
	done
	
BugCatcherDaneAfterBattleText:
	text "Pretty impressive!"

	para "I'm sure you can"
	line "go anywhere with"
	cont "that skill!"
	done

BugCatcherDionSeenText:
	text "Shh! Be quiet! The"
	line "bug #MON will"
	cont "run away!"
	done

BugCatcherDionBeatenText:
	text "Phew…"
	done
	
BugCatcherDionAfterBattleText:
	text "Bug-type #MON"
	line "make all kinds of"
	cont "sounds."

	para "For bug #MON"
	line "fans, knowing how"
	cont "to distinguish"
	cont "them is key!"
	done

BugCatcherStaceySeenText:
	text "Wow, that's a HUGE"
	line "#MON!"

	para "…"
	line "…What kind of"
	cont "TRAINER?!"
	done

BugCatcherStaceyBeatenText:
	text "I couldn't catch"
	line "it!"
	done
	
BugCatcherStaceyAfterBattleText:
	text "Has anyone ever"
	line "told you that from"
	cont "behind you look"
	cont "like a VENONAT?"
	done
	
BugCatcherEllisSeenText:
	text "There's nothing"
	line "more efficient and"
	cont "beautiful than a"
	cont "Bug-type #MON."
	done

BugCatcherEllisBeatenText:
	text "I lost"
	line "beautifully!"
	done

BugCatcherEllisAfterBattleText:
	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done

BugCatcherAbnerSeenText:
	text "Many people prefer"
	line "solid bug #MON"
	cont "over squishy bug"
	cont "#MON."
	done

BugCatcherAbnerBeatenText:
	text "Thanks for your"
	line "hard work, my"
	cont "lovely #MON…"
	done
	
BugCatcherAbnerAfterBattleText:
	text "Doesn't matter what"
	line "kind of #MON--"

	para "as long as you"
	line "like them, they"
	cont "all look cute."
	done

LassIkueAfterBattleText:
	text "My PIKACHU is"
	line "really strong,"
	cont "huh?"
	
	para "I don't know"
	line "why. Did I give"
	cont "it something?"
	done

ViridianForestSignScript1:
	opentext
	writetext ViridianForestSignText1
	waitbutton
	closetext
	end

ViridianForestSignText1:
	text "Leaving"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY ahead"
	done

ViridianForestSignScript2:
	opentext
	writetext ViridianForestSignText2
	waitbutton
	closetext
	end

ViridianForestSignText2:
	text "TRAINER TIPS"

	para "Hold on to that"
	line "BIG MUSHROOM!"

	para "Some maniacs will"
	line "pay lots of money"
	cont "for useless items!"
	done

ViridianForestSignScript3:
	opentext
	writetext ViridianForestSignText3
	waitbutton
	closetext
	end

ViridianForestSignText3:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before trying"
	cont "to catch them!"
	
	para "When healthy,"
	line "they may escape!"
	done

ViridianForestSignScript4:
	opentext
	writetext ViridianForestSignText4
	waitbutton
	closetext
	end

ViridianForestSignText4:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForestSignScript5:
	opentext
	writetext ViridianForestSignText5
	waitbutton
	closetext
	end

ViridianForestSignText5:
	text "TRAINER TIPS"

	para "Poison and steel" ; tweaked to include info on the "new" steel-type.
	line "#MON can't be"
	cont "poisoned!"
	done

ViridianForestSignScript6:
	opentext
	writetext ViridianForestSignText6
	waitbutton
	closetext
	end

ViridianForestSignText6:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done
	
ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, ViridianForestSignScript1
	bg_event  6, 26, BGEVENT_READ, ViridianForestSignScript2
	bg_event 29, 19, BGEVENT_READ, ViridianForestSignScript3
	bg_event 18, 34, BGEVENT_READ, ViridianForestSignScript4
	bg_event 26, 42, BGEVENT_READ, ViridianForestSignScript5
	bg_event 20, 44, BGEVENT_READ, ViridianForestSignScript6
	bg_event 32, 44, BGEVENT_ITEM + MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER
	bg_event 18, 43, BGEVENT_ITEM + FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL
	bg_event  4, 43, BGEVENT_ITEM + TINYMUSHROOM, EVENT_VIRIDIAN_FOREST_HIDDEN_TINYMUSHROOM
	bg_event 30,  9, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_VIRIDIAN_FOREST_HIDDEN_BIG_MUSHROOM
	bg_event  3, 14, BGEVENT_ITEM + LEAF_STONE, EVENT_VIRIDIAN_FOREST_HIDDEN_LEAF_STONE

	def_object_events
	object_event 29, 42, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDane, -1
	object_event 33, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherDion, -1
	object_event 32, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherStacey, -1
	object_event 31,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEllis, -1
	object_event  5, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherAbner, -1
	object_event  3, 43, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassIkue, -1
	object_event 14, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DIRE_HIT, 1, EVENT_ROUTE_2_DIRE_HIT
	object_event  3, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MAX_POTION, 1, EVENT_ROUTE_2_MAX_POTION


	object_const_def

OldCityGym_MapScripts:
	def_scene_scripts

	def_callbacks

OldGymWalkerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LEADER_WALKER
	iftrue .FightDone
	writetext WalkerText_Start
	waitbutton
	closetext
	winlosstext WalkerText_Lose, 0
	loadtrainer WALKER, WALKER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LEADER_WALKER
	opentext
	writetext Text_ReceivedWalkerBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BADGE1
.FightDone:
	checkevent EVENT_GOT_TM47_STEEL_WING2
	iftrue .GotSteelWing
	setevent EVENT_BEAT_BIRD_KEEPER_MATT
	setevent EVENT_BEAT_BIRD_KEEPER_SHAW
	setevent EVENT_BEAT_BIRD_KEEPER_FREDERICK
	setevent EVENT_BEAT_BIRD_KEEPER_NORIKAGE
	writetext WalkerText_AfterBattle
	promptbutton
	verbosegiveitem TM_STEEL_WING
	iffalse .NoRoomForSteelWing
	setevent EVENT_GOT_TM47_STEEL_WING2
	writetext WalkerText_SteelWingGaffe
	waitbutton
	closetext
	end

.GotSteelWing:
	writetext WalkerText_RegularText
	waitbutton
.NoRoomForSteelWing:
	closetext
	end

WalkerText_Start:
	text "I'm WALKER!"
	
	para "Chaw haw haw!"
	line "So you beat my"
	cont "son, eh?"
	
	para "I caught that"
	line "PIDGEOTTO for"
	cont "him in VIRIDIAN"
	cont "FOREST! It's a"
	cont "strange one,"
	cont "right?"
	
	para "Enough chopsin'!"
	line "You're here for"
	cont "my badge, right?"
	
	para "I'll blow you"
	line "back to JOHTO!"
	done

WalkerText_Lose:
	text "Hoo-ah! You're"
	line "a toughie!"

	para "Yep, ya got me."
	line "Here's your BADGE."
	done

Text_ReceivedWalkerBadge:
	text "<PLAYER> received"
	line "XBADGE."
	done

WalkerText_AfterBattle:
	text "Hm, you conquered"
	line "JOHTO and KANTO,"
	cont "huh?"
	
	para "Well, I doubt"
	line "you'll get much"
	cont "out of my BADGE."
	
	para "Did you know they"
	line "boost the power"
	cont "of your moves,"
	cont "though?"
	
	para "My son has been"
	line "helping your bird"
	cont "#MON all along!"
	cont "What a MURKROW,"
	cont "eh?"

	para "Take this and be"
	line "on your way."
	done

WalkerText_SteelWingGaffe:
	text "TM47 contains"
	line "STEEL WING."

	para "Huh? It's a STEEL"
	line "move? Sure it is!"

	para "Didn't you see ol'"
	line "SKARMORY here so-"
	cont "aring with it?"
	
	para "Lemme have this,"
	line "pal! C'mon!"
	done

WalkerText_RegularText:
	text "There's a tonna"
	line "bird #MON out"
	cont "there, <PLAYER>."
	
	para "To get ahead, you"
	line "can't just use"
	cont "those, though."
	
	para "They're not too"
	line "different to FLY-"
	cont "ING #MON, see?"
	
	para "That's how LANCE"
	line "beat me outta the"
	cont "ELITE FOUR! That"
	cont "larrikin!" ; Ancient slang word meaning "troublemaker", essentially. Came from Cornish/Black Country dialect, persists in Australian English. 
	done

TrainerBirdkeeperMatt:
	trainer BIRD_KEEPER, MATT, EVENT_BEAT_BIRD_KEEPER_MATT, BirdkeeperMattSeenText, BirdkeeperMattBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BirdkeeperMattAfterBattleText
	waitbutton
	closetext
	end

BirdkeeperMattSeenText:
	text "Oh! A JOHTO kid!"
	para "Let's give you"
	line "a welcome you'll"
	cont "never forget!"
	done

BirdkeeperMattBeatenText:
	text "Kyaaargh!"
	done

BirdkeeperMattAfterBattleText:
	text "Bird #MON make"
	line "great partners,"
	cont "huh?"
	
	para "They grow with"
	line "you."
	done

TrainerBirdkeeperShaw:
	trainer BIRD_KEEPER, SHAW, EVENT_BEAT_BIRD_KEEPER_SHAW, BirdkeeperShawSeenText, BirdkeeperShawBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BirdkeeperShawAfterBattleText
	waitbutton
	closetext
	end

BirdkeeperShawSeenText:
	text "It's time for the"
	line "TREBIR opera!"
	done

BirdkeeperShawBeatenText:
	text "Oh, dear!"
	done

BirdkeeperShawAfterBattleText:
	text "Aren't TREBIR's"
	line "songs marvelous?"
	
	para "Huh? What's with"
	line "that look on your"
	cont "face?" ; It knows Perish song. Shaw is going to die.
	done

TrainerBirdkeeperFrederick:
	trainer BIRD_KEEPER, FREDERICK, EVENT_BEAT_BIRD_KEEPER_FREDERICK, BirdkeeperFrederickSeenText, BirdkeeperFrederickBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BirdkeeperFrederickAfterBattleText
	waitbutton
	closetext
	end

BirdkeeperFrederickSeenText:
	text "Careful, there!"
	
	para "You almost fell!"
	done

BirdkeeperFrederickBeatenText:
	text "Wh-whoa!"
	done

BirdkeeperFrederickAfterBattleText:
	text "Seems I'm the"
	line "one who needs to"
	cont "be careful!"
	
	para "CARETORKER alm-"
	line "ost knocked me"
	cont "off!"
	done

TrainerBirdkeeperNorikage:
	trainer BIRD_KEEPER, NORIKAGE, EVENT_BEAT_BIRD_KEEPER_NORIKAGE, BirdkeeperNorikageSeenText, BirdkeeperNorikageBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BirdkeeperNorikageAfterBattleText
	waitbutton
	closetext
	end

BirdkeeperNorikageSeenText:
	text "Falconry is an"
	line "art form few can"
	cont "appreciate."
	
	para "Let me show you!"
	done

BirdkeeperNorikageBeatenText:
	text "It seems you're"
	line "aware!"
	done

BirdkeeperNorikageAfterBattleText:
	text "My ancestors"
	line "brought falconry"
	cont "to NIHON."
	
	para "I shall conti-"
	line "nue their legacy!"
	done

OldGymStatue:
	checkflag ENGINE_BADGE1
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WALKER, WALKER1
	jumpstd GymStatue2Script

OldGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_LEADER_WALKER
	iftrue .OldGymGuideWinScript
	opentext
	writetext OldGymGuideText
	waitbutton
	closetext
	end

.OldGymGuideWinScript:
	opentext
	writetext OldGymGuideWinText
	waitbutton
	closetext
	end

OldGymGuideText:
	text "Yo, champ! Fancy"
	line "seeing you here!"

	para "WALKER is one to-"
	line "ugh cookie. Even"
	cont "in the NIHON LEA-"
	cont "GUE, he's feared!"
	
	para "Remember FALKNER?"
	line "This guy raised"
	cont "him!"
	
	para "Huh? Advice? You"
	line "still want it,"
	cont "after all this"
	cont "time?"
	
	para "Then I'll say this!"
	
	para "The apple doesn't"
	line "fall far from the"
	cont "tree!"
	done

OldGymGuideWinText:
	text "Woweee, you got"
	line "'em!"
	
	para "Just another re-"
	line "gion for you to"
	cont "conquer, huh?"
	done

OldCityGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, OLD_CITY, 5
	warp_event  6, 19, OLD_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  4, 17, BGEVENT_READ, OldGymStatue
	bg_event  7, 17, BGEVENT_READ, OldGymStatue

	def_object_events
	object_event  5,  2, SPRITE_WALKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OldGymWalkerScript, -1
	object_event 10, 13, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdkeeperMatt, -1
	object_event  1, 13, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdkeeperShaw, -1
	object_event  2,  8, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdkeeperFrederick, -1
	object_event  9,  8, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdkeeperNorikage, -1
	object_event  7, 18, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OldGymGuideScript, -1

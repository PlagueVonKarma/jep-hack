; To paraphrase KEP:
; Shinjuku Jacky was a famous Virtua Fighter player and the source of the famous "Jack" sprite.
; He wrote the book "Virtua Fighter Maniax", the first to feature frame data for Virtua Fighter 1 and thus a very notable resource. 
; If you ever view a frame data resource, thank Jacky for popularising the concept.
; At the time, many Virtua Fighter players had "geographical names", representing their residences. Shinjuku is notably within Tokyo, near to Shibuya. 
; Because Celadon City is based on Tokyo Metropolis, specifically Shinjuku and Shibuya, and there's a map called JISAN.MAP that featured N64s, in RG ROM Hacks, he's normally placed there.

; In JEP, Jacky is a gamer near Sepia City who you can fight for Gold Leaves, which I want to serve as Heart Scales.

	object_const_def

JackysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; You can fight Shinjuku Jacky every day to get Gold Leaves, which serve as Heart Scale currency.
JackysHouseJackyScript:
	faceplayer
	checkevent EVENT_BEAT_SHINJUKU_JACKY_ONCE
	opentext
	iftrue .beatOnce
	writetext JackyWelcomeText
	waitbutton
	closetext
	sjump .firstFight
.beatOnce
	checkflag ENGINE_JACKY_TIMER
	iftrue .tuckeredOut
	opentext
	writetext JackyPostBeat
	waitbutton
	closetext
	; fallthrough
.firstFight
	opentext
	yesorno
	iffalse .No
	sjump .Yes
.No
	writetext JackyNo
	waitbutton
	closetext
	sjump .end
.Yes
	opentext
	writetext JackyYes
	waitbutton
	closetext
	winlosstext JackyLossText, 0
	loadtrainer JACK, JACKY
	startbattle
	reloadmapafterbattle
	
	setevent EVENT_BEAT_SHINJUKU_JACKY_ONCE
	setflag ENGINE_JACKY_TIMER
	opentext
	writetext JackyAfterBattle
	promptbutton
	verbosegiveitem GOLD_LEAF
	iffalse .NoRoomForGoldLeaf
	writetext JackyGift
	waitbutton
	closetext
	sjump .end
.tuckeredOut
	opentext
	writetext JackyTiredText
	waitbutton
	closetext
	; fallthrough
.end
	end

.NoRoomForGoldLeaf:
	writetext JackyNoRoomForGoldLeaf
	closetext
	end

JackyWelcomeText:
	text "I am SHINJUKU"
	line "JACKY!"

	para "I know everything"
	line "about the world"
	cont "of #MON!"
	
	para "Hm? You think you"
	line "can take me?"
	done

JackyYes:
	text "Let's see if you"
	line "can walk the"
	cont "walk! Come on!"
	done

JackyNo:
	text "Maybe another"
	line "time…"
	done

JackyLossText:
	text "I can't believe"
	line "I lost!"
	done

JackyAfterBattle:
	text "It was like you"
	line "were fighting in"
	cont "slow motion…"
	
	para "Ok! I will give"
	line "you a gift to"
	cont "help you on your"
	cont "quest!"
	done

JackyGift:
	text "There's a guy in"
	line "WEST CITY who"
	cont "loves these!"
	
	para "Go find him!"
	
	para "I look forward to"
	line "our next bout!"
	done

JackyNoRoomForGoldLeaf:
	text "Whoa, dude! You've"
	line "got some loaded"
	cont "pockets!"
	
	para "Go make room!"
	done

JackyPostBeat:
	text "Hey, it's you!"
	
	para "Wanna fight again?"
	line "I'm out of your"
	cont "league!"
	done

JackyTiredText:
	text "Chawwww!"
	
	para "I'm tuckered out!"
	line "I gotta take my"
	cont "#MON to the"
	cont "CENTER in SEPIA!"
	
	para "Gimme a day,"
	line "would ya?"
	done

JackyN64:
	jumptext JackyN64Text

JackyN64Text:
	text "It's a NINTENDO"
	line "64! The latest"
	cont "game console!"
	done

JackySNES:
	jumptext JackySNESText

JackySNESText:
	text "It's a SNES!"
	
	para "Aren't these old"
	line "now?"
	
	para "JACKY: Hey! The"
	line "games are still"
	cont "fun! You're on a"
	cont "GAME BOY!"
	done

JackyVirtualBoy:
	jumptext JackyVirtualBoyText

JackyVirtualBoyText:
	text "It's a VIRTUAL"
	line "BOY!"
	
	para "<PLAYER> looked"
	line "inside…"
	
	para "A plumber is" ; Mario's Tennis, arguably the best game on the system.
	line "playing tennis!" ; Ok, I guess Wario Land is better...
	
	para "Best not look" ; Safety is key, Kris!
	line "for too long…"
	done

JackyTVFightersDestiny:
	jumptext JackyTVFightersDestinyText

; Virtua Fighter 3 never made it to the N64, but Fighters Destiny is basically the same thing.
JackyTVFightersDestinyText:
	text "Some characters"
	line "are fighting in"
	cont "3D! Wow!"
	
	para "Isn't this too"
	line "realistic?"
	done

JackyTVStreetFighterII:
	jumptext JackyTVStreetFighterIIText

; Jacky was a big Virtua Fighter nerd, so I imagine he'd have two fighting games running at once.
JackyTVStreetFighterIIText:
	text "A man in a ban-"
	line "dana is fighting"
	cont "an American!"
	
	para "Fiery projectiles"
	line "and crazy kicks!"
	
	para "A true classic!"
	done

JackyMetalSlugPoster:
	jumptext JackyMetalSlugPosterText

JackyMetalSlugPosterText:
	text "It's a poster"
	line "advertising a"
	cont "game with huge"
	cont "tanks and guns!"
	done

JackyDDRPoster:
	jumptext JackyDDRPoster

JackyDDRPosterText:
	text "It's a poster"
	line "advertising a"
	cont "dancing game!"
	done

JackyPCStarcraft:
	jumptext JackyPCStarcraftText

JackyPCStarcraftText: ; Brood War hadn't long come out, and was really popular in Korea at least. They made the Zerg rush!
	text "There's an Eng-"
	line "lish game on the"
	cont "screen."
	
	para "Tons of little"
	line "creatures are"
	cont "attacking some-"
	cont "one's base!"
	done

JackyDND:
	jumptext JackyDNDText

JackyDNDText:
	text "It's a book for"
	line "a tabletop game."
	
	para "It's called…"
	
	para "MOUNTAINs and"
	line "CHARIZARDs?"
	done

SuperNerdAboutJacky:
	jumptextfaceplayer SuperNerdAboutJackyText

SuperNerdAboutJackyText:
	text "JACKY? He was in"
	line "CELADON a few"
	cont "years ago."
	
	para "He was voice act-"
	line "ing for the next"
	cont "big fighting"
	cont "game!" ; Shinjuku Jacky voice acted for Virtua Fighter 3!
	
	para "But he seems more"
	line "interested in a"
	cont "kid he fought."
	
	para "Weird, huh?"
	done

JackySuperNerd2:
	jumptextfaceplayer JackySuperNerd2Text

JackySuperNerd2Text:
	text "The VIRTUAL BOY"
	line "is so cool,"
	cont "right?"
	
	para "It'll catch on"
	line "eventually."
	done

JackySuperNerd3:
	jumptextfaceplayer JackySuperNerd3Text

JackySuperNerd3Text:
	text "JACKY still has"
	line "that old SNES."
	
	para "The games were"
	line "awesome, though."
	cont "I totally get it!"
	done

JackySuperNerd4:
	jumptextfaceplayer JackySuperNerd4Text

JackySuperNerd4Text: ; A legitimate talking point at the time, before console upgrades became common.
	text "I don't get it."
	line "Why do we need"
	cont "to buy a new"
	cont "game console?"
	
	para "The SNES was"
	line "fine. I want to"
	cont "keep playing"
	cont "my old games,"
	cont "but they're not"
	cont "compatible."
	done

JackysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_50, 2
	warp_event  3,  7, ROUTE_50, 2

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, JackyN64
	bg_event  2,  2, BGEVENT_READ, JackySNES
	bg_event  5,  1, BGEVENT_READ, JackyVirtualBoy
	bg_event  3,  0, BGEVENT_READ, JackyMetalSlugPoster
	bg_event  1,  0, BGEVENT_READ, JackyDDRPoster
	bg_event  4,  1, BGEVENT_READ, JackyPCStarcraft
	bg_event  0,  1, BGEVENT_READ, JackyTVFightersDestiny
	bg_event  2,  1, BGEVENT_READ, JackyTVStreetFighterII
	bg_event  5,  6, BGEVENT_READ, JackyDND

	def_object_events
	object_event  3,  4, SPRITE_BANCHOMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, JackysHouseJackyScript, -1 ; He has the Banchoman sprite for now, but this could absolutely change!
	object_event  7,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SuperNerdAboutJacky, -1
	object_event  7,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JackySuperNerd2, -1
	object_event  5,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JackySuperNerd3, -1
	object_event  4,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JackySuperNerd4, -1

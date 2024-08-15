; Jessie and Miyamoto's rooms.
; This ports over a lot of stuff from the first movie's radio drama.
; Given Jessie is canon - KEP was a Yellow hack, it makes sense to include.
; It also gives this mansion far more purpose.

; Translation source: http://www.rigelatin.net/copycat/saga/origin/dramaep1.php

	object_const_def

HauntedHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

; At some point this'll be a boss but I'm a bit tired.
; The idea is you defeat it and it gives you something to progress.
HauntedHouse2FGengarDoll:
	jumptext HauntedHouse2FGengarDollText

HauntedHouse2FGengarDollText:
	text "It's a GENGAR DOLL!"
	
	para "It stares daggers"
	line "into your eyes…"
	
	para "Too scary!"
	done

HauntedHouse2FTVScript: ; this will false trigger the rotom fan
	jumptext HauntedHouse2FTVText ; in actuality, I consider this to be miyamoto's leisure time!

HauntedHouse2FTVText:
	text "It's a dusty old"
	line "TV."
	done

HauntedHouse2FBed1Script:
	jumptext HauntedHouse2FBed1Text

HauntedHouse2FBed1Text:
	text "This bed hasn't"
	line "been slept in"
	cont "for a long time."
	done

HauntedHouse2FBed2Script:
	jumptext HauntedHouse2FBed2Text

HauntedHouse2FBed2Text:
	text "This bed hasn't"
	line "been slept in"
	cont "for a long time."
	
	para "Under the matt-"
	line "ress…"
	
	para "Ew! Bed bugs!" ; One bed will note this.
	done

; Miyamoto's diary.
; This will prelude her failed mission to capture Mew, referenced in KEP.
; After Miyamoto disappeared, Jessie went into a foster home.

; I conclude that Jessie lived a rich life initially, as in Holiday Hi-Jynx, she is shown to live in a very privileged household. This presumably took place before Miyamoto disappeared, as she is later shown to live a poverty-stricken life.

; I initially considered Madame Boss, but in KEP, Giovanni had the files.

; Smart, right?

HauntedHouseMiyamotoDiary:
	opentext
	writetext HauntedHouse2FBookPromptText
	waitbutton
	yesorno
	iffalse .end
	writetext HauntedHouse2FBookRead1Text
	waitbutton
	writetext HauntedHouse2FBookKeepGoingText
	waitbutton
	yesorno
	iffalse .end
	writetext HauntedHouse2FBookRead2Text
	waitbutton
	writetext HauntedHouse2FBookKeepGoingText
	waitbutton
	yesorno
	iffalse .end 
	writetext HauntedHouse2FBookRead3Text
	waitbutton
	; fallthrough
.end
	closetext
	end

HauntedHouse2FBookPromptText:
	text "It's a diary."
	line "Read it?"
	done

HauntedHouse2FBookKeepGoingText:
	text "Keep reading?"
	done

HauntedHouse2FBookRead1Text:
	text "5th Mar 1977"
	line "I've finally got"
	cont "permission to"
	cont "capture MEW."
	
	para "It lives in a far"
	line "off land. I mana-"
	cont "ged to record a"
	cont "tape and show the"
	cont "boss."
	
	para "She only cares"
	line "about money, but"
	cont "I just want to"
	cont "pay for my girl…"
	done

HauntedHouse2FBookRead2Text:
	text "18th Aug 1977"
	line "I caught a glimpse"
	cont "of MEW! It was at"
	cont "a famous harbour."
	
	para "I just barely mis-"
	line "sed it! I had the"
	cont "gas and all!" ; Gassing it seems like a good way to show brutality.
	
	para "Ugh!"
	
	para "The boss is right."
	line "She always said" ; Raise some eyebrows.
	cont "I'm too kind."
	done

HauntedHouse2FBookRead3Text:
	text "20th Dec 1977"
	line "This #MON is"
	cont "harder to catch"
	cont "than anticipated."
	
	para "Were my previous"
	line "encounters a mere"
	cont "fluke?"
	
	para "But! I came across"
	line "some useful info…"
	
	para "It seems to like"
	line "MT. SILVER." ; Miyamoto is said to have gone to the Andes. We'll change this to Mt. Silver. It also indirectly references that one creepypasta.
	
	para "…"
	
	para "I'll make sure"
	line "everyone knows."
	cont "My daughter is"
	cont "in safe hands."
	
	para "…"
	
	para "The rest of the"
	line "pages are blank."
	done

; Miyamoto recorded a tape for Madame Boss.
; This puts it in ad lib.
HauntedHouseMiyamotoRadio:
	opentext
	writetext HauntedHouseMiyamotoRadioPromptText
	waitbutton
	yesorno
	iffalse .end
	writetext HauntedHouseMiyamotoRadioText
	waitbutton
	cry EEVEE
	waitsfx
	cry MANKEY
	waitsfx
	cry BUTTERFREE
	waitsfx
	writetext HauntedHouseMiyamotoRadioTextCries
	waitbutton
	cry MEW
	waitsfx
	writetext HauntedHouseMiyamotoRadioTextWhatWasThat
	waitbutton
.end
	closetext
	end

HauntedHouseMiyamotoRadioPromptText:
	text "It's an old radio."
	
	para "…there's a tape"
	line "inside! Listen?"
	done

HauntedHouseMiyamotoRadioText:
	text "Crackle… crackle…"
	
	para "This is MIYAMOTO"
	line "speaking!"
	
	para "We have embarked"
	line "on FARAWAY ISLAND!" ; It's originally the South American jungle, but this was later made Faraway Island in Emerald. We'll make it this to prompt the player to look. This also makes Mr. Fuji's sign much more haunting.
	
	para "Here, we will find"
	line "and record the"
	cont "phantom #MON,"
	cont "MEW!"
	
	para "…"
	
	para "Country music is"
	line "playing…" ; Music native to Guyana
	
	para "…"
	done

HauntedHouseMiyamotoRadioTextCries:
	text "Now there's some"
	line "cries…"
	done
	
HauntedHouseMiyamotoRadioTextMyuu:
	text "Myuu!"
	done
	
HauntedHouseMiyamotoRadioTextWhatWasThat:
	text "Wait, what was"
	line "that?!"
	
	para "It cuts off there…"
	done
	
HauntedHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, HAUNTED_HOUSE_FOYER, 5
	warp_event  3,  7, HAUNTED_HOUSE_FOYER, 5
	warp_event 18,  7, HAUNTED_HOUSE_FOYER, 6
	warp_event 17,  7, HAUNTED_HOUSE_FOYER, 6

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, HauntedHouseMiyamotoDiary
	bg_event  5,  2, BGEVENT_READ, HauntedHouseMiyamotoDiary ; need 2 as it covers to spaces. lots of things here do, it's a bit inefficient.
	bg_event  3,  2, BGEVENT_READ, HauntedHouseMiyamotoRadio
	bg_event  2,  2, BGEVENT_READ, HauntedHouse2FTVScript
	bg_event  0,  5, BGEVENT_READ, HauntedHouse2FBed1Script
	bg_event  0,  4, BGEVENT_READ, HauntedHouse2FBed1Script
	bg_event 14,  5, BGEVENT_READ, HauntedHouse2FBed2Script
	bg_event 14,  4, BGEVENT_READ, HauntedHouse2FBed2Script

	def_object_events
	object_event 20,  4, SPRITE_OWGENGAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 2, HauntedHouse2FGengarDoll, -1

; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku
; https://www.youtube.com/watch?v=EyAHU12OKDI&t=1741s&ab_channel=Minamitoku

; There is much abridging of course, for the purposes of JEP's storyline.
; Some tweaks are made to be reminiscent of RBY, showing Blue taking after Oak.

	object_const_def
	const BLUELAB_BLUE
	const BLUELAB_CUBBURN
	const BLUELAB_PALSSIO
	const BLUELAB_CHIKORITA
	const BLUELAB_KEN
	const BLUELAB_OAK
	const BLUELAB_POKEDEX1
	const BLUELAB_POKEDEX2
	const BLUELAB_DAISY
	const BLUELAB_AIDE

BlueLab_MapScripts:
	def_scene_scripts
	scene_script EnterLabWithBlue, SCENE_ENTER_LAB_WITH_BLUE
	scene_script EnterStarterRoomWithBlue, SCENE_ENTER_STARTER_ROOM_WITH_BLUE
	scene_script BlueLabNoopScene, SCENE_BLUELAB_WHERE_GOING
	scene_script BlueLabNoopScene, SCENE_BLUELAB_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BlueLabSetup

BlueLabNoopScene:
	end

BlueLabSetup:
	checkevent EVENT_BRIEFED_BY_BLUE
	iffalse .skip
	moveobject BLUELAB_OAK, 6, 2
	moveobject BLUELAB_KEN, 23, 19
	disappear BLUELAB_POKEDEX2
.skip
	endcallback
	end

EnterLabWithBlue:
	applymovement BLUELAB_BLUE, BlueIllusion
	moveobject BLUELAB_BLUE, 5, 4
	applymovement PLAYER, EnterLabWithBlueMovement
	turnobject BLUELAB_BLUE, UP
	opentext
	writetext BlueIBroughtEm
	waitbutton
	closetext
	opentext
	writetext KenWowText
	waitbutton
	closetext
	opentext
	writetext OakAhYesIAmOak
	waitbutton
	closetext
.No1
	opentext
	writetext OakStoryAskText
	yesorno
	iffalse .discerningEye
	sjump .Yes1
.discerningEye
	opentext
	writetext OakDiscerningEye
	waitbutton
	closetext
	sjump .No1
.Yes1
	opentext
	writetext OakStoryText
	waitbutton
	closetext
	turnobject BLUELAB_KEN, RIGHT
	opentext
	writetext KenResponseText
	waitbutton
	closetext
	opentext
	writetext BlueTakeText
	waitbutton
	closetext
	opentext
	writetext OakThanksText
	waitbutton
	closetext
	applymovement BLUELAB_BLUE, KenBlueMovement
	applymovement BLUELAB_BLUE, BlueEnterStarterRoomMovement
	disappear BLUELAB_BLUE
	playsound SFX_ENTER_DOOR
	pause 10
	applymovement BLUELAB_KEN, KenBlueMovement
	applymovement BLUELAB_KEN, KenEnterStarterRoomMovement
	disappear BLUELAB_KEN
	playsound SFX_ENTER_DOOR
	pause 10
	applymovement PLAYER, EnterStarterRoomMovement1
	
	; So get this: GSC never actually moves you into a warp. You'll be bounced back.
	; Here, we use Lance's Room's method: An illusion of it actually happening.
	disappear PLAYER
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	pause 15
	warpfacing UP, BLUE_LAB, 20,  9
	
	moveobject BLUELAB_KEN, 19, 4
	setscene SCENE_ENTER_STARTER_ROOM_WITH_BLUE
	setevent EVENT_GONE_THROUGH_STARTER_DOOR
	end

EnterStarterRoomWithBlue:
	appear BLUELAB_KEN
;	moveobject BLUELAB_KEN, 19, 4
	appear BLUELAB_BLUE
	moveobject BLUELAB_BLUE, 20, 2
	applymovement PLAYER, EnterStarterRoomMovement2
	;turnobject BLUELAB_BLUE, DOWN ; It didn't work the other way, but this makes it kind of sick actually.
	opentext
	writetext BlueChooseText
	waitbutton
	closetext
	opentext
	writetext KenPickText
	waitbutton
	closetext
	applymovement BLUELAB_KEN, KenPickMovement1
	opentext
	writetext KenChikoritaText ; No one wants Chikorita, so...
	waitbutton
	closetext
	disappear BLUELAB_CHIKORITA
	opentext
	writetext KenReceivedChikoritaText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	applymovement BLUELAB_KEN, KenPickMovement2
	disappear BLUELAB_KEN
	playsound SFX_ENTER_DOOR
	pause 10
	opentext
	writetext BlueWeirdText
	waitbutton
	closetext
.goBack
	opentext
	writetext BlueProposalText
	yesorno
	iffalse .No
	sjump .Yes
.No
	opentext
	writetext BlueLabINeedYouText
	yesorno
	iffalse .goBack
.Yes
	opentext
	writetext BlueAcceptText
	waitbutton
	closetext
	setscene SCENE_BLUELAB_NOOP
	clearevent EVENT_GOT_POKEMON_FROM_BLUE ; Player is now trapped!
	end

BlueIllusion: ; Blue steps up, then gets directly moved to the right spot once he's off-screen.
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

EnterLabWithBlueMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

EnterStarterRoomMovement1:
	step RIGHT
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step_end

KenBlueMovement:
	step UP
	step UP
	step UP
	step_end

KenEnterStarterRoomMovement:
	step RIGHT
	step UP
	step_end

BlueEnterStarterRoomMovement:
	step LEFT
	step UP
	step_end

EnterStarterRoomMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

CubburnPokeBallScript:
	checkevent EVENT_GOT_POKEMON_FROM_BLUE
	iftrue LookAtBluePokeBallScript
	turnobject BLUELAB_BLUE, DOWN
	refreshscreen
	pokepic CUBBURN
	cry CUBBURN
	waitbutton
	closepokepic
	opentext
	writetext TakeCubburnText
	yesorno
	iffalse BlueDidntChooseStarterScript
	disappear BLUELAB_CUBBURN
	setevent EVENT_GOT_CUBBURN_FROM_BLUE
	writetext BlueChoseCubburnText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CUBBURN
	writetext BlueLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CUBBURN, 5
	closetext
	readvar VAR_FACING
	ifequal RIGHT, BlueAfterStarterScript
	applymovement PLAYER, AfterCubburnMovement
	sjump BlueAfterStarterScript

PalssioPokeBallScript:
	checkevent EVENT_GOT_POKEMON_FROM_BLUE
	iftrue LookAtBluePokeBallScript
	turnobject BLUELAB_BLUE, DOWN
	refreshscreen
	pokepic PALSSIO
	cry PALSSIO
	waitbutton
	closepokepic
	opentext
	writetext TakePalssioText
	yesorno
	iffalse BlueDidntChooseStarterScript
	disappear BLUELAB_PALSSIO
	setevent EVENT_GOT_PALSSIO_FROM_BLUE
	writetext BlueChosePalssioText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, PALSSIO
	writetext BlueLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PALSSIO, 5
	closetext
	readvar VAR_FACING
	ifequal RIGHT, BlueAfterStarterScript
	applymovement PLAYER, AfterPalssioMovement
	sjump BlueAfterStarterScript

BlueAfterStarterScript:
	opentext
	writetext BlueAfterStarterText
	waitbutton
	closetext
	addcellnum PHONE_BLUE
	opentext
	writetext GotBluesNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	moveobject BLUELAB_OAK, 6, 2
	setevent EVENT_BRIEFED_BY_BLUE
	setevent EVENT_GOT_POKEMON_FROM_BLUE
	end

BlueDidntChooseStarterScript:
	writetext BlueDidntChooseStarterText
	waitbutton
	closetext
	end

BlueLabReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

BlueChoseCubburnText:
	text "BLUE: This one"
	line "is fierce! I"
	cont "love it!"
	done

BlueChosePalssioText:
	text "BLUE: This one"
	line "is so smart!"
	para "A favourite of"
	line "mine for sure!"
	done

BlueDidntChooseStarterText:
	text "Think it over"
	line "carefully."
	
	para "This is really"
	line "important, after"
	cont "all."
	done

GotBluesNumberText:
	text "<PLAYER> got BLUE's"
	line "phone number."
	done

AfterCubburnMovement:
	step LEFT
	step LEFT
	turn_head UP
	step_end

AfterPalssioMovement:
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

TakeCubburnText:
	text "So! You want the"
	line "FIRE #MON,"
	cont "CUBBURN?"
	done

TakePalssioText:
	text "So! You want the"
	line "WATER #MON,"
	cont "PALSSIO?"
	done

LookAtBluePokeBallScript:
	opentext
	writetext BluePokeBallText
	waitbutton
	closetext
	end

BlueChikoritaPokeBallScript:
BluePokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.OAK."
	done

KenIfItIsntYouText:
	text "KEN: Haaah, what?"
	line "If it isn't"
	cont "<PLAYER>!"
	
	para "I thought it was"
	line "strange, so I"
	cont "came here."
	
	para "But nobody is"
	line "around!"
	done

BlueLabPC:
	jumptext BlueLabPCText

BlueLabPCText:
	text "There's some mail"
	line "here!"
	
	para "… … …"
	
	para "PROF.OAK!"
	line "Have you vanished?"
	
	para "The whole world is"
	line "worried!"
	
	para "That said…"
	
	para "I still haven't"
	line "been able to"
	cont "find that #MON"
	cont "you wanted to"
	cont "research."
	
	para "No clues, no"
	line "chances to catch"
	cont "it."
	
	para "Maybe it really"
	line "is a tall tale…"
	
	para "- A concerned"
	line "AIDE"
	done

BlueLabReport:
	jumptext BlueLabReportText

BlueLabReportText:
	text "Don't forget to"
	line "SAVE!"
	done

BlueLabPokedex:
	jumptext BlueLabPokedexText

BlueLabPokedexText:
	text "It's a #DEX!"
	line "It looks diff-"
	cont "erent to the"
	cont "ones in JOHTO!"
	done

BlueLabDoorLocked:
	jumptext BlueLabDoorLockedText

BlueLabDoorLockedText:
	text "The door is"
	line "locked."
	done

BlueLabWhereAreYouGoingText:
	text "BLUE: Whoa, hey,"
	line "you going some-"
	cont "where?"
	done
	
BlueLabINeedYouText:
	text "Look, I need you"
	line "to do this with"
	cont "me."
	
	para "These #MON are"
	line "super rare! You"
	cont "like those, right?"
	done

BlueIBroughtEm:
	text "BLUE: Hey! Gramps!"
	line "I brought 'em!"
	done

KenWowText:
	text "KEN: Whoa, it's"
	line "PROF.OAK!"
	
	para "I didn't expect"
	line "him to be a"
	cont "geez-- I mean,"
	cont "senior…"
	done

OakAhYesIAmOak:
	text "OAK: Hm? Ah, yes,"
	line "I am OAK!"
	
	para "So nice of you"
	line "to call me an"
	cont "old geezer!"
	
	para "Yes! I, PROF.OAK,"
	line "called you two"
	cont "here!"
	done

OakStoryAskText:
	text "Will you listen"
	line "to my story?"
	done

OakDiscerningEye:
	text "I suppose I am"
	line "not a good judge"
	cont "of character…"
	
	para "Hmm…"
	done

; Mostly translated from the SW97 dialogue, but adapted to KEP/JEP's AU.
OakStoryText:
	text "OAK: Right! A year" ; In the SW demo, this was technically correct. In modern GSC, it's set 3 years later, coinciding with the game's release schedule. Given the storyline, let's keep the original quote, naturally creating an inconsistency.
	line "ago, I gave two"
	cont "boys #MON so"
	cont "they could carry" ; This can surely be expressed in fewer lines...
	cont "out my dream of"
	cont "filling the"
	cont "#DEX!"
	
	para "That dream was"
	line "fulfilled! They"
	cont "pulled it off"
	cont "with aplomb!"
	
	para "They documented"
	line "all 190 #MON!" ; Adjusted for KEP. I accidentally made it the RG prototype numbers, but I actually like this.
	
	para "But…the world is"
	line "a big place! One"
	cont "after another,"
	cont "#MON have been"
	cont "discovered!"
	
	para "I moved to this"
	line "place, SILENT"
	cont "HILLS, to conti-"
	cont "nue my research!"
	
	para "I must see all"
	line "#MON up close!"
	cont "That is my policy!"
	
	para "… … …"
	
	para "As you can see,"
	line "my nephew is here" ; He does say this, yes.
	cont "to help, as are"
	cont "everyone else."
	
	para "But…we're short-"
	line "staffed."
	
	para "So! You two!"
	
	para "I need your help!"
	done

; Ken often words things like this.
; He seems impressionable and kind, so let's establish him like that.
KenResponseText:
	text "KEN: Oh, <PLAYER>!"
	line "This is super"
	cont "interesting!"
	done

BlueTakeText:
	text "BLUE: I'll take"
	line "them in. You need"
	cont "rest, gramps!"
	done
	
OakThanksText:
	text "OAK: Ah, thank"
	line "you!"
	done

BlueChooseText:
	text "BLUE: So here we"
	line "have 3 # BALLS!"
	
	para "Haha! They contain"
	line "#MON."
	
	para "I used to be a"
	line "rough and tumble"
	cont "sort of TRAINER,"
	cont "and even became"
	cont "CHAMPION!"
	
	para "But I was too"
	line "cocky for my own"
	cont "good. My old RIVAL"
	cont "set me straight."
	
	para "When picking these"
	line "3, please treat"
	cont "them with love"
	cont "and respect."
	
	para "KEN, care to pick"
	line "first?"
	done

KenPickText:
	text "Ah! I already"
	line "know which I want"
	cont "want to pick!"
	
	para "I'm so excited!"
	done

KenPickMovement1:
	step UP
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

KenChikoritaText:
	text "CHIKORITA!"
	line "It's so cute and"
	cont "cuddly!"
	
	para "Let's go on an"
	line "adventure!"
	
	para "I'll show CAL!"
	done

KenReceivedChikoritaText:
	text "KEN received"
	line "CHIKORITA!"
	done

KenPickMovement2:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

BlueWeirdText:
	text "BLUE: Such a"
	line "starry-eyed kid…"
	
	para "Well, champ…"
	
	para "You saw it too,"
	line "right?"
	
	para "That ain't gramps."
	
	para "No one believes"
	line "me! Not even"
	cont "DAISY! Gramps's"
	cont "research is top-"
	cont "notch, but this"
	cont "one hardly replies"
	cont "to e-mails!"
	
	para "#MON TALK is"
	line "down too, so the"
	cont "news is catching"
	cont "on!"
	done

BlueProposalText:
	text "So here's the deal."
	line "I want you to find"
	cont "gramps."
	
	para "In return, I'll"
	line "give you one of"
	cont "these #MON."
	
	para "Capische?"
	done

BlueAcceptText:
	text "I'm counting on"
	line "you, <PLAYER>!"
	done

BlueAfterStarterText:
	text "BLUE: Right place"
	line "at the right time,"
	cont "huh, <PLAYER>?"
	
	para "I don't have any"
	line "proof that gramps"
	cont "has disappeared,"
	cont "only a hunch."
	
	para "I don't even know"
	line "where he could"
	cont "have gone!"
	
	para "The NIHON LEAGUE"
	line "is wicked tough,"
	cont "so why not start"
	cont "there?"
	
	para "The first GYM is"
	line "in OLD CITY."
	
	para "Oh, say, do you"
	line "want my #GEAR"
	cont "number? I'll call"
	cont "you if anything"
	cont "comes up."
	done

BlueLabWhereAreYouGoingMovement:
	step UP
	step_end

BlueLabWhereGoing:
	checkevent EVENT_GOT_POKEMON_FROM_BLUE
	iftrue .end
	opentext
	writetext BlueLabWhereGoing
	waitbutton
	closetext
	applymovement PLAYER, BlueLabWhereAreYouGoingMovement
	opentext
	writetext BlueLabINeedYouText
	waitbutton
	closetext
	setscene SCENE_BLUELAB_NOOP
.end
	end

OakRegularScript:
	jumptextfaceplayer OakRegularText

OakRegularText:
	text "OAK: #MON the"
	line "world over wait"
	cont "for you…"
	
	para "What was your"
	line "name again?"
	
	para "<PLAYER>?"
	
	para "I'll remember it"
	line "for you."
	done

KenRegularScript:
	jumptextfaceplayer KenRegularText

KenRegularText:
	text "?"
	done

; To be expanded on later, a la Elm.
ProfBlueScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEMON_FROM_BLUE
	iftrue .skip
	writetext BlueDidntChooseStarterText
	sjump .omniSkip
.skip
	writetext BlueRegularText
.omniSkip
	waitbutton
	closetext
	end
	
BlueRegularText:
	text "Hey, <PLAYER>!"
	
	para "I'll let you know"
	line "If anything comes"
	cont "up."
	done

BlueLabBookshelf:
	jumpstd DifficultBookshelfScript

BlueLabDaisyScript:
	jumptextfaceplayer BlueLabDaisyText

BlueLabDaisyText:
	text "DAISY: Yup, this"
	line "is my day job."
	
	para "At the same time,"
	line "seeing BLUE work"
	cont "so hard warms my"
	cont "heart!"
	
	para "But I wonder if"
	line "the stress gets"
	cont "to him?"
	done

BlueLabAideScript:
	jumptextfaceplayer BlueLabAideText

BlueLabAideText:
	text "I'm glad OAK fina-"
	line "lly sees the value"
	cont "in my research!"
	
	para "Legendary #-"
	line "MON need more"
	cont "study!"
	done

BlueLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 19, SILENT_HILLS, 3
	warp_event  4, 19, SILENT_HILLS, 4
	warp_event  4,  0, BLUE_LAB, 4
	warp_event 19,  9, BLUE_LAB, 3
	warp_event 20,  9, BLUE_LAB, 3

	def_coord_events
	coord_event  4, 19, SCENE_ENTER_LAB_WITH_BLUE, EnterLabWithBlue
	coord_event 20,  9, SCENE_BLUELAB_WHERE_GOING, BlueLabWhereGoing
	coord_event 19,  9, SCENE_BLUELAB_WHERE_GOING, BlueLabWhereGoing

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, BlueLabPC
	bg_event  2,  0, BGEVENT_READ, BlueLabReport
	bg_event 22,  0, BGEVENT_READ, BlueLabReport
	bg_event  7,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  6,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  5,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  2,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  1,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  0,  9, BGEVENT_READ, BlueLabBookshelf
	bg_event  7, 13, BGEVENT_READ, BlueLabBookshelf
	bg_event  6, 13, BGEVENT_READ, BlueLabBookshelf
	bg_event 19,  1, BGEVENT_READ, BlueLabBookshelf
	bg_event 18,  1, BGEVENT_READ, BlueLabBookshelf
	bg_event 17,  1, BGEVENT_READ, BlueLabBookshelf
	bg_event 16,  1, BGEVENT_READ, BlueLabBookshelf
	bg_event  5, 13, BGEVENT_READ, BlueLabBookshelf
	bg_event  2, 13, BGEVENT_READ, BlueLabBookshelf
	bg_event  1, 13, BGEVENT_READ, BlueLabBookshelf
	bg_event  0, 13, BGEVENT_READ, BlueLabBookshelf

	def_object_events
	object_event  4,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfBlueScript, -1
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CubburnPokeBallScript, EVENT_CUBBURN_POKEBALL_IN_BLUES_LAB
	object_event 23,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalssioPokeBallScript, EVENT_PALSSIO_POKEBALL_IN_BLUES_LAB
	object_event 21,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueChikoritaPokeBallScript, -1
	object_event  3,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KenRegularScript, -1
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OakRegularScript, -1
	object_event  1,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueLabPokedex, -1
	object_event  0,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueLabPokedex, -1
	object_event  6, 14, SPRITE_DAISY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueLabDaisyScript, -1
	object_event  1, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueLabAideScript, -1

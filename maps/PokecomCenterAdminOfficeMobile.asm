	object_const_def
	const POKECOMCENTERADMINOFFICEMOBILE_SCIENTIST1
	const POKECOMCENTERADMINOFFICEMOBILE_SCIENTIST2
	const POKECOMCENTERADMINOFFICEMOBILE_SCIENTIST3
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_LASS1
	const GOLDENRODPOKECENTER1F_POKEFAN_F
	const GOLDENRODPOKECENTER1F_YOUNGSTER
	const GOLDENRODPOKECENTER1F_LASS2
	const GOLDENRODPOKECENTER1F_GAMEBOYKID1
	const GOLDENRODPOKECENTER1F_GAMEBOYKID2
	const GOLDENRODPOKECENTER1F_COOLTRAINERM

PokecomCenterAdminOfficeMobile_MapScripts:
	def_scene_scripts
	scene_const SCENE_GOLDENRODPOKECENTER1F_GS_BALL

	def_callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecenter1F_GSBallSceneLeft:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, 6, 10
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1F_GSBallSceneRight:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, 7, 10
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecenter1FPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecenter1FPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

; Egg Ticket stuff.
; Martha ought to restore this..?
GoldenrodPokecomCenterEggTicketText: ; unreferenced
	text "Oh!"

	para "I see you have an"
	line "EGG TICKET!"

	para "It's a coupon that"
	line "special people can"

	para "redeem for a"
	line "special #MON!"
	done

GoldenrodPokecomCenterOddEggBriefingText: ; unreferenced
	text "Let me give you a"
	line "quick briefing."

	para "Trades held at the"
	line "TRADE CORNER are"

	para "between two"
	line "trainers who don't"

	para "know each other's"
	line "identity."

	para "As a result, it"
	line "may take time."

	para "However, an ODD"
	line "EGG is available"
	cont "just for you."

	para "It will be sent to"
	line "you right away."

	para "Please choose one"
	line "of the rooms in"

	para "the CENTER."
	line "An ODD EGG will be"

	para "sent from the"
	line "chosen room."
	done

GoldenrodPokecomCenterHereIsYourOddEggText: ; unreferenced
	text "Thank you for"
	line "waiting."

	para "We received your"
	line "ODD EGG."

	para "Here it is!"

	para "Please raise it"
	line "with loving care."
	done

; The News feature obviously can't work in our build, as we won't use the Mobile Adapter.
; What we can do is give an idea of what it was like.
; So here, we're referencing the 2000 National Tournament. 
; Sato Yuki won using Heracross, Zapdos, and Kangaskhan.
; A video used to be here (https://www.youtube.com/watch?v=fhG1sa6KtNw) but it's disappeared...
; But Gold recounts it here http://pokemon.s20.xrea.com/historia-single.html.
GoldenrodPokecomCenterNewsMachineScript:
	opentext
	writetext GoldenrodPokecomCenterNewsMachineText
	waitbutton
	closetext
	end

GoldenrodPokecomCenterNewsMachineText:
	text "It's a #MON"
	line "NEWS MACHINE."
	
	para "Wow! HERACROSS"
	line "just keeps going!"
	
	para "…"
	
	para "…"
	
	para "That's it! The"
	line "crowd goes wild!"
	
	para "Sato Yuki wins"
	line "the 4th #MON"
	cont "LEAGUE National"
	cont "Tournament!"
	
	done

GoldenrodPokecomCenterPerson1Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson1Text

GoldenrodPokecomCenterPerson1Text:
	text "Whoa, this #MON"
	line "CENTER is huge."

	para "They just built"
	line "this place. They"

	para "installed lots of"
	line "new machines too."
	done

GoldenrodPokecomCenterPerson2Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson2Text

GoldenrodPokecomCenterPerson2Text:
	text "I thought up a fun"
	line "new thing for the"
	cont "TRADE CORNER!"

	para "I make a PIDGEY"
	line "hold MAIL, then"

	para "put it up for"
	line "trade for another"
	cont "one!"

	para "If everyone did"
	line "that, MAIL could"

	para "be traded with all"
	line "sorts of people!"

	para "I call it PIDGEY"
	line "MAIL!"

	para "If it becomes"
	line "popular, I might"

	para "make lots of new"
	line "friends!"
	done

GoldenrodPokecomCenterPerson3Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson3Text
	
GoldenrodPokecomCenterPerson3Text:
	text "You can trade #"
	line "MON with foreigners"
	cont "here."

	para "It seems they want"
	line "to connect worldwide,"
	cont "though!"
	done

GoldenrodPokecomCenterPerson4Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson4Text
	
GoldenrodPokecomCenterPerson4Text:
	text "Some girl I don't"
	line "know sent me her"
	cont "WOOPER, but its"
	cont "type is different!"
	
	para "You should trade"
	line "for a #MON that"
	cont "you want."
	done

GoldenrodPokecomCenterPerson5Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson5Text
	
GoldenrodPokecomCenterPerson5Text:
	text "I received a"
	line "female HOPPIP, but"
	cont "its named STANLEY!"

	para "That's my dad's"
	line "name!"
	done

GoldenrodPokecomCenterPerson6Script:
	jumptextfaceplayer GoldenrodPokecomCenterPerson6Text

GoldenrodPokecomCenterPerson6Text:
	text "I came over here"
	line "when I got word"

	para "that GOLDENROD's"
	line "#MON CENTER has"

	para "new machines that"
	line "no one's ever seen"
	cont "before."

	para "But it looks like"
	line "they're still busy"

	para "with all their"
	line "preparations…"
	done

GoldenrodPokecenter1FLassText:
	text "A higher level"
	line "#MON doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#MON that is"
	line "the toughest."
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS BALL has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText:
	text "Please do come"
	line "again!"
	done

GoldenrodPokecomCenterSignScript:
	opentext
	writetext GoldenrodPokecomCenterSignText
	waitbutton
	closetext
	end
	
GoldenrodPokecomCenterSignText:
	text "#COM CENTER"
	line "1F INFORMATION"

	para "Left:"
	line "ADMINISTRATION"

	para "Center:"
	line "TRADE CORNER"

	para "Right:"
	line "#MON NEWS"
	done

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
	text "Oh my, your pack"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named EON MAIL?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
	text "Give away an EON"
	line "MAIL?"
	done

GoldenrodPokecenter1FPokefanFThisIsForYouText:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText:
	text "My daughter will"
	line "be delighted!"
	done

GoldenrodPokecenter1FPokefanFTooBadText:
	text "Oh? You don't have"
	line "one? Too bad."
	done

GoldenrodPokecenter1FPokefanFAnotherTimeThenText:
	text "Oh… Well, another"
	line "time, then."
	done

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
	text "<PLAYER> gave away"
	line "the EON MAIL."
	done

PokecomCenterAdminOfficeMobileScientist1Script:
	jumptextfaceplayer PokecomCenterAdminOfficeMobileScientist1Text

PokecomCenterAdminOfficeMobileScientist2Script:
	jumptextfaceplayer PokecomCenterAdminOfficeMobileScientist2Text

PokecomCenterAdminOfficeMobileScientist3Script:
	jumptextfaceplayer PokecomCenterAdminOfficeMobileScientist3Text

PokecomCenterAdminOfficeMobileComputer1:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer1Text
	waitbutton
.loop:
	reloadmappart
	loadmenu .Computer1MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PokeComClub
	ifequal 2, .MobileCenter
	sjump .Quit

.PokeComClub:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer1Text_PokeComClub
	waitbutton
	sjump .loop

.MobileCenter:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer1Text_MobileCenter
	waitbutton
	sjump .loop

.Quit:
	closetext
	end

.Computer1MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "#COM CLUB@" ; # COM CLUB
	db "MOBILE CENTER@" ; MOBILE CENTER
	db "CANCEL@" ; QUIT

PokecomCenterAdminOfficeMobileComputer2:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer2Text
	waitbutton
.loop:
	reloadmappart
	loadmenu .Computer2MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .UsePhone
	ifequal 2, .DontUsePhone
	sjump .Quit

.UsePhone:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer2Text_UsePhone
	waitbutton
	sjump .loop

.DontUsePhone:
	opentext
	writetext PokecomCenterAdminOfficeMobileComputer2Text_DontUsePhone
	waitbutton
	sjump .loop

.Quit:
	closetext
	end

.Computer2MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "USE PHONE@" ; Use phone
	db "DON'T USE PHONE@" ; Don't use phone
	db "CANCEL@" ; QUIT

PokecomCenterAdminOfficeMobileComputer3:
	jumptext PokecomCenterAdminOfficeMobileComputer3Text

PokecomCenterAdminOfficeMobileScientist1Text:
	text "#COM CENTER and"
	line "MOBILE CENTER were"

	para "built to satisfy"
	line "demands for trades"

	para "and battles with"
	line "trainers far away"

	para "and with total"
	line "strangers."
	done

PokecomCenterAdminOfficeMobileScientist2Text:
	text "When you linked"
	line "with someone by"

	para "mobile phone for"
	line "the first time,"

	para "weren't you"
	line "impressed?"

	para "When my first try"
	line "worked, I was so"

	para "impressed that I"
	line "got the shakes!"
	done

PokecomCenterAdminOfficeMobileScientist3Text:
	text "They were able to"
	line "build this huge"

	para "facility thanks to"
	line "advances in wire-"
	cont "less technology."
	done

PokecomCenterAdminOfficeMobileComputer1Text:
	text "It's a notice"
	line "about where MOBILE"

	para "ADAPTERS are to be"
	line "used…"
	done

PokecomCenterAdminOfficeMobileComputer1Text_PokeComClub:
	text "There's a #COM"
	line "CLUB upstairs in"

	para "any #MON"
	line "CENTER."

	para "There, you can"
	line "battle or trade"

	para "with a friend far"
	line "away by using a"
	cont "MOBILE ADAPTER."

	para "To link up, your"
	line "friend must have"

	para "the same kind of"
	line "MOBILE ADAPTER as"
	cont "you."
	done

PokecomCenterAdminOfficeMobileComputer1Text_MobileCenter:
	text "To use the TRADE"
	line "CORNER or read the"

	para "#MON NEWS, you"
	line "need to phone the"
	cont "MOBILE CENTER."

	para "You must register"
	line "at the MOBILE"

	para "CENTER before"
	line "connecting there."
	done

PokecomCenterAdminOfficeMobileComputer2Text:
	text "It's a notice"
	line "about using the"
	cont "phone…"
	done

PokecomCenterAdminOfficeMobileComputer2Text_UsePhone:
	text "Please ensure that"
	line "your phone and"

	para "MOBILE ADAPTER are"
	line "properly linked."

	para "Please make sure"
	line "the wireless phone"
	cont "signal is strong."

	para "Don't touch or"
	line "hang up the phone"
	cont "while linking."
	done

PokecomCenterAdminOfficeMobileComputer2Text_DontUsePhone:
	text "If the server is"
	line "busy, it may not"

	para "be possible to log"
	line "on."

	para "If so, please call"
	line "back later."

	para "If you are unable"
	line "to log on or don't"

	para "understand the"
	line "error messages,"

	para "call a support"
	line "center or read the"
	cont "instructions."
	done

PokecomCenterAdminOfficeMobileComputer3Text:
	text "The ADMINISTRATION"
	line "OFFICE received an"
	cont "e-mail. It says…"

	para "<……> <……> <……>"

	para "To the #COM"
	line "CENTER staff…"

	para "Wireless communi-"
	line "cation has enabled"

	para "#MON trainers"
	line "to interact across"

	para "the nation. Let's"
	line "keep working for"

	para "the day when all"
	line "the trainers in"

	para "the world can link"
	line "without barriers!"

	para "<……> <……> <……>"
	done

PokecomCenterAdminOfficeMobile_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 31, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 5
	warp_event  1, 31, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 5
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15
	warp_event  0, 15, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0,  6, POKECENTER_2F, 1

	def_coord_events
	coord_event  6, 15, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneLeft
	coord_event  7, 15, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneRight

	def_bg_events
	bg_event  6, 26, BGEVENT_UP, PokecomCenterAdminOfficeMobileComputer1
	bg_event  6, 28, BGEVENT_UP, PokecomCenterAdminOfficeMobileComputer2
	bg_event  3, 26, BGEVENT_UP, PokecomCenterAdminOfficeMobileComputer3
	bg_event 19,  8, BGEVENT_UP, GoldenrodPokecomCenterNewsMachineScript
	bg_event  2,  9, BG_EVENT_UP, GoldenrodPokecomCenterSignScript

	def_object_events
	object_event  4, 28, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileScientist1Script, -1
	object_event  7, 27, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileScientist2Script, -1
	object_event  7, 29, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileScientist3Script, -1
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3, 12, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event 11, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
	object_event 15, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPerson1Script, -1
	object_event 13,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPerson2Script, -1
	object_event 18, 13, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPerson4Script, -1
	object_event 19, 13, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPerson5Script, -1
	object_event 22,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPerson6Script, -1

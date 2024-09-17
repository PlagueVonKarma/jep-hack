	object_const_def
	const LAVENDERCRYPT_DOKUROAR1
	const LAVENDERCRYPT_DOKUROAR2

LavenderCryptDokuroarsRoom_MapScripts:
	def_scene_scripts
	scene_script LavenderCryptNoopScene1, SCENE_CRYPT_NOOP
	scene_script LavenderCryptNoopScene2, SCENE_DOKUROAR_ATTACKS

	def_callbacks
	callback MAPCALLBACK_OBJECTS, LavenderCryptDokuroarCallback

LavenderCryptNoopScene1:
	end

LavenderCryptNoopScene2:
	end

LavenderCryptDokuroarCallback:
	checkevent EVENT_FOUGHT_DOKUROAR
	iftrue .NoAppear
	sjump .Appear

.NoAppear:
	disappear LAVENDERCRYPT_DOKUROAR1
	disappear LAVENDERCRYPT_DOKUROAR2
	endcallback

.Appear:
	appear LAVENDERCRYPT_DOKUROAR1
	endcallback

DokuroarTalkScript:
	opentext
	writetext LavenderCryptDokuroarTalk
	yesorno
	iffalse .Refused
	writetext LavenderCryptDokuroarYesText
	waitbutton
	closetext
	disappear LAVENDERCRYPT_DOKUROAR1
	setscene SCENE_DOKUROAR_ATTACKS
	end

.Refused:
	writetext LavenderCryptDokuroarNopeText
	waitbutton
	closetext
	end

DokuroarTalkScript2:
	opentext
	writetext LavenderCryptDokuroarNopeText
	waitbutton
	closetext
	end

DokuroarAttackScript:
	setscene SCENE_CRYPT_NOOP
	special FadeOutMusic
	opentext
	writetext DokuroarLaughText
	cry DOKUROAR
	pause 15
	closetext
	applymovement LAVENDERCRYPT_DOKUROAR2, DokuroarJumpscare
	pause 12
	applymovement LAVENDERCRYPT_DOKUROAR2, DokuroarJumpscare
	pause 12
	applymovement LAVENDERCRYPT_DOKUROAR2, DokuroarJumpscare
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	opentext
	writetext DokuroarFightText
	cry DOKUROAR
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon DOKUROAR, 60
	startbattle
	disappear LAVENDERCRYPT_DOKUROAR2
	setevent EVENT_FOUGHT_DOKUROAR
	reloadmapafterbattle
	end

DokuroarJumpscare:
	big_step DOWN
	step_end

LavenderCryptDokuroarTalk:
	text "Looks like a huge"
	line "#MON skeleton."

	para "Reach out and"
	line "touch it?"
	done

LavenderCryptDokuroarYesText:
	text "<PLAYER> tapped"
	line "the skeleton."

	para "Nothing happened."

	para "<PLAYER> tapped"
	line "the skeleton a"
	cont "second time."

	para "..."

	para "Nothing happened."

	done

LavenderCryptDokuroarNopeText:
	text "Better leave it"
	line "alone..."
	done

DokuroarLaughText:
	text "Kekekek..."
	done

DokuroarFightText:
	text "Kekekek..."
	line "KEKEKEK...!!!"
	done

LavenderCryptDokuroarsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, LAVENDER_CRYPT_SET_3, 2 ; Entrance
	warp_event  7, 14, LAVENDER_CRYPT, 5 ; Exit

	def_coord_events
	coord_event  6, 11, SCENE_DOKUROAR_ATTACKS, DokuroarAttackScript

	def_bg_events

	def_object_events
	object_event  6,  7, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, DokuroarTalkScript, EVENT_CRYPT_DOKUROAR_1
	object_event  6,  7, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, DokuroarTalkScript2, EVENT_CRYPT_DOKUROAR_2

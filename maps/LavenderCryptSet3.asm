	object_const_def

LavenderCryptSet3_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerAre: ; top left
	trainer CHANNELER, ARE, EVENT_BEAT_CHANNELER_ARE, ChannelerAreSeenText, ChannelerAreBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerAreAfterBattleText
	waitbutton
	closetext
	end

ChannelerAreSeenText:
	text "Ku… ku… ku…"
	done

ChannelerAreBeatenText:
	text "Ah!"
	done

ChannelerAreAfterBattleText:
	text "Keeeheheheh!"
	line "Be cursed,"
	cont "mortal!"
	
	para "Just kidding."
	line "That GHOST"
	cont "went right."
	done

TrainerChannelerJanae: ; right
	trainer CHANNELER, JANAE, EVENT_BEAT_CHANNELER_JANAE, ChannelerJanaeSeenText, ChannelerAmandaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerJanaeAfterBattleText
	waitbutton
	closetext
	end

ChannelerJanaeSeenText:
	text "Ngh…"
	
	para "Come with me!"
	done

ChannelerJanaeBeatenText:
	text "Come! Now!"
	
	para "…huh?"
	done

ChannelerJanaeAfterBattleText:
	text "What was that?"
	
	para "Um…I don't know"
	line "where it went…"
	done

; spare, previous revision
;ChannelerTashaSeenText:
;	text "Kyaah! Be cursed"
;	line "with me, child!"
;	done

;ChannelerTashaBeatenText:
;	text "Something fell"
;	line "out!" ; RBY reference
;	done

;ChannelerTashaAfterBattleText:
;	text "Eek! Eeeeek!"
	
;	para "I don't know!"
	
;	para "I looked over"
;	line "some big hole"
;	cont "and--"
	
;	para "Aghhh! I don't"
;	line "want to remember!"
;	done

TrainerChannelerTammy: ; right
	trainer CHANNELER, TAMMY, EVENT_BEAT_CHANNELER_TAMMY, ChannelerTammySeenText, ChannelerTammyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerTammyAfterBattleText
	waitbutton
	closetext
	end

ChannelerTammySeenText:
	text "Kyaah! Be cursed"
	line "with me, child!"
	done

ChannelerTammyBeatenText:
	text "Something fell"
	line "out!" ; RBY reference
	done

ChannelerTammyAfterBattleText:
	text "Eek! Eeeeek!"
	
	para "I don't know!"
	
	para "I looked over"
	line "some big hole"
	cont "and--"
	
	para "Aghhh! I don't"
	line "want to remember!"
	done

LavenderCryptSet3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, LAVENDER_CRYPT, 4 ; Entrance
	warp_event  7, 14, LAVENDER_CRYPT_DOKUROARS_ROOM, 1 ; To Dokuroar
	; Correct Path
	warp_event 22,  3, LAVENDER_CRYPT_SET_2, 3 ; Right Route
	warp_event 19, 10, LAVENDER_CRYPT_SET_2, 4 ; Right Route
	warp_event  6, 17, LAVENDER_CRYPT_SET_2, 5 ; END
	warp_event  8,  4, LAVENDER_CRYPT_SET_2, 9 ; Left Route
	
	; Incorrect Path
	warp_event  7,  6, LAVENDER_CRYPT_SET_1, 10
	warp_event  2,  4, LAVENDER_CRYPT_SET_2, 13
	warp_event  8,  7, LAVENDER_CRYPT_SET_1, 13
	warp_event  8,  8, LAVENDER_CRYPT_SET_1, 14
	warp_event  5,  2, LAVENDER_CRYPT_SET_2, 24
	warp_event 18,  7, LAVENDER_CRYPT_SET_1, 17
	warp_event 18, 16, LAVENDER_CRYPT_SET_1, 20
	warp_event 18,  2, LAVENDER_CRYPT_SET_1, 21
	warp_event 21, 14, LAVENDER_CRYPT_SET_2, 27
	warp_event 22,  6, LAVENDER_CRYPT_SET_3, 17
	warp_event  1,  8, LAVENDER_CRYPT_SET_3, 16
	warp_event 19, 14, LAVENDER_CRYPT_SET_1, 22
	warp_event 19, 15, LAVENDER_CRYPT_SET_1, 23
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 24
	warp_event 21, 11, LAVENDER_CRYPT_SET_2, 28
	warp_event 21, 12, LAVENDER_CRYPT_SET_2, 29
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerAre, -1
	object_event 18, 12, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 3, TrainerChannelerJanae, -1
	object_event 22, 18, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 4, TrainerChannelerTammy, -1

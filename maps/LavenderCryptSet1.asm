	object_const_def

LavenderCryptSet1_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerGenmei: ; top left
	trainer CHANNELER, GENMEI, EVENT_BEAT_CHANNELER_GENMEI, ChannelerGenmeiSeenText, ChannelerReimuBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerGenmeiAfterBattleText
	waitbutton
	closetext
	end

ChannelerGenmeiSeenText:
	text "Ke… ke…"
	line "Ke… ke…"
	done

ChannelerGenmeiBeatenText:
	text "Kwah!"
	done

ChannelerGenmeiAfterBattleText:
	text "Was that a GHOST?"
	
	para "GHOST? Ah…"
	
	para "I saw something"
	line "go in the left"
	cont "hole!"
	done

TrainerChannelerAmanda: ; top right
	trainer CHANNELER, AMANDA, EVENT_BEAT_CHANNELER_AMANDA, ChannelerAmandaSeenText, ChannelerAmandaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerAmandaAfterBattleText
	waitbutton
	closetext
	end

ChannelerAmandaSeenText:
	text "Ngh… Kwaaah!"
	done

ChannelerAmandaBeatenText:
	text "You saved me!"
	done

ChannelerAmandaAfterBattleText:
	text "Bwaaah! That was"
	line "too scary!"
	
	para "It went left!"
	line "Or was it down…?" ; They won't always be reliable.
	done

TrainerChannelerLaurel: ; bottom left
	trainer CHANNELER, LAUREL, EVENT_BEAT_CHANNELER_LAUREL, ChannelerLaurelSeenText, ChannelerLaurelBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerLaurelAfterBattleText
	waitbutton
	closetext
	end

ChannelerLaurelSeenText:
	text "Kuh! Kuh! Fresh"
	line "meat!"
	done

ChannelerLaurelBeatenText:
	text "Eeyowch!"
	done

ChannelerLaurelAfterBattleText:
	text "What was I saying?"
	line "Such nonsense!" 
	
	para "That cur went…"
	line "err…south!"
	done

TrainerChannelerTasha: ; bottom right
	trainer CHANNELER, TASHA, EVENT_BEAT_CHANNELER_TASHA, ChannelerTashaSeenText, ChannelerTashaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerTashaAfterBattleText
	waitbutton
	closetext
	end

; This Channeler is possessed by a Stromen.
; Thus, I want her to be more aggressive than usual.
ChannelerTashaSeenText:
	text "Grrrr! I hate"
	line "you! I hate you!"
	
	para "Let the horror"
	line "end!"
	done

ChannelerTashaBeatenText:
	text "Huh? Who are you?"
	done

ChannelerTashaAfterBattleText:
	text "I was overcome"
	line "with such emotion…"
	
	para "I pity that GHOST."
	
	para "It retreated to"
	line "the centre."
	done

LavenderCryptSet1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  6, LAVENDER_CRYPT, 2 ; Entrance
	; Within-Map Warps
	warp_event  4,  3, LAVENDER_CRYPT_SET_1, 3
	warp_event  6, 13, LAVENDER_CRYPT_SET_1, 2
	warp_event  7,  4, LAVENDER_CRYPT_SET_1, 5
	warp_event 22,  4, LAVENDER_CRYPT_SET_1, 4
	warp_event 20,  2, LAVENDER_CRYPT_SET_1, 7
	warp_event  1,  5, LAVENDER_CRYPT_SET_1, 6
	warp_event 17,  4, LAVENDER_CRYPT_SET_1, 10
	warp_event 17,  5, LAVENDER_CRYPT_SET_1, 11
	warp_event  1, 12, LAVENDER_CRYPT_SET_1, 8
	warp_event  1, 13, LAVENDER_CRYPT_SET_1, 9
	warp_event 19,  6, LAVENDER_CRYPT_SET_1, 13
	warp_event 17, 14, LAVENDER_CRYPT_SET_1, 12
	warp_event  3, 14, LAVENDER_CRYPT_SET_1, 15
	warp_event 16,  1, LAVENDER_CRYPT_SET_1, 14
	warp_event  4, 17, LAVENDER_CRYPT_SET_1, 17
	warp_event 22, 16, LAVENDER_CRYPT_SET_1, 16
	warp_event 20, 13, LAVENDER_CRYPT_SET_1, 19
	warp_event  8, 16, LAVENDER_CRYPT_SET_1, 18
	;Outside of Map Warps
	warp_event  8,  1, LAVENDER_CRYPT_SET_2, 15
	warp_event  5, 15, LAVENDER_CRYPT_SET_2, 16
	warp_event  5, 16, LAVENDER_CRYPT_SET_2, 17
	warp_event 19, 15, LAVENDER_CRYPT_SET_3, 7
	warp_event 21,  5, LAVENDER_CRYPT_SET_3, 8
	warp_event 21,  6, LAVENDER_CRYPT_SET_3, 9
	warp_event 18, 18, LAVENDER_CRYPT_SET_3, 18
	warp_event 16, 12, LAVENDER_CRYPT_SET_2, 26
	warp_event 16, 16, LAVENDER_CRYPT_SET_3, 19
	warp_event 16, 17, LAVENDER_CRYPT_SET_3, 20
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 3, TrainerChannelerGenmei, -1
	object_event 20,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 3, TrainerChannelerAmanda, -1
	object_event 21, 16, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 3, TrainerChannelerLaurel, -1
	object_event  3, 17, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerTasha, -1

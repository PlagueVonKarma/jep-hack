	object_const_def

LavenderCryptSet2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerHimiko: ; Left
	trainer CHANNELER, HIMIKO, EVENT_BEAT_CHANNELER_HIMIKO, ChannelerHimikoSeenText, ChannelerHimikoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerHimikoAfterBattleText
	waitbutton
	closetext
	end

ChannelerHimikoSeenText:
	text "Gagagak! This"
	line "power is like"
	cont "no other!"
	done

ChannelerHimikoBeatenText:
	text "Bwoooah!"
	done

ChannelerHimikoAfterBattleText:
	text "My sincerest apo-"
	line "logies. I don't"
	cont "know what came"
	cont "over me."
	
	para "That GHOST didn't"
	line "go too far. You"
	cont "can catch it."
	done

TrainerChannelerShanna:; right
	trainer CHANNELER, SHANNA, EVENT_BEAT_CHANNELER_SHANNA, ChannelerShannaSeenText, ChannelerShannaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerShannaAfterBattleText
	waitbutton
	closetext
	end

ChannelerShannaSeenText:
	text "Too much! Ack!"
	line "Get awayyyy!"
	done

ChannelerShannaBeatenText:
	text "Gasp… pant…"
	done

ChannelerShannaAfterBattleText:
	text "Where did that"
	line "thing come from?"
	
	para "I don't know!"
	line "It's all too"
	cont "much!" ; They don't all need to give hints either.
	done

TrainerChannelerKarina: ; bottom
	trainer CHANNELER, KARINA, EVENT_BEAT_CHANNELER_KARINA, ChannelerKarinaSeenText, ChannelerKarinaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerKarinaAfterBattleText
	waitbutton
	closetext
	end

ChannelerKarinaSeenText:
	text "Light, light,"
	line "light, light…"
	done

ChannelerKarinaBeatenText:
	text "Bright! Toooo"
	line "bright!"
	done

ChannelerKarinaAfterBattleText:
	text "Right! I mean"
	line "right! It went"
	cont "right!"
	done

LavenderCryptSet2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, LAVENDER_CRYPT, 3 ; Entrance
	; Within-Map Warps
	warp_event  2,  9, LAVENDER_CRYPT_SET_2, 3
	warp_event 22,  5, LAVENDER_CRYPT_SET_2, 2
	warp_event 18,  3, LAVENDER_CRYPT_SET_2, 5
	warp_event  8,  6, LAVENDER_CRYPT_SET_2, 4
	warp_event 19,  5, LAVENDER_CRYPT_SET_2, 7
	warp_event 10, 16, LAVENDER_CRYPT_SET_2, 6
	warp_event  4, 17, LAVENDER_CRYPT_SET_2, 9
	warp_event  3,  9, LAVENDER_CRYPT_SET_2, 8
	warp_event 17, 17, LAVENDER_CRYPT_SET_2, 12
	warp_event 17, 18, LAVENDER_CRYPT_SET_2, 13
	warp_event 22,  9, LAVENDER_CRYPT_SET_2, 10
	warp_event 22, 10, LAVENDER_CRYPT_SET_2, 11
	; Outside of Map Warps
	warp_event 20, 16, LAVENDER_CRYPT, 5 ; Takes you back to the start. Tee hee.
	warp_event 21,  1, LAVENDER_CRYPT_SET_1, 20
	warp_event 17,  9, LAVENDER_CRYPT_SET_1, 21
	warp_event 17, 10, LAVENDER_CRYPT_SET_1, 22
	warp_event  8, 10, LAVENDER_CRYPT_SET_3, 10
	warp_event 17,  2, LAVENDER_CRYPT_SET_3, 11
	warp_event 16,  4, LAVENDER_CRYPT_SET_3, 12
	warp_event  8, 16, LAVENDER_CRYPT_SET_3, 13
	warp_event 22, 18, LAVENDER_CRYPT_SET_3, 14 ; THIS pit is your target.
	warp_event 20,  7, LAVENDER_CRYPT_SET_3, 15
	warp_event 12, 18, LAVENDER_CRYPT_SET_3, 16
	warp_event  1,  5, LAVENDER_CRYPT_SET_3, 17
	warp_event 14, 16, LAVENDER_CRYPT_SET_1, 27
	

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  1, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 1, TrainerChannelerHimiko, -1
	object_event 12, 17, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerShanna, -1
	object_event 20,  6, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerChannelerKarina, -1

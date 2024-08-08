	object_const_def

LavenderCrypt_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerReimu:
	trainer CHANNELER, REIMU, EVENT_BEAT_CHANNELER_REIMU, ChannelerReimuSeenText, ChannelerReimuBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerReimuAfterBattleText
	waitbutton
	closetext
	end

ChannelerReimuSeenText:
	text "Halt! This place"
	line "is full of GHOSTs!"
	done

ChannelerReimuBeatenText:
	text "What the--"
	done

ChannelerReimuAfterBattleText:
	text "To be honest, I"
	line "didn't want to"
	cont "work today!"
	
	para "Thank you!"
	done

TrainerChannelerSanae:
	trainer CHANNELER, SANAE, EVENT_BEAT_CHANNELER_SANAE, ChannelerSanaeSeenText, ChannelerReimuBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ChannelerSanaeAfterBattleText
	waitbutton
	closetext
	end

ChannelerSanaeSeenText:
	text "Hey! That monster"
	line "is mine!"
	done

ChannelerSanaeBeatenText:
	text "Grr…"
	done

ChannelerSanaeAfterBattleText:
	text "Tch! I wanted"
	line "to seal that"
	cont "beast myself!"
	done

LavenderCrypt_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, SOUL_HOUSE, 3 ; Entrance
	warp_event 15,  3, LAVENDER_CRYPT_SET_1, 1 ; Right Room
	warp_event  9,  1, LAVENDER_CRYPT_SET_2, 1 ; Middle Room
	warp_event  3,  3, LAVENDER_CRYPT_SET_3, 1 ; Left Room
	warp_event  9,  6, LAVENDER_CRYPT_DOKUROARS_ROOM, 3 ; Exit point for the room; goes through the pit.
	warp_event  8,  3, LAVENDER_CRYPT_SET_2, 14; OWNED

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  6, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerChannelerReimu, -1
	object_event  3,  6, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerChannelerSanae, -1
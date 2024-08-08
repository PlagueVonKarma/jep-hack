	object_const_def

PokemonPagoda2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonPagoda2FStatue:
	jumptext PokemonPagoda2FStatueText

PokemonPagoda2FSign:
	jumptext PokemonPagoda2FSignText

PokemonPagoda2FStatueText:
	text "It's a statue of"
	line "PIKACHU."
	done

PokemonPagoda2FSignText:
	text "One must not gl-"
	line "orify man-made"
	cont "objects."
	
	para "To do so loses"
	line "our touch with"
	cont "nature."
	done

TrainerMediumBethany:
	trainer MEDIUM, BETHANY, EVENT_BEAT_MEDIUM_BETHANY, MediumBethanySeenText, MediumBethanyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MediumBethanyAfterBattleText
	waitbutton
	closetext
	end

MediumBethanySeenText:
	text "Worldly pleasures"
	line "are unnecessary."
	done

MediumBethanyBeatenText:
	text "Kwa!"
	done

MediumBethanyAfterBattleText:
	text "It is said that"
	line "if you abstain"
	cont "from material"
	cont "things, you can"
	cont "command unstop-"
	cont "pable magic."
	done

TrainerMediumMargret:
	trainer MEDIUM, MARGRET, EVENT_BEAT_MEDIUM_MARGRET, MediumMargretSeenText, MediumMargretBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MediumMargretAfterBattleText
	waitbutton
	closetext
	end

MediumMargretSeenText:
	text "Our ways have"
	line "survived many an"
	cont "attack!"
	
	para "Allow me to show"
	line "you the fruits of"
	cont "that past!"
	done

MediumMargretBeatenText:
	text "How!?"
	done

MediumMargretAfterBattleText: ; In the Meiji era, Itako rituals were outlawed. It seems Margret is still miffed about that.
	text "Our divinations"
	line "were once feared"
	cont "by all!"
	
	para "Have some pity on"
	line "us!"
	done

TrainerMediumEthel:
	trainer MEDIUM, ETHEL, EVENT_BEAT_MEDIUM_ETHEL, MediumEthelSeenText, MediumEthelBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MediumEthelAfterBattleText
	waitbutton
	closetext
	end

; Itako are wedded to their patron spirits. In this case, Ethel is wedded to her late husband, William.
MediumEthelSeenText:
	text "Hm? You want me"
	line "to win, dear?"
	
	para "Then it shall be"
	line "so!"
	done

; I decided to reference the character Ethel Skinner from Eastenders.
; She was one of the more popular characters in the show, never recovering from her husband's death and deteriorating due to cancer.
; She's eventually allowed to die with dignity, with Dot's assistance, who 22 years later is buried alongside her - in real time, mind you!
; The reference to Ethel is timely, considering she is still alive in Eastenders at this time and was going to die the year Pokemon Crystal was released in the west.
MediumEthelBeatenText:
	text "WILLIAM! I'm so"
	line "sorry!"
	done

MediumEthelAfterBattleText: 
	text "Who was I talking"
	line "to?"
	
	para "My husband, of co-"
	line "urse!"
	done

; Elsie is the maiden name of my mother. Eerily fitting!
TrainerMediumElsie:
	trainer MEDIUM, ELSIE, EVENT_BEAT_MEDIUM_ELSIE, MediumElsieSeenText, MediumElsieBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MediumElsieAfterBattleText
	waitbutton
	closetext
	end

MediumElsieSeenText:
	text "Sight grants one"
	line "many distractions."
	
	para "In the dark, one"
	line "sees the truth!"
	done

MediumElsieBeatenText:
	text "Agh! Bugger this"
	line "for a lark!"
	done

MediumElsieAfterBattleText:
	text "Maybe I should"
	line "return home. This"
	cont "isn't working!"
	done

PokemonPagoda2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  1, POKEMON_PAGODA_1F, 3
	warp_event  9,  9, POKEMON_PAGODA_3F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, PokemonPagoda2FSign
	bg_event  4,  0, BGEVENT_READ, PokemonPagoda2FStatue

	def_object_events
	object_event  6,  6, SPRITE_MEDIUM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerMediumBethany, -1
	object_event  3,  6, SPRITE_MEDIUM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerMediumMargret, -1
	object_event  6,  3, SPRITE_MEDIUM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerMediumEthel, -1
	object_event  3,  3, SPRITE_MEDIUM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 2, TrainerMediumElsie, -1

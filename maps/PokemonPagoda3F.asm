	object_const_def

PokemonPagoda3F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonPagoda3FStatue:
	jumptext PokemonPagoda3FStatueText

PokemonPagoda3FSign:
	jumptext PokemonPagoda3FSignText

PokemonPagoda3FStatueText:
	text "It's a statue of"
	line "TENTACRUEL."
	done

PokemonPagoda3FSignText:
	text "One should pay"
	line "attention to"
	cont "the world."
	
	para "You need not"
	line "cut a notch in"
	cont "your boat to"
	cont "find your sword." ; a reference to a story here https://www.laowaichengyuguide.com/entry/%E5%88%BB%E8%88%9F%E6%B1%82%E5%89%91
	done

TrainerSageMing:
	trainer SAGE, MING, EVENT_BEAT_SAGE_MING, SageMingSeenText, SageMingBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageMingAfterBattleText
	waitbutton
	closetext
	end

SageMingSeenText:
	text "This PAGODA has"
	line "existed for cen-"
	cont "turies."
	done

SageMingBeatenText:
	text "Very good!"
	done

SageMingAfterBattleText:
	text "I like to live"
	line "life at a leis-"
	cont "urely pace."
	
	para "Sort of like"
	line "riding in a"
	cont "carriage." ; 安步当车 - a chengyu.
	done

TrainerSageWei:
	trainer SAGE, WEI, EVENT_BEAT_SAGE_WEI, SageWeiSeenText, SageWeiBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageWeiAfterBattleText
	waitbutton
	closetext
	end

SageWeiSeenText:
	text "You're as expres-"
	line "sionless as a"
	cont "wooden PIDGEOT." ; 呆若木鸡 - used to express whether someone is dumbstruck, either with fear or shock. Here, Pidgeot replaces the chicken.
	
	para "Are you not in"
	line "awe?" ; so this results in very, very funny communication failure.
	done

SageWeiBeatenText:
	text "You've got the"
	line "wrong idea!"
	done

SageWeiAfterBattleText:
	text "I was asking if"
	line "you're dumbstruck!"
	
	para "My sincerest apo-"
	line "logies! I shall"
	cont "bring branches"
	cont "for my punishment!" ; references 负荆请罪 - comes from a story where a misunderstanding between two generals that ended in one bringing bramble branches, shirt-off, to be whipped with, as an apology. 
	done

TrainerSageLang:
	trainer SAGE, LANG, EVENT_BEAT_SAGE_LANG, SageLangSeenText, SageLangBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageLangAfterBattleText
	waitbutton
	closetext
	end

SageLangSeenText:
	text "Excuse me, could"
	line "you take your"
	cont "shoes off?"
	done

SageLangBeatenText:
	text "Hmph!"
	done

SageLangAfterBattleText:
	text "When you enter a"
	line "village, do you"
	cont "no comply with"
	cont "its customs?" ; 入乡随俗
	
	para "Then take your"
	line "shoes off!"
	done

TrainerSageHuang:
	trainer SAGE, HUANG, EVENT_BEAT_SAGE_HUANG, SageHuangSeenText, SageHuangBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageHuangAfterBattleText
	waitbutton
	closetext
	end

SageHuangSeenText:
	text "Willow trees make"
	line "shade, flowers"
	cont "give light." ; 柳暗花明 refers to a positive turn of events after a struggle; light at the end of the tunnel. It seems Huang has been through some hardship.
	done

SageHuangBeatenText:
	text "Things will get"
	line "better."
	done

SageHuangAfterBattleText:
	text "Sometimes, the"
	line "best thing one"
	cont "can do is turn"
	cont "on the light."
	done

PokemonPagoda3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  9, POKEMON_PAGODA_4F, 2
	warp_event  0,  1, POKEMON_PAGODA_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, PokemonPagoda3FSign
	bg_event  4,  0, BGEVENT_READ, PokemonPagoda3FStatue

	def_object_events
	object_event  4,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageMing, -1
	object_event  5,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageWei, -1
	object_event  6,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageLang, -1
	object_event  3,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageHuang, -1

	object_const_def

PokemonPagoda4F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonPagoda4FStatue:
	jumptext PokemonPagoda4FStatueText

PokemonPagoda4FSign:
	jumptext PokemonPagoda4FSignText

PokemonPagoda4FStatueText:
	text "It's a statue of"
	line "FEAROW."
	done

PokemonPagoda4FSignText:
	text "Do not swallow a" ; 囫囵吞枣
	line "date with one"
	cont "gulp."
	
	para "Engage with your"
	line "surroundings."
	
	para "Digest its con-"
	line "tents."
	
	para "You need not fear" ; 杞人忧天
	line "whether the sky"
	cont "will fall."
	done

; Street Fighter Alpha 3 had just come out at this time, so let's reference Gen.
TrainerSageGen:
	trainer SAGE, GEN, EVENT_BEAT_SAGE_GEN, SageGenSeenText, SageGenBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageGenAfterBattleText
	waitbutton
	closetext
	end

SageGenSeenText:
	text "Death may come"
	line "when one is at"
	cont "their best."
	done

SageGenBeatenText:
	text "Your style is"
	line "pure."
	done

SageGenAfterBattleText:
	text "You can't win"
	line "just by battling." ; I mean, in Pokemon? You...really can. 
	
	para "Much has to be"
	line "done. Do you pull"
	cont "seedlings from"
	cont "the ground to"
	cont "help them grow?" ; 拔苗助长 - Haste makes waste is the effectual meaning.
	done

TrainerSageRaoh:
	trainer SAGE, RAOH, EVENT_BEAT_SAGE_RAOH, SageRaohSeenText, SageRaohBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageRaohAfterBattleText
	waitbutton
	closetext
	end

SageRaohSeenText:
	text "The heavens wish"
	line "for my victory!"
	done

SageRaohBeatenText:
	text "My #MON no"
	line "longer have the"
	cont "strength."
	done

SageRaohAfterBattleText:
	text "I understand."
	
	para "You have lived"
	line "all this time by"
	cont "seeing through"
	cont "death."
	done

TrainerSageShuu:
	trainer SAGE, SHUU, EVENT_BEAT_SAGE_SHUU, SageShuuSeenText, SageShuuBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageShuuAfterBattleText
	waitbutton
	closetext
	end

SageShuuSeenText:
	text "Benevolence is"
	line "a virtue."
	done

SageShuuBeatenText:
	text "My eyes…"
	done

SageShuuAfterBattleText:
	text "This loss…"
	
	para "It bears on me"
	line "with the weight"
	cont "of MT.SILVER." ; 安如泰山 - To bear down with the weight of Mt. Tai, a mountain in Shandong. This is also the Chinese name for Body Slam!
	done

TrainerSageSheng:
	trainer SAGE, SHENG, EVENT_BEAT_SAGE_SHENG, SageShengSeenText, SageShengBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageShengAfterBattleText
	waitbutton
	closetext
	end

SageShengSeenText:
	text "Even in one's"
	line "darkest hours,"
	cont "defeat only comes"
	cont "if they don't"
	cont "fight!"
	done

SageShengBeatenText:
	text "I…"
	done

SageShengAfterBattleText:
	text "It seems my"
	line "studies were"
	cont "insufficient."
	
	para "I must redouble"
	line "my efforts!"
	
	para "But some worry"
	line "about my sleep"
	cont "and eating! Ha!" ; 废寝忘食 while it basically says neglecting sleep and food to continue working diligently, it is a positive Chengyu...
	done

PokemonPagoda4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  9, POKEMON_PAGODA_5F, 1
	warp_event  0,  1, POKEMON_PAGODA_3F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, PokemonPagoda4FSign
	bg_event  4,  0, BGEVENT_READ, PokemonPagoda4FStatue

	def_object_events
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageGen, -1
	object_event  6,  9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageRaoh, -1
	object_event  8,  9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageShuu, -1
	object_event  9,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSageSheng, -1

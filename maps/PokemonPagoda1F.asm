; In general, this place is almost certainly a reference to the story Gojunoto (The Five-Storied Pagoda), written in 1891.
; https://en.wikipedia.org/wiki/The_Five-Storied_Pagoda
; It's a good read! I strongly recommend it!

; The story seems to have impacted GSC's writing in a big way, with two conflicting carpenters and the pagoda weathering a deadly storm. It seems Lugia could represent Genta, while Ho-Oh represents Jubei. However, in the final game, the towers are extremely different, and most references seem to have been removed.

; Given this is a direct reference to the story, we'll focus squarely on it. 

	object_const_def

PokemonPagoda1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonPagoda1FSign:
	jumptext PokemonPagoda1FSignText

PokemonPagoda1FSignText:
	text "#MON PAGODA"
	line "C… by JU…I…"
	
	para "The text is too"
	line "faded to read…"
	done

PokemonPagodaSage1:
	jumptextfaceplayer PokemonPagodaSage1Text

PokemonPagodaSage2:
	jumptextfaceplayer PokemonPagodaSage2Text

PokemonPagodaSage3:
	jumptextfaceplayer PokemonPagodaSage3Text

PokemonPagodaSage4:
	jumptextfaceplayer PokemonPagodaSage4Text

PokemonPagodaSage1Text:
	text "This PAGODA is one"
	line "among many."
	
	para "If you travel"
	line "west, you can see"
	cont "many more." ; Refers to pagodas seen in Bhutan, Myanmar, Korea, China, etc...
	done

PokemonPagodaSage2Text:
	text "My master told me"
	line "these designs come"
	cont "from 'the land"
	cont "of TRAMPEL'…" ; Pagoda designs can be traced back to ancient India!
	
	para "I don't underst-"
	line "and."
	done

PokemonPagodaSage3Text:
	text "You can get a"
	line "great view of"
	para "SEPIA CITY from"
	line "the top of this"
	cont "place."
	done

PokemonPagodaSage4Text:
	text "You wouldn't be-"
	line "lieve this, but"
	cont "this PAGODA was"
	cont "built by a man of"
	cont "no skill at all."
	
	para "It even survived"
	line "a terrible storm!"
	done

PokemonPagoda1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  9, OLD_CITY, 9
	warp_event  4,  9, OLD_CITY, 10
	warp_event  0,  1, POKEMON_PAGODA_2F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, PokemonPagoda1FSign

	def_object_events
	object_event  0,  2, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 5, PokemonPagodaSage1, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 5, PokemonPagodaSage2, -1
	object_event  7,  6, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 5, PokemonPagodaSage3, -1
	object_event  6,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 5, PokemonPagodaSage4, -1 ; By sign

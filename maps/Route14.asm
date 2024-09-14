	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM
	const ROUTE14_EUSINE
	const ROUTE14_SUICUNE

Route14_MapScripts:
	def_scene_scripts
	scene_script Route14Noop1Scene, SCENE_ROUTE14_NOOP
	scene_script Route14Noop2Scene, SCENE_ROUTE14_SUICUNE

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route14SuicuneCallback
	
Route14Noop1Scene:
	end

Route14Noop2Scene:
	end

Route14SuicuneCallback:
	checkevent EVENT_SAW_SUICUNE_IN_VERMILION_CITY
	iffalse .NoAppear
	checkevent EVENT_SAW_SUICUNE_ON_ROUTE_14
	iffalse .NoAppear
	appear ROUTE14_SUICUNE
	endcallback

.NoAppear:
	disappear ROUTE14_SUICUNE
	disappear ROUTE14_EUSINE ; just making sure, also skips using any events for this matter
	endcallback

; BUG: Movement is fucky, eusine is a little weird. I'm just incompetent.

Route14EusineHandler:
	moveobject ROUTE14_EUSINE, 12, 11
	; fallthrough
Route14SuicuneScript:
	playmusic MUSIC_NONE
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	pause 15
	cry SUICUNE
	playsound SFX_WARP_FROM
	applymovement ROUTE14_SUICUNE, Route14SuicuneMovement
	disappear ROUTE14_SUICUNE
	pause 10
	
	appear ROUTE14_EUSINE
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	applymovement ROUTE14_EUSINE, Route14EusineMovement1
	opentext
	writetext Route14EusineSawSuicune
	waitbutton
	closetext
	applymovement ROUTE14_EUSINE, Route14EusineMovement2
	
	setscene SCENE_ROUTE14_NOOP
	setevent EVENT_SAW_SUICUNE_ON_ROUTE_14
	setmapscene ROUTE_25, SCENE_ROUTE25_FINAL_SUICUNE
	disappear ROUTE14_EUSINE
	special RestartMapMusic
	end

Route14EusineMovement1:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step UP
	step UP
	step_end

Route14EusineMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Route14SuicuneMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end

; This text is heavily modified from HGSS for speed and ease of scrolling.
; Otherwise, it looks incredibly awkward.
Route14EusineSawSuicune:
	text "EUSINE: <PLAYER>!"
	line "Not again! I'll"
	cont "be there first"
	cont "next time!"
	
	para "Following it here,"
	line "I think I know"
	cont "what SUICUNE is"
	cont "after."
	
	para "Honestly, I want"
	line "to keep this"
	cont "information to"
	cont "myself."
	
	para "But I must be an"
	line "honest TRAINER in"
	cont "in front of"
	cont "SUICUNE!"
	
	para "It seems SUICUNE"
	line "likes hilly areas"
	cont "close to water."
	
	para "Somewhere north."
	
	para "I don't know where"
	line "just yet…"
	
	para "Who will find it"
	line "first? <PLAYER>,"
	cont "I challenge you!"
	
	done

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Let me tell you,"
	line "I had a hard time"

	para "catching my prized"
	line "#MON."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

PokefanmCarterAfterBattleText:
	text "SQUIRTLE, CHARMAN-"
	line "DER and BULBASAUR…"

	para "I think that's a"
	line "well-balanced mix."
	done

BirdKeeperRoySeenText:
	text "My dream is to fly"
	line "with my beloved"
	cont "bird #MON."
	done

BirdKeeperRoyBeatenText:
	text "I can dream, but I"
	line "can't ever fly…"
	done

BirdKeeperRoyAfterBattleText:
	text "You have #MON"
	line "that know the HM"

	para "move FLY, don't"
	line "you? I envy you."
	done

PokefanmTrevorSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"

	para "train them in a"
	line "place that they"
	cont "remember."
	done

PokefanmTrevorBeatenText:
	text "Where did I meet"
	line "this PSYDUCK?"
	done

PokefanmTrevorAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 11,  8, SCENE_ROUTE14_SUICUNE, Route14SuicuneScript
	coord_event 12,  8, SCENE_ROUTE14_SUICUNE, Route14SuicuneScript
	coord_event 13,  8, SCENE_ROUTE14_SUICUNE, Route14EusineHandler
	coord_event 14,  8, SCENE_ROUTE14_SUICUNE, Route14SuicuneScript

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  6, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
	object_event 13, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_ON_ROUTE_14
	object_event 17,  8, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_ON_ROUTE_14

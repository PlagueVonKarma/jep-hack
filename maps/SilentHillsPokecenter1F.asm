; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const SILENTHILLSPOKECENTER1F_NURSE
	const SILENTHILLSPOKECENTER1F_GENTLEMAN
	const SILENTHILLSPOKECENTER1F_YOUNGSTER
	const SILENTHILLSPOKECENTER1F_COOLTRAINER_M
	const SILENTHILLSPOKECENTER1F_HOUNDOOM

SilentHillsPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilentHillsPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SilentHillsPokecenter1FCoolTrainerMScript:
	jumptextfaceplayer SilentHillsPokecenter1FCoolTrainerMText

SilentHillsPokecenter1FCoolTrainerMText:
	text "Wow! Apparently,"
	line "BILL made a"
	cont "machine that lets"
	cont "you trade through"
	cont "time!"
	
	para "Is that true?"
	done

SilentHillsPokecenter1FYoungsterScript:
	jumptextfaceplayer SilentHillsPokecenter1FYoungsterText

SilentHillsPokecenter1FYoungsterText:
	text "This is a"
	line "HOUNDOOM."
	
	para "It's a dark type"
	line "#MON. We didn't"
	cont "know it existed!"
	
	done

SilentHillsPokecenter1FHoundoomScript:
	faceplayer
	opentext
	writetext SilentHillsPokecenter1FHoundoomText
	cry HOUNDOOM
	waitbutton
	closetext
	end

SilentHillsPokecenter1FHoundoomText:
	text "Bark! Bark!"
	
	done

SilentHillsPokecenter1FGentlemanScript:
	jumptextfaceplayer SilentHillsPokecenter1FGentlemanText

SilentHillsPokecenter1FGentlemanText:
	text "If you are a"
	line "TRAINER, you can"
	cont "use that PC for"
	cont "free!"
	done

SilentHillsPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILENT_HILLS, 1
	warp_event  4,  7, SILENT_HILLS, 1
	warp_event  0,  7, NIHON_POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentHillsPokecenter1FNurseScript, -1
	object_event 18,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentHillsPokecenter1FGentlemanScript, -1
	object_event 12,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentHillsPokecenter1FYoungsterScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentHillsPokecenter1FCoolTrainerMScript, -1
	object_event 13,  1, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilentHillsPokecenter1FHoundoomScript, -1

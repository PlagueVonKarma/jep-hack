	object_const_def
	const LAKEOFRAGEPOKECENTER1F_NURSE
	const LAKEOFRAGEPOKECENTER1F_SCIENTIST
	const LAKEOFRAGEPOKECENTER1F_GENTLEMAN
	const LAKEOFRAGEPOKECENTER1F_YOUNGSTER

LakeOfRagePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LakeOfRagePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LakeOfRagePokecenter1FGentlemanScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_RED_GYARADOS
	iftrue .GyaradosDefeated
	writetext LakeOfRagePokecenter1FGentlemanText
	waitbutton
	closetext
	end

.GyaradosDefeated:
	writetext LakeOfRagePokecenter1FGentlemanText_GyaradosDefeated
	waitbutton
	closetext
	end

LakeOfRagePokecenter1FScientistScript:
	jumptextfaceplayer LakeOfRagePokecenter1FScientistText

LakeOfRagePokecenter1FYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_RED_GYARADOS
	iftrue .GyaradosDefeated
	writetext LakeOfRagePokecenter1FYoungsterText
	waitbutton
	closetext
	end

.GyaradosDefeated:
	writetext LakeOfRagePokecenter1FYoungsterText_GyaradosDefeated
	waitbutton
	closetext
	end

LakeOfRagePokecenter1FScientistText:
	text "GYARADOS are very"
	line "sensitive to"
	cont "changes in their"
	cont "environment."
	
	para "Even a minor"
	line "tremor can drive"
	cont "them wild!"
	done

LakeOfRagePokecenter1FGentlemanText:
	text "I wonder who is"
	line "behind all this"
	cont "nonsense?"
	
	para "First the RADIO"
	line "TOWER, now the"
	cont "lake..."
	
	done

LakeOfRagePokecenter1FGentlemanText_GyaradosDefeated:
	text "The LAKE OF RAGE"
	line "is known for its"
	cont "shell middens." ; Lake Biwa has a giant shell midden called the Awazu site, which dates back to the Jomon period (~10,000 years ago).
	
	para "They date back"
	line "thousands of"
	cont "years!"
	
	done

LakeOfRagePokecenter1FYoungsterText:
	text "Dad said I have"
	line "to stay inside."
	
	para "I hear a monster"
	line "outside..."
	
	para "And my #GEAR"
	line "keeps playing"
	cont "this weird music!"
	
	para "Waaah! So scary!"
	done

LakeOfRagePokecenter1FYoungsterText_GyaradosDefeated:
	text "The monster is"
	line "gone! I can go"
	cont "outside again!"
	done

LakeOfRagePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAKE_OF_RAGE, 4
	warp_event  4,  7, LAKE_OF_RAGE, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FScientistScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FGentlemanScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LakeOfRagePokecenter1FYoungsterScript, -1

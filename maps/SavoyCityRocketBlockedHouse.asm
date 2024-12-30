; Given the way things are laid out, it seems you catch the Rockets mid-robbery, contrasting with Cerulean City's interestingly enough.
; The man is looking directly at the Rockets and distinctly doesn't move; one Rocket is about to get out of the window; another is looking around.
; I believe that as you enter, there is an immediate cutscene.
; It could be a TM, like the Cerulean City robbery, or something more. Maybe a HM, given our current trajectory.
; To be discussed at-length.
	object_const_def
	const SAVOYCITYROCKET_BLOCKED_HOUSE_MAN
	const SAVOYCITYROCKET_BLOCKED_HOUSE_WOMAN
	const SAVOYCITYROCKET_BLOCKED_HOUSE_ROCKET1
	const SAVOYCITYROCKET_BLOCKED_HOUSE_ROCKET2
	const SAVOYCITYROCKET_BLOCKED_HOUSE_POKEBALL

SavoyCityRocketBlockedHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; FINISHME: NPCs will need scripts for before and after the robbery is resolved.
SavoyCityRocketBlockedHouseManScript:
	jumptextfaceplayer SavoyCityRocketBlockedHouseManText

SavoyCityRocketBlockedHouseManText:
	text "Can we just talk"
	line "about this?"
	
	para "What on earth"
	line "do these chuckle"
	cont "brothers want?"
	done

SavoyCityRocketBlockedHouseWomanScript:
	jumptextfaceplayer SavoyCityRocketBlockedHouseWomanText

SavoyCityRocketBlockedHouseWomanText:
	text "TEAM ROCKET? I"
	line "thought some kid"
	cont "fried these guys!"
	done

SavoyCityRocketBlockedHouseRocket1Script:
	jumptextfaceplayer SavoyCityRocketBlockedHouseRocket1Text

SavoyCityRocketBlockedHouseRocket1Text:
	text "Comment to be"
	line "written."
	done
	
SavoyCityRocketBlockedHouseRocket2Script:
	jumptextfaceplayer SavoyCityRocketBlockedHouseRocket2Text

SavoyCityRocketBlockedHouseRocket2Text:
	text "Comment to be"
	line "written."
	done

; FINISHME: Figure out what the hell goes here.
SavoyCityRocketBlockedHouseItem:
	itemball POTION ; placeholder until youse figure dis out

SavoyCityRocketBlockedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAVOY_CITY, 9
	warp_event  5,  7, SAVOY_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityRocketBlockedHouseManScript, -1
	object_event  1,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityRocketBlockedHouseWomanScript, -1
	object_event  7,  5, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityRocketBlockedHouseRocket1Script, -1
	object_event  8,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityRocketBlockedHouseRocket2Script, -1
	object_event  1, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SavoyCityRocketBlockedHouseItem, EVENT_SAVOYCITYROCKET_BLOCKED_HOUSE_ITEM

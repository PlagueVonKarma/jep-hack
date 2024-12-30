; Theme: A city filled with slang-slinging younglings of the 90s.
; A few older residents and migrants do not like the younglings.
; Player finds out Kuye is actually a Gym Leader, if they have noticed her at all.
; Hoping to have Impostor Oak taken to Braz-- I mean, Coral City, during this arc.

; In one of the houses or Pokemon Centers, have someone talk about Jacky.
; I want him to be native to Savoy City!

	object_const_def
	const SAVOYCITY_LASS
	const SAVOYCITY_COOLTRAINER_F
	const SAVOYCITY_ROCKETM
	const SAVOYCITY_SAILOR
	const SAVOYCITY_GENTLEMAN
	const SAVOYCITY_ROCKER
	const SAVOYCITY_FISHER
	const SAVOYCITY_PIXYTOP

SavoyCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SavoyCityFlypointCallback

SavoyCityFlypointCallback:
	setflag ENGINE_FLYPOINT_SAVOY
	endcallback

SavoyCitySignScript:
	jumptext SavoyCitySignText

SavoyCitySignText:
	text "SAVOY CITY"
	line "Hip 'n' savvy!"
	done

SavoyCityTrainSignScript:
	jumptext SavoyCityTrainSignText

SavoyCityTrainSignText:
	text "SAVOY RAIL"
	
	para "Bringing the"
	line "future to you!"
	done

SavoyDockSignScript:
	jumptext SavoyDockSignText

SavoyDockSignText:
	text "SAVOY DOCK"
	line "idk figure it"
	cont "out bozo"
	done

SavoyCityDeptStoreSignScript:
	jumptext SavoyCityDeptStoreSignText

SavoyCityDeptStoreSignText:
	text "SAVOY CITY"
	line "DEPT STORE"
	
	para "Gotta buy 'em"
	line "all!"
	done

SavoyCityJOPMSignScript:
	jumptext SavoyCityJOPMSignText

SavoyCityJOPMSignText:
	text "JOPM RADIO"
	
	para "The Voice of"
	line "NIHON!"
	done

SavoyCityGymSignScript:
	jumptext SavoyCityGymSignText

SavoyCityGymSignText:
	text "SAVOY GYM"
	line "#MON GYM"
	
	para "LEADER: KUYE"
	
	para "She's one mean" ; this feels 90s enough to work right
	line "girl!"
	done

SavoyCityLassScript:
	jumptextfaceplayer SavoyCityLassText

SavoyCityLassText:
	text "Wassup? This is"
	line "SAVOY CITY!"
	
	para "Life's ace here!"
	line "Livin' large!"
	done

SavoyCityCoolTrainerFScript:
	jumptextfaceplayer SavoyCityCoolTrainerFText

SavoyCityCoolTrainerFText:
	text "JOPM puts on"
	line "some wicked trax!"
	
	para "Huh? You daft?"
	line "Like, cool! C'mon!"
	done

SavoyCityRockerScript:
	jumptextfaceplayer SavoyCityRockerText

SavoyCityRockerText:
	text "You seen KUYE's"
	line "latest expose?"
	
	para "It's killer! Dot"
	line "com."
	done

SavoyCitySailorScript:
	jumptextfaceplayer SavoyCitySailorText

SavoyCitySailorText:
	text "These townies"
	line "are so annoying!"
	
	para "Me? I'm from CORAL!"
	line "Can't handle these"
	cont "jobbers!" ; He's a hypocrite.
	done

SavoyCityGentlemanScript:
	jumptextfaceplayer SavoyCityGentlemanText

SavoyCityGentlemanText:
	text "I can't keep up"
	line "with the kids in"
	cont "this city."
	
	para "It's all babel!" ; Tower of Babel reference GO!
	done

; This jobber is gonna block the port to send imposter oak over or something
SavoyCityRocketMScript:
	jumptextfaceplayer SavoyCityRocketMText

SavoyCityRocketMText:
	text "Comment to be"
	line "written."
	done

SavoyCityFisherScript:
	jumptextfaceplayer SavoyCityFisherText

SavoyCityFisherText:
	text "PIXYTOP? Oh, it's"
	line "a Fairy #MON."
	
	para "Super hip right"
	line "now!"
	done

SavoyCityPixytopScript:
	faceplayer
	opentext
	writetext SavoyCityPixytopText
	cry CLEFAIRY ; TODO: Implement Pixytop and add the cry here
	waitbutton
	closetext
	end

SavoyCityPixytopText:
	text "PIXYTOP: Spin!"
	line "Bam!"
	done

; Some guy is gonna say this is so profound like in spite of language change it's still got normality in it
; Actually I can't be bothered to write another sign
SavoyCityPokecenterSign:
	jumpstd PokecenterSignScript

; Dept store notes:
; Unique tileset
; 1F has a Rocket AND the Gym Guide.
; Poliwhirl on 5Fish
; Roof has the waiter guy from RBY and 2 Pokemon.
; Seems you're meant to meet a Rocket in the dept store doing a robbery. Maybe he runs out?

SavoyCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 15, ROUTE_50_SAVOY_CITY_GATE, 1		;east gate
	warp_event 22,  5, ROUTE_57, 1						;north gate, left
	warp_event 23,  5, ROUTE_57, 2						;north gate, right
	warp_event 4,   8, CORAL_CITY, 1					;port north
	warp_event 4,   9, CORAL_CITY, 2					;port south
	warp_event 25, 14, SAVOY_CITY_POKECENTER_1F, 1		; pokecenter
	warp_event 22, 25, SAVOY_CITY_BIG_HOUSE_1, 1		; west-south house
	warp_event 32, 25, SAVOY_CITY_BIG_HOUSE_2, 1		; east-south house
	warp_event 18, 12, SAVOY_CITY_ROCKET_BLOCKED_HOUSE, 1
	warp_event 27, 20, DEBUG_ROOM, 1 ; savoy rail
	warp_event 15, 23, DEBUG_ROOM, 1 ; savoy gym
	warp_event 14, 23, DEBUG_ROOM, 1 ; savoy gym
	warp_event 32,  7, DEBUG_ROOM, 1 ; JOPM
	warp_event 31,  7, DEBUG_ROOM, 1 ; JOPM
	warp_event 14,  5, DEBUG_ROOM, 1 ; dept store
	warp_event 13,  5, DEBUG_ROOM, 1 ; dept store
	
	def_coord_events

	def_bg_events
	bg_event 30, 16, BGEVENT_READ, SavoyCitySignScript
	bg_event 12, 10, BGEVENT_READ, SavoyDockSignScript
	bg_event 16,  7, BGEVENT_READ, SavoyCityDeptStoreSignScript
	bg_event 29, 21, BGEVENT_READ, SavoyCityTrainSignScript
	bg_event 28,  9, BGEVENT_READ, SavoyCityJOPMSignScript
	bg_event 18, 24, BGEVENT_READ, SavoyCityGymSignScript
	bg_event 26, 14, BGEVENT_READ, SavoyCityPokecenterSign

	def_object_events
	object_event 19, 27, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityLassScript, -1
	object_event 31, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityCoolTrainerFScript, -1
	object_event  6,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityRocketMScript, -1
	object_event 13,  9, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCitySailorScript, -1
	object_event 29, 22, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityGentlemanScript, -1
	object_event 22, 15, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SavoyCityRockerScript, -1
	object_event 17,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityFisherScript, -1
	object_event 18,  8, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityPixytopScript, -1


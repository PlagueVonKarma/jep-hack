; The High-Tech name is a misnomer; the name comes from Kochi 高知, or "high knowledge", a city on the island of Shikoku. This is why it's off the mainland.
; In other words, the name of the city is completely irrelevant.
; Kochi is famous for its traditional landscape, markets, original castle, and a beautiful river.
; "High-Tech" seems to be based on the Urado Bay area, which is known for having major port industry.
; The aquarium may come from Kochi being named Japan's first Marine Park in 1970.
; From all this, we decided on the name "Coral", also being a shade of pink.

; Info from the spriteset:
; Male and female swimmers
; Rival encounter planned

	object_const_def

CoralCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CoralCityFlypointCallback

CoralCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CORAL
	endcallback

CoralCitySignScript:
	jumptext CoralCitySignText

CoralCitySignText:
	text "CORAL CITY"
	line "True knowledge" ; A hare-brained attempt at referencing the original
	cont "flows like water." ; Vaguely alluding to 水に流す
	done

CoralCityPokecenterSign:
	jumpstd PokecenterSignScript

CoralCityMartSign:
	jumpstd MartSignScript

CoralHarborSignScript1:
	jumptext CoralHarborSignText1

CoralHarborSignText1:
	text "CORAL HARBOR" ; Matching spelling from RGBY - yes, despite largely being written in British English, it's...not spelled with a u.
	line "SAVOY berth" ; I believe this is the correct term, but it could also be "sea route" or "shipping lane". 
	done

CoralHarborSignScript2:
	jumptext CoralHarborSignText2

CoralHarborSignText2:
	text "CORAL HARBOR"
	line "OCHRE berth"
	done

CoralCityFishingGuruSignScript:
	jumptext CoralCityFishingGuruSignText

CoralCityFishingGuruSignText:
	text "FISHING MASTER's" ; He's gonna be the best Fishing Guru ever. Just you wait!
	line "House" ; We want him to have a fishing rod with guaranteed encounters and repeatability, I'd say.
	done

; This house is new in the May98 maps, so we can kind of go crazy with it.
CoralCityUnknownHouseSignScript:
	jumptext CoralCityUnknownHouseSignText

CoralCityUnknownHouseSignText:
	text "Comment to be"
	line "written"
	done

; Alexa play Sonic.exe Hill
; You don't actually fight Oak yet. He'll be in a house in High Tech with a woman.
; Who is this woman? No clue. Oak has no family outside of Daisy and Blue.
; Thus, this woman must actually be a member of the impostor's family.
; Let's say it's played off as a scandalous love affair that he tells you to keep secret.
; I think it'd be good to battle this guy after a certain point; otherwise, pacing is off, you've just finished Savoy...
CoralCityGymSignScript:
	jumptext CoralCityGymSignText

CoralCityGymSignText:
	text "CORAL CITY"
	line "#MON GYM"
	
	para "LEADER: OAK"
	
	para "The trailblazing"
	line "academic!"
	done

; Seems to be a new version of the Pewter Museum of Science.
; There's a woman right in front, two floors, and random NPCs, with little purpose.
CoralCityAquariumSignScript:
	jumptext CoralCityAquariumSignText

CoralCityAquariumSignText:
	text "CORAL CITY"
	line "AQUARIUM"
	done

CoralCitySailorScript1:
	jumptextfaceplayer CoralCitySailorText1

CoralCitySailorText1:
	text "Ever since the"
	line "HARBOUR for"
	cont "SAVOY opened,"
	cont "work has been"
	cont "so busy!"
	done

CoralCitySailorScript2:
	jumptextfaceplayer CoralCitySailorText2

CoralCitySailorText2:
	text "OAK has returned"
	line "to us! The GYM"
	cont "CHALLENGE is"
	cont "saved!"
	done

CoralCityTwinScript:
	jumptextfaceplayer CoralCityTwinText

CoralCityTwinText:
	text "Dad, I want to go"
	line "to the aquarium!"
	done

CoralCityManScript:
	jumptextfaceplayer CoralCityManText

CoralCityManText:
	text "Soon, sweetie!"
	line "I promise!"
	done

CoralCityFisherScript:
	jumptextfaceplayer CoralCityFisherText

CoralCityFisherText:
	text "I just keep"
	line "reeling in big"
	cont "ones!"
	
	para "The PERFECT"
	line "ROD is like no-"
	cont "thing else!"
	done

CoralCityCroconawScript:
	faceplayer
	opentext
	writetext CoralCityCroconawText
	cry CROCONAW
	waitbutton
	closetext
	end

CoralCityCroconawText:
	text "CROCONAW: Grah!"
	line "Roar!"
	done

CoralCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 32, SAVOY_CITY, 4					;south port, north
	warp_event 14, 33, SAVOY_CITY, 5					;south port, south
	warp_event 31, 10, CORAL_CITY_POKECENTER_1F, 1		; pokecenter
	warp_event 31, 14, CORAL_MART, 1		; mart
	
	def_coord_events

	def_bg_events
	bg_event 30, 21, BGEVENT_READ, CoralCitySignScript
	bg_event 24, 24, BGEVENT_READ, CoralHarborSignScript1
	bg_event 32, 14, BGEVENT_READ, CoralCityMartSign
	bg_event 12, 12, BGEVENT_READ, CoralCityGymSignScript
	bg_event 32, 10, BGEVENT_READ, CoralCityPokecenterSign
	bg_event 10, 15, BGEVENT_READ, CoralCityFishingGuruSignScript
	bg_event 20, 12, BGEVENT_READ, CoralCityUnknownHouseSignScript
	bg_event 24,  9, BGEVENT_READ, CoralHarborSignScript2
	bg_event 10, 25, BGEVENT_READ, CoralCityAquariumSignScript

	def_object_events
	object_event 15, 23, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityTwinScript, -1
	object_event 27, 11, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCitySailorScript1, -1
	object_event 24, 20, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCitySailorScript2, -1
	object_event 15, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityManScript, -1
	object_event 23,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityFisherScript, -1
	object_event 22,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CoralCityCroconawScript, -1


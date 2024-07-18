NihonGrassWildMons:
	; Winner's Path is themed around Pokemon found in the PokeWalker map.
	; Additionally, it features Pokemon known to be successful in Nintendo Cup 2000.
	def_grass_wildmons WINNERS_PATH
	db 2 percent, 2 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	dbw 50, MUNCHLAX
	dbw 51, SKARMORY
	dbw 50, CHANSEY
	dbw 51, MUNCHLAX
	dbw 52, RHYDON
	dbw 52, FORRETRESS
	dbw 55, STEELIX
	; day
	dbw 50, MUNCHLAX
	dbw 51, SKARMORY
	dbw 50, CHANSEY
	dbw 51, MUNCHLAX
	dbw 52, RHYDON
	dbw 52, FORRETRESS
	dbw 55, STEELIX
	; nite
	dbw 50, MAROWAK
	dbw 51, SKARMORY
	dbw 50, KITSEN
	dbw 51, MAROWAK
	dbw 52, HAUNTER
	dbw 52, MISDREAVUS
	dbw 55, STEELIX
	end_grass_wildmons
	
	def_grass_wildmons WINNERS_PATH_OUTSIDE
	db 2 percent, 2 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	dbw 50, MUNCHLAX
	dbw 51, SKARMORY
	dbw 50, MILTANK
	dbw 51, MUNCHLAX
	dbw 52, TAUROS
	dbw 52, QUAGSIRE
	dbw 55, AMPHAROS
	; day
	dbw 50, MUNCHLAX
	dbw 51, SKARMORY
	dbw 50, MILTANK
	dbw 51, MUNCHLAX
	dbw 52, TAUROS
	dbw 52, QUAGSIRE
	dbw 55, AMPHAROS
	; nite
	dbw 50, KADABRA
	dbw 51, SKARMORY
	dbw 50, KITSEN
	dbw 51, KADABRA
	dbw 52, HAUNTER
	dbw 52, MISDREAVUS
	dbw 55, AMPHAROS
	end_grass_wildmons
	
	def_grass_wildmons QUIET_CAVE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 30, LEDYBA
	dbw 31, LEDYBA
	dbw 30, METAPOD
	dbw 31, PIKACHU
	dbw 32, MARILL
	dbw 32, PIDGEY
	dbw 35, SUNFLORA
	; day
	dbw 30, LEDYBA
	dbw 31, LEDYBA
	dbw 30, METAPOD
	dbw 31, PIKACHU
	dbw 32, MARILL
	dbw 32, PIDGEY
	dbw 35, GIRAFARIG
	; nite
	dbw 30, LEDYBA
	dbw 31, LEDYBA
	dbw 30, METAPOD
	dbw 31, PIKACHU
	dbw 32, MARILL
	dbw 32, HOOTHOOT
	dbw 35, SKARMORY
	end_grass_wildmons

	def_grass_wildmons ROUTE_49_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 30, RATTATA
	dbw 31, PIDGEY
	dbw 30, PIKACHU
	dbw 31, MARILL
	dbw 32, HOPPIP
	dbw 32, EKANS
	dbw 35, SUNFLORA
	; day
	dbw 30, RATTATA
	dbw 31, PIDGEY
	dbw 30, PIKACHU
	dbw 31, MARILL
	dbw 32, HOPPIP
	dbw 32, EKANS
	dbw 35, GIRAFARIG
	; nite
	dbw 30, RATTATA
	dbw 31, PIDGEY
	dbw 30, PIKACHU
	dbw 31, MARILL
	dbw 32, HOOTHOOT
	dbw 32, EKANS
	dbw 35, SKARMORY
	end_grass_wildmons

	def_grass_wildmons ROUTE_49
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 30, PIDGEY
	dbw 31, RATTATA
	dbw 30, PIKACHU
	dbw 31, MAREEP
	dbw 32, HOPPIP
	dbw 32, MARILL
	dbw 35, SUNFLORA
	; day
	dbw 30, PIDGEY
	dbw 31, RATTATA
	dbw 30, PIKACHU
	dbw 31, MAREEP
	dbw 32, HOPPIP
	dbw 32, MARILL
	dbw 35, GIRAFARIG
	; nite
	dbw 30, HOOTHOOT
	dbw 31, RATTATA
	dbw 30, PIKACHU
	dbw 31, MAREEP
	dbw 32, HOPPIP
	dbw 32, MARILL
	dbw 35, SKARMORY
	end_grass_wildmons

	db -1 ; end

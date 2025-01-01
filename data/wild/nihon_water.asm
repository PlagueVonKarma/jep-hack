NihonWaterWildMons:
	def_water_wildmons WINNERS_PATH
	db 4 percent ; encounter rates: morn/day/nite
	dbw 40, MAGIKARP
	dbw 41, SEADRA
	dbw 40, GRANBO ; SHARPOON
	end_water_wildmons

	def_water_wildmons ROUTE_66
	db 4 percent ; encounter rates: morn/day/nite
	dbw 30, MAGIKARP
	dbw 31, ANGORE
	dbw 30, MOLAMBINO
	end_water_wildmons

	; Placeholder
	def_water_wildmons ROUTE_49_2
	db 4 percent ; encounter rates: morn/day/nite
	dbw 30, MAGIKARP
	dbw 31, MAGIKARP
	dbw 30, MAGIKARP
	end_water_wildmons
	
	; Route 52 has no grass
	
	def_water_wildmons ROUTE_52
	db 4 percent ; encounter rates: morn/day/nite
	dbw 30, TENTACOOL
	dbw 31, MANTINE
	dbw 30, ANGORE
	end_water_wildmons
	
	def_water_wildmons ROUTE_53
	db 4 percent ; encounter rates: morn/day/nite
	dbw 30, MOLAMBINO
	dbw 31, MANTINE
	dbw 30, ANGORE
	end_water_wildmons
	
	; Route 57 has no grass
	
	db -1 ; end

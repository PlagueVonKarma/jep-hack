; Zeta, Rangi's Dive code sets something special here.
; https://github.com/Rangi42/pokecrystal/commit/c21561ea717feef9b2eb3785c2ea112cd0d19ba0#diff-3f65a383d53b5b6bef93c0cf6b1078db365ec51031b8c9b8cccff1d8b81b77db
; Test and see if you like it; do so by adding the changes from the equivalent file.
; Requires underwater tileset to exist.

LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_MANSION
	jr z, .mansion_mobile
	cp TILESET_NIHON_SNOWY
	jr z, .snowy
	cp TILESET_LAVENDER_CRYPT
	jr z, .crypt
	cp TILESET_NIHON_BIRDON
	jr z, .desert
	jr .do_nothing

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret

.snowy
	call LoadSnowyPalette
	scf
	ret

.crypt
	call LoadCryptPalette
	scf
	ret
	
.desert
	ld a, [wTimeOfDay]
	and $7
	cp NITE_F
	jr z, .do_nothing
	call LoadDesertPalette
	scf
	ret
	
.do_nothing
	and a
	ret

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadSnowyPalette:
	ld a, [wTimeOfDay]
	and $7
	cp NITE_F
	jr z, .nite
	cp DAY_F
	jr z, .day
	scf
;morn
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SnowyMornPalette
	ld bc, 8 palettes
	jp FarCopyWRAM
	ret
.day
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SnowyDayPalette
	ld bc, 8 palettes
	jp FarCopyWRAM
	ret
.nite
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SnowyNitePalette
	ld bc, 8 palettes
	jp FarCopyWRAM
	ret

INCLUDE "gfx/tilesets/snowy.pal"

LoadCryptPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CryptPalette
	ld bc, 8 palettes
	jp FarCopyWRAM

CryptPalette:
INCLUDE "gfx/tilesets/lavendercrypt.pal"

LoadDesertPalette:
	cp DAY_F
	jr z, .day
	scf
;morn
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DesertMornPalette
	ld bc, 8 palettes
	jp FarCopyWRAM
	ret
.day
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DesertDayPalette
	ld bc, 8 palettes
	jp FarCopyWRAM
	ret
	
INCLUDE "gfx/tilesets/desert.pal"


LoadSpecialMapObjectPalette:
	ld a, [wMapTileset]
	cp TILESET_UNDERWATER
	jr z, .underwater
	jr .do_nothing
.underwater
	call LoadUnderwaterObjectPalette
	scf
	ret
.do_nothing
	and a
	ret
LoadUnderwaterObjectPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, UnderwaterObjectPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
UnderwaterObjectPalette:
INCLUDE "gfx/tilesets/underwater_sprites.pal"

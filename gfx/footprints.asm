SECTION "Footprints", ROMX

Footprints::
	indirect_table LEN_1BPP_TILE *4, 1 
	indirect_entries JOHTO_POKEMON - 1, KantoFootprints
	indirect_entries NUM_POKEMON + 5, JohtoFootprints
	indirect_table_end

INCLUDE "gfx/footprints_kanto.asm"
INCLUDE "gfx/footprints_johto.asm"

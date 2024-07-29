# Johto Expansion Pak
This is a ROM Hack of Pokemon Crystal, playing upon the Kanto Expansion Pak's old philosophy. It adds Johto- and Kanto-related Pokemon to Crystal, more interesting locations, and QoL changes.

If playing on an emulator, BGB is strongly recommended for its accuracy and features. Inaccurate emulators, such as VBA and TGB Dual, can experience unintended glitches. This hack is fully playable on official hardware as well.

# New Pokemon
Using the Kanto Expansion Pak's original criteria, the ethos of the Johto Expansion Pak will be to add every "Johto- and Kanto-related Pokemon to Crystal without fundamentally changing the way the game is played." 

What falls under "Johto- and Kanto-related" is a Pokemon is the following, so long as they are, in fact, related:
- Is a regional variant (Eg. Hisuian Sneasel)
- Evolves from or into a Pokemon (eg. Tangrowth, Honchkrow)
- Was cut from the final game (eg. Bellignan, Tricules, Phandarin; "beta" Pokemon)
	- Or from a future title and was related to a Kanto/Johto Pokemon (eg. Lizargun/Charmada)
- Is a Paradox equivalent (eg. Walking Wake)
- Would qualify for the Kanto Expansion Pak (eg. Omegadge, Melmetal)

Any Pokemon that you can think of that would come under this, is absolutely in. Dex total is 466!

With respect to Pokemon from the May 1998 Sprite Cache, creative liberties based on their designs are taken. Given the lack of...anything for these Pokemon, they're heavily customised. Similar philosophies to the Kanto Expansion Pak's RG Asset Leak Pokemon are used.

Mega Evolutions, Gigantamax forms, etc, are not in active consideration.

# Changes
- There is now an enby character option named Topaz, purple-themed.
- You can now name your mother, just as it was in Gold and Silver's prototype stages!
- There is a new Nihon region, based on the 1998 version before it got scrapped for Johto. 
- The Fairy-type is now available, though Pokemon are not retroactively changed, per the Kanto Expansion Pak philosophy (you wouldn't want a Fairy-type Granbull pre-split, would you?)
- Fossil revival is back in town! Get fossils using Rock Smash and revive them at Ruins of Alph or the newly-added Pewter Museum of Science!
- Breakable rocks now give useful items...
	- 1% MAX_REVIVE
	- 2% DOME_FOSSIL - Kabuto
	- 2% HELIX_FOSSIL - Omanyte
	- 2% WING_FOSSIL - Feradactyl
	- 2% OLD_AMBER - Decilla
	- 2% CLUB_FOSSIL - Xylodon
	- 4% STAR_PIECE
	- 10% BIG_PEARL
	- 18% ETHER
	- 24% HARD_STONE
	- 24% SOFT_SAND
	- 48% PEARL
	- 64% BRICK_PIECE
- Many new Trainer classes, including;
	- RBY classes not in GSC, such as the Rocker, Channeler, and even the beta Firefighter
	- Prototype GSC classes such as the Male Teacher, Sportsman, and Soldier
	- The Painter from FRLG!
	- The Elder from HGSS, featuring the NTSC Sage sprite.
	- Decensor is applied to the Fisher, Beauty, Female Swimmer, Medium, and Sage sprites, to match the Japanese version. Let Tully have a puff!
- Many evolution stones have been added to accomodate the Pokemon featured here, including the Heart and Poison Stones from the SpaceWorld demo, and the Peat Block!
- The Fairy Feather from Scarlet and Violet has been added to accomodate the Fairy type.
- The Antique Pot has been added to accomodate a Shuckle evolution!
- New Club and Wing Fossils; the former for Xylodon, a May98 Prototype Pokemon, and the latter for Feradactyl, (seemingly) an Aerodactyl pre-evolution from the same prototype.
- The unused Honey Pot from prototype GSC has been added! 2 days after placing Sweet Honey, you can encounter either Munchlax, Beedrill, Ursaring, or Heracross!

## QoL Changes
- A Trader NPC is available in a new Lake of Rage town area, allowing you to access trade evolutions natively.
- Kurt now makes Apricorn Balls instantly. He's had his coffee and is listening to his favourite music.
- Instant text is now an option!
- Clock reset procedure is now like vanilla GS, requiring just Down + B.
- Tilesets now handle up to 255 titles (from 192), allowing for slightly nicer maps.
- Can now have up to 17 object events.
- Gen 6 Experience System!
- Poke Balls now all have unique palettes.
- The high friendship evolution threshold is now 170, making Friend Balls sufficient for instant evolution and hatching from Eggs takes minimal effort.
- Items previously only obtainable via the Time Capsule are now distributed to specific Pokemon (5%: Polkadot Bow Snubbull, TwistedSpoon Kadabra, Metal Powder Ditto/Mimmeo, Light Ball Pikachu; 50%: Lucky Punch Chansey)
- During the intro, when knowing the PokeGear instructions, you now immediately skip some of the text relating to it, making starting the game slightly less agonising.

## Map Changes
Numerous new maps are available, featuring new locations, the iconic Sevii Islands, and the Nihon region!

Additionally, there have been many wild encounter tweaks. View this document for details. (will link when hack is in a playable state)

- Johto wild encounters have been changed to be more weighted towards Johto Pokemon; eg. Murkrow is available about Ecruteak at night, Misdreavus largely replaces Gastly, etc. Levels have been adjusted.
- Kanto wild encounters have generally higher levels to aid in improving the level curve.
- Rock Smash now has variable and larger wild data, featuring rare, location-based Pokemon (eg. Corsola on the shore), and level adjustments to make them more appropriate.
- Viridian Forest has been restored.
- The Pewter Museum of Science has been restored.
- Cerulean Cave has been restored, complete with a Mewtwo fight!
- The Kanto Safari Zone map from the prototype has been restored.
- The prototype Lake of Rage village has been restored, complete with an Evolution Stone shop and Trader NPC! In general, it's themed around Pokemon evolution.
- The Pokemon Communications Centre from JP GSC has been added and tweaked into a Regional Variant Trade hub, increasing with badge count.
	- The GS Ball event has been restored, now being obtainable after beating the Elite Four and trying to exit the building.
	- The Egg Ticket and Eon Mail events have been restored, now being associated with Buena's Password. Redeeming the Egg Ticket gives you an Odd Egg with the usual Pokemon pool and Shiny chances; this is soft resettable if you like that sort of thing.
	- Additionally, old lore relating to the area has now been restored, including something about the Unown!

# Credits
As the open source nature of this project implies, people are free to reuse what's here for their own ends, **so long as credit is given to this hack and those who worked on what you reuse.** Additionally, we strongly urge you to make any projects using JEP's content open source. JEP strongly supports the [free software movement](https://www.fsf.org/about/) and its four essential freedoms. If you have any questions on the topic of content reuse, contact @ plague_von_karma on Discord.

If you use our implementations of anything at all, it is encouraged to submit Pull Requests for bug fixes if you find any issues! We very much appreciate them!

## Development Credits
- Plague von Karma (Director, Kanto Expansion Pak Founder, Programming, Maps)
- Martha's Against Humanity (Kanto Expansion Pak ROM Hack Creator, Programmer)
- Zeta_Null (Repository Owner, Spriter, Programming)
- LadyMisticus (Documentation, Programming, Mapping)
- thornAvery (Programming)
- LuciShrimp (Music, TBA)
- pret et al (LOTS of [Tutorials](https://github.com/pret/pokecrystal/wiki) that we used to get this off the ground!)
- Wiz (Nihon Pokemon names)
- Rezzo (GSC-specific advice, Showdown Mod assistance)
- Old Dance Jacket (GSC-specific advice, Showdown Mod assistance)
- ausma (KEP Developer, Showdown Mod assistance, legacy)

## Sprite Credits

### JEP Developers
JEP-affiliated spriters require sprites to be used with direct credit for non-commerical purposes. Credit the artist in any case of using them.
- Zeta_Null: Topaz sprites, numerous tileset bits, Omegadge, Qatu, Phandarin, Stromen, Lickilord, 
- Martha's Against Humanity: Shi-Shi, Fossil Aerodactyl, Fossil Kabutops, Calflac (with inspiration from KmiE_821)
- zuperZACH: Clodsire (front), Mismagius, Alolan Vulpix
- Shawesome: Alolan Geodude
- EyeDonutz: Walking Wake
- Plague von Karma: Overworld Arbok, Koffing, Voltorb, Gengar, Diglett, and Cat sprites, adapted from the slot machine's sprites (originally made for KEP).
- LadyMisticus: Sprite edits of Imposter Oak, Archer, Ariana, Prof.Blue, Giovanni (both), Green; Cal (original)

### Unaffiliated
- nuuk: Azurill, Electivire, Farigiraf, Glaceon, Honchkrow, Leafeon, Magmortar, Magnezone, Porygon-Z, Sylveon, Togekiss, Wyrdeer, Clodsire (back)
- Scarlax, Pix, BloodlessNX, Kam, Poket, BimbelyGimbly: Animated sprites from [Pokemon October](https://github.com/pokeachromicdevs/pokeoctober): Bellignan, Caretorker (Adbarstork), Inoshika (Aggroswine), Bipulla, Sonegg (Clefling), Kolta (Coalta), Coinpur, Dodaerie, Bundra (Germifrost), Kiwooked (Kiwacki), Eucala (Koalyptus), Trebir, Burgela, Gorotora, Moibelle, Molambino, Dokuroar (Necrorex), Orfry, Blossomole (Petamole), Smujj
	- Gorotora is edited from RacieBeep's Yellow sprite in the Helix Chamber PokeThon ROM Hack. A full list of Helix Chamber sprites are available [here](https://cdn.discordapp.com/attachments/1014321591657709569/1015347305483878521/unknown.png). Helix Chamber spriters have a "must credit" policy.
- SoupPotato et al: Various sprites from [Pokemon Gold & Silver '97 Reforged](https://github.com/SoupPotato/gold97); Palssio (Cruize), Pressio (Aquallo) Donmarin (Aquarius), Grenmar (Bombsheal, with edits), Jungela (Gelania), Elebebi (Elebabe), Mimmeo (Metto), Kazappelin (Numbpuff), Disturban (Turban), Angore (Anchorage), Trebir (Mallody), Folage (Silkane)
- SCMidna: Munchlax
- SageDeoxys: Iron Bundle, Raging Bolt, Scream Tail, Dudunsparce (both forms)
- Pokets: Terrados
- KmiE_821: Calflac design inspiration
- Tom Wang: Gold/Chris running sprite
- Seasick: Kris running sprite
- Pigu-A, RevoSucks, walle303 - Contributors to Pokemon Anniversary Red's repository, where we reused the Green/FemC sprites.

## Other Sources
- Nob Ogasawara (Many prototype Pokemon names)
- Minamitoku (SW97 demo translation commentary [here](https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku))
- ZoomTen - Honey Pot & Honey Grandma features from Pokemon October, commits [here](https://github.com/pokeachromicdevs/pokeoctober/commit/d00cd6fafdbe5069d2cc452a154942f82f7fceb6), [here](https://github.com/pokeachromicdevs/pokeoctober/commit/1a6f3e4f0307656018f02d4981c973efa814a248), and [here](https://github.com/pokeachromicdevs/pokeoctober/commit/8114fead91828dd6d986fe120d6c5cd5e3c6cbf6). Safari Game restoration [here](https://github.com/pokeachromicdevs/pokeoctober/commit/2ff835730b2a61a757ad67f13e50480c965d2a0c}.
- Ferropexola/aforward9600: Time of day-based tileset palette code
- Rangi42/polishedcrystal: [Decoration shop script](https://github.com/Rangi42/polishedcrystal/blob/master/maps/GoldenrodHarbor.asm)

Original readme proceeding...
# 16-bit index expansion for Crystal

This repository contains a modified Pokémon Crystal game, updated to handle 16-bit indexes. The main goal of this
project is to create a reusable system that ROM hacks can use to bring 16-bit indexes into their games.  
It is *not* within scope to create a new game, or to add additional features beyond 16-bit indexes.

The `master` branch of this repository is intended to perform identically to the original Pokémon Crystal, with
minimal changes to support further development on it. Other branches will implement more features on top of it; the
intention is that the necessary changes can be readily seen by comparing said branches to `master` (or between each
other). Therefore, these other branches will never be merged into `master`, even though they will always be directly
descended from it (i.e., in Git terminology, a merge would be a fast-forward).

Since this repository is intended to be used as a reference, the commit history is intentionally kept clean to make
changes clearly visible. Therefore, modifications (such as bug fixes) will often be merged into whichever commit is
more suitable for them, with the remainder of the commit tree rebased on top of the updated commit. **Please do not
fork this repository to build a new game on top** (unless you intend to contribute to it), as the publicly-visible
history will be repeatedly rewritten, making merges impossible. If you do want to contribute to the repository, let
me know in advance so I can notify you of history rewrites.

For further documentation, check out the [wiki].

## Branches

* `master`: (status: **stable**, last update: **2023-07-18**) Base branch. This branch contains a slightly modified
  version of Pokémon Crystal, with some quality-of-life improvements intended to make development easier. These
  improvements have been taken from the documentation in the [main disassembly repository][pokecrystal]. This branch
  contains no 16-bit features and it is only intended as a reference.
* `base-components`: (status: **stable**, last update: **2023-07-18**) This branch defines the basic components that
  will comprise the 16-bit index table system, on top of which the remaining branches will be built. Since it only
  defines macros (and a handful of WRAM locations to be shared by all index tables), it should build the same ROM as
  `master`.
* `expand-mon-ID`: (status: **stable**, last update: **2023-07-18**) This branch implements 16-bit indexes for Pokémon
  species, thus allowing more than 253 species to be included in a single game.
* `expand-move-ID`: (status: **stable**, last update: **2023-07-18**) This branch implements 16-bit indexes for moves,
  on top of the existing 16-bit support for Pokémon species from the previous branch. (Interaction between the
  branches is kept to a minimum, though.)
* `newbox`: (status: **experimental**, last update: **2023-07-18**) This branch ports Rangi & FIQ's "newbox" from
  Polished Crystal. Newbox is a complete overhaul to Bill's PC, and this branch ports the functionality on
  top of the previous branches.
* `pokecrystal`: (status: **N/A**, last update **2023-07-18**) This branch contains pret's vanilla pokecrystal and
  should only be used to compare with the previous branches to view pokecrystal16 changes. **DO NOT USE THIS BRANCH!**

To view the differences between any two branches (or any two commits in the repository), you can use GitHub's [tree
comparison][compare] tool.

## FAQs

**Q1:** Will this engine include \<insert additional feature here\>?  
**A1:** Unless the feature is specifically related to 16-bit indexing (or otherwise extending the range of possible
index values), the answer is almost certainly "no". This repository's scope is limited to 16-bit indexes. If you
already have a ROM hack that includes the features you like and you'd want it to have 16-bit indexes, the right course
of action would be to port this engine to it. Otherwise, you can use this engine as a base to make your own ROM hack
with all the features you want.

**Q2:** Can I use this engine for my own ROM hack?  
**A2:** Of course; that's what it was made for. I will try make it as easy as possible to port to existing or new ROM
hacks; instructions to do so will be in the [wiki]. All I can ask you for is that, just like this engine was openly
available for you to use, you make your hack's code openly available as well — quoting some of the text in
[SQLite](https://sqlite.org)'s copyright disclaimer, "may you share freely, never taking more than you give".

**Q3:** What's this engine's new limit on indexes?  
**A3:** The theoretical limit is 65,534, minus a couple of "special" indexes used by the game for specific purposes
(such as the value that indicates that a Pokémon is inside an egg). However, there are several limitations that will
probably prevent you from ever reaching that limit. For starters, you can't fit 65,534 of _anything_ inside a ROM
bank! The index work is done, and I'll try to remove any hurdles that would render that work useless; however, if you
want to push the limits of the hardware and add 20,000 new Pokémon, you'll find yourself against a technical challenge
that will go beyond indexes.

[compare]: https://github.com/aaaaaa123456789/pokecrystal16/compare
[pokecrystal]: https://github.com/pret/pokecrystal/
[wiki]: https://github.com/aaaaaa123456789/pokecrystal16/wiki

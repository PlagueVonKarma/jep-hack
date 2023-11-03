# Johto Expansion Pak
This is a ROM Hack of Pokemon Crystal, playing upon the Kanto Expansion Pak's old philosophy. It adds Johto- and Kanto-related Pokemon to Crystal, more interesting locations, and QoL changes.

If playing on an emulator, BGB is strongly recommended for its accuracy and features. Inaccurate emulators, such as VBA and TGB Dual, can experience unintended glitches. This hack is fully playable on official hardware as well.

# New Pokemon
Using the Kanto Expansion Pak's original criteria, the ethos of the Johto Expansion Pak will be to add every "Johto- and Kanto-related Pokemon to Crystal without fundamentally changing the way the game is played." 

What falls under "Johto- and Kanto-related" is a Pokemon is the following, so long as they are, in fact, related:
- Is a regional variant (Eg. Hisuian Sneasel)
- Evolves from or into a Pokemon (eg. Tangrowth, Honchkrow)
- Was cut from the final game (eg. Bellignan, Tricules, Phandarin)
- Is a Paradox equivalent (eg. Walking Wake)
- Would qualify for the Kanto Expansion Pak (eg. Omegadge, Melmetal)

Any Pokemon that you can think of that would come under this, is absolutely in. Dex total is 462!

Mega Evolutions, Gigantamax forms, etc, are currently not in active consideration.

The Fairy-type does exist.

# Changes
## New Features
- There is now an enby character option named Topaz, purple-themed.
- There is a new Nihon region, based on the 1998 version before it got scrapped for Johto. 
- The Fairy-type is now available, though Pokemon are not retroactively changed, per the Kanto Expansion Pak philosophy (you wouldn't want a Fairy-type Granbull pre-split, would you?)

## QoL Changes
- A Trader NPC is available in a new Lake of Rage town area, allowing you to access trade evolutions natively.
- Kurt now makes Apricorn Balls instantly. He's had his coffee and is listening to his favourite music.
- Instant text is now an option!
- Clock reset procedure is now like vanilla GS, requiring just Down + B.
- Tilesets now handle up to 255 titles (from 192), allowing for slightly nicer maps.
- Can now have up to 17 object events.

## Map Changes
In general, there have been many wild encounter tweaks. View this document for details. (will link when hack is in a playable state)

- Johto wild encounters have been changed to be more weighted towards Johto Pokemon; eg. Murkrow is available about Ecruteak at night, Misdreavus largely replaces Gastly, etc.
- Kanto wild encounters have generally higher levels to aid in improving the level curve.
- Rock Smash now has variable and larger wild data, featuring rare, location-based Pokemon (eg. Corsola on the shore), and level adjustments to make them more appropriate.
- Viridian Forest has been restored.
- The Pewter Museum of Science has been restored.
- Cerulean Cave has been restored, complete with a Mewtwo fight!
- The Kanto Safari Zone map from the prototype has been restored.
- The prototype Lake of Rage village has been restored, complete with an Evolution Stone shop and Trader NPC! In general, it's themed around Pokemon evolution.

## Item Changes
- Many evolution stones have been added to accomodate the Pokemon featured here, including the Heart and Poison Stones from the SpaceWorld demo!
- The Fairy Feather from Scarlet and Violet has been added to accomodate the Fairy type.

# Credits
- Plague von Karma (Director, Kanto Expansion Pak Founder, Programming, Maps)
- Martha's Against Humanity (Kanto Expansion Pak ROM Hack Creator, Programmer)
- Zeta_Null (Repository Owner, Spriter, Programming)
- LadyMisticus (Documentation, Programming, Mapping)
- thornAvery (Programming)
- pret et al (LOTS of [Tutorials](https://github.com/pret/pokecrystal/wiki) that we used to get this off the ground!)
- Wiz (Nihon Pokemon names)
- Rezzo (GSC-specific advice)
- Old Dance Jacket (GSC-specific advice)

# Sprite Credits
- Zeta_Null: Topaz sprites, numerous tileset bits, Omegadge, 
- Martha's Against Humanity: Shi-Shi
- EyeDonutz: Walking Wake
- nuuk: (TBD)
- SCMidna: Munchlax
- Pokemon October et al: Bellignan, Caretorker, Inoshika, Bipulla, Sonegg, Kolta, Coinpur, Dodaerie, Bundra, Kiwooked, Koalyptus, Trebir
- Tom Wang: Gold/Chris running sprite
- Seasick: Kris running sprite
- Ferropexola/aforward9600: Time of day-based tileset palette code

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

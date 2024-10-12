; Nihon Trainer Battle theme
; 4/4 rhythm, composed in A Phyrgian.
; This theme is intended for generic trainer battles. It uses the same tempo as the vanilla GSC trainer battle themes, mainly for syncing properly with the encounter animation.
; The scale and the backing patterns are also(mostly) the same, to give the theme a familiar feel. I experimented with different root notes, but they made the track feel too uncanny when compared to what you usually hear in GSC.
; There are four distinct segments to the theme. The first and third create tension, while the second and fourth give an upbeat resolution, to underline the "victory lap" feel of the Nihon region in the context of JEP.
; Also, this theme is probably as close to the vanilla sound as my compositions get. I do think that it fits though, given the high frequency of this theme playing while traversing the region.
; Composed by LuciShrimp.

Music_NihonTrainerBattle:
	channel_count 4
	channel 1, Music_NihonTrainerBattle_Ch1
	channel 2, Music_NihonTrainerBattle_Ch2
	channel 3, Music_NihonTrainerBattle_Ch3
	channel 4, Music_NihonTrainerBattle_Ch4

Music_NihonTrainerBattle_Ch1:
	volume 7, 7
	note_type 12, 12, 2
	tempo 114
	vibrato 10, 3, 5
	duty_cycle 3
	octave 4
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	octave 8
.mainLoop:
	volume_envelope 12, 2
	vibrato 10, 3, 5
	octave 3
	sound_call .sub1
	note_type 12, 12, 2
	sound_call .sub2
	sound_call .sub1
	note_type 12, 12, 2
	sound_call .sub2
	note_type 12, 7, 2
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 3
	note D_, 1
	note F_, 3
	note E_, 1
	note G_, 3
	note E_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note A#, 2
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	duty_cycle 3
	volume_envelope 12, 2
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	note F_, 2
	octave 4
	note F_, 2
	note D_, 2
	octave 3
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note C_, 2
	note A_, 2
	note F_, 2
	note C_, 2
.loop1:
	octave 3
	note A#, 2
	note G_, 2
	note D_, 2
	sound_loop 2, .loop1
	octave 3
	note A#, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note A_, 2
	note F_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note D_, 2
	note A#, 2
	note F_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	octave 4
	note E_, 2
	note C_, 2
	octave 3
	note G_, 2
	note A#, 2
	note F_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	vibrato 12, 2, 3
	volume_envelope 12, 7
	sound_call .sub1
	note_type 12, 12, 7
	sound_call .sub2
	octave 3
	note_type 12, 12, 7
	sound_call .sub1
	note_type 12, 12, 7
	sound_call .sub2
	octave 3
	note_type 12, 12, 7
	sound_call .sub1
	note_type 12, 12, 7
	sound_call .sub2
	octave 3
	note_type 12, 12, 7
	sound_call .sub1
	note_type 12, 12, 7
	sound_call .sub2
	note_type 12, 6, 7
	sound_call .sub3
.loop5:
	note D_, 2
	octave 2
	note D_, 2
	octave 3
	sound_loop 4, .loop5
.loop6:
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	sound_loop 4, .loop6
.loop7:
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	sound_loop 2, .loop7
	note D_, 2
	octave 2
	note D_, 2
	octave 3
	note C_, 2
	octave 1
	note A#, 2
	octave 3
	sound_call .sub3
	note_type 12, 6, 7
	sound_call .sub4
.loop9:
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	sound_loop 2, .loop9
	sound_call .sub4
	note_type 12, 6, 7
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note F_, 2
	octave 2
	note D_, 2
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
.loop4:
	volume_envelope 4, 2
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	sound_loop 4, .loop4
	sound_ret

.sub2:
.loop2:
	volume_envelope 4, 2
	note C#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	sound_loop 4, .loop2
	sound_ret

.sub3:
.loop8:
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	sound_loop 4, .loop8
	sound_ret

.sub4:
.loop10:
	note D_, 2
	octave 2
	note D_, 2
	octave 3
	sound_loop 2, .loop10
	sound_ret

Music_NihonTrainerBattle_Ch2:
	note_type 12, 12, 2
	vibrato 6, 2, 3
	duty_cycle 3
	octave 3
	note A_, 4
	volume_envelope 11, 2
	note A_, 4
	volume_envelope 10, 2
	note A_, 4
	volume_envelope 9, 2
	note A_, 4
	volume_envelope 8, 2
	note A_, 4
	volume_envelope 7, 2
	note A_, 4
	volume_envelope 6, 2
	note A_, 4
	volume_envelope 4, 2
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 8
.mainLoop:
	octave 3
	sound_call .sub1
	volume_envelope 12, 2
	vibrato 10, 3, 5
	note A#, 2
	octave 4
	note C_, 2
	note E_, 2
	note D_, 2
	octave 3
	note_type 12, 4, 2
	sound_call .sub1
	note_type 12, 12, 2
	octave 4
	vibrato 10, 3, 5
	note C_, 2
	note D_, 2
	note E_, 2
	note E_, 2
	duty_cycle 3
	note F_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A_, 2
	note G_, 4
	note F_, 1
	note G_, 1
	note A_, 4
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 2
	note D_, 4
	note E_, 1
	note F_, 1
	note G_, 2
	note A_, 2
	note G_, 2
	note A_, 1
	note A#, 1
	octave 4
	vibrato 12, 2, 3
	volume_envelope 12, 7
	note F_, 8
	note G_, 8
	note A#, 8
	note A_, 8
	note G_, 8
	note F_, 8
	note G_, 16
	note F_, 8
	note G_, 8
	note A#, 8
	octave 5
	note C_, 8
	octave 4
	note A#, 8
	note G_, 8
	note A_, 8
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	sound_call .sub5
	volume_envelope 12, 2
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 1
	octave 4
	rest 1
	note C_, 2
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	note_type 12, 15, 8
	octave 3
	sound_call .sub5
	note_type 12, 12, 2
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A_, 1
	rest 1
	note G_, 2
	rest 2
	note F_, 1
	rest 1
	note E_, 1
	note E_, 1
	octave 3
	sound_call .sub5
	note_type 12, 12, 2
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 1
	rest 1
	octave 4
	note C_, 2
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	octave 3
	sound_call .sub5
	note_type 12, 12, 2
	octave 3
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A_, 2
	note G_, 4
	note F_, 2
	note E_, 2
	note_type 12, 12, 7
	note F_, 16
	note G_, 16
	note A#, 16
	note A_, 8
	note G_, 4
	note F_, 2
	note E_, 2
	note F_, 16
	note G_, 8
	note A_, 8
	note G_, 8
	note F_, 4
	note G_, 4
	note A#, 4
	note A_, 4
	note A#, 1
	note A_, 1
	note G_, 2
	note F_, 2
	note E_, 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 12, 2
	vibrato 10, 3, 5
	note A_, 1
	note A_, 2
	note G_, 1
	note A_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note A_, 2
	note A#, 1
	note A#, 2
	note A_, 1
	note A#, 2
	note A_, 2
	sound_ret

.sub5:
	volume_envelope 12, 4
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	sound_ret

Music_NihonTrainerBattle_Ch3:
	note_type 12, 1, 9
	vibrato 3, 2, 3
	octave 2
	note A_, 2
	note A#, 2
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 2
	note D#, 2
	note E_, 2
	octave 8
.mainLoop:
	octave 2
	volume_envelope 1, 15
.loop1:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 2
	note A_, 2
	octave 3
	note A_, 4
	octave 2
	note A_, 2
	octave 3
	note A_, 4
	note E_, 4
	note_type 12, 1, 9
	octave 2
	note A#, 2
	octave 3
	note A#, 4
	octave 2
	note A#, 2
	octave 3
	note A#, 4
	note F_, 4
	octave 2
	sound_loop 2, .loop1
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 4
	note C_, 1
	octave 3
	note F_, 1
	note A_, 1
	note D_, 1
	note A#, 1
	note E_, 1
	note G_, 1
	note C_, 1
	note A_, 1
	note D_, 1
	note F_, 1
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	note C_, 1
	note E_, 1
	note A_, 1
	note A_, 4
	note A_, 12
	note E_, 2
	note F_, 2
	note G_, 2
	note A#, 1
	octave 4
	note C_, 1
	note D_, 8
	octave 3
	note F_, 2
	octave 4
	note C_, 4
	octave 3
	note F_, 2
	octave 4
	note D_, 4
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note A#, 2
	octave 4
	note F_, 4
	octave 3
	note A#, 2
	octave 4
	note E_, 4
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	octave 3
	note G_, 2
	octave 4
	note D_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 4
	octave 3
	note F_, 1
	octave 4
	note C_, 1
	octave 3
	note F_, 1
	octave 4
	note C_, 1
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	note C_, 2
	note G_, 2
	note C_, 1
	note G_, 1
	note C_, 1
	note G_, 1
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note G_, 2
	sound_call .sub1
	sound_call .sub1
	note_type 12, 1, 15
	octave 3
	sound_call .sub2
	octave 3
.loop3:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	note A#, 2
	note G_, 2
	sound_loop 2, .loop3
	octave 3
.loop6:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note D_, 2
	note A#, 2
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	sound_loop 2, .loop6
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note C_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	note A_, 2
	note E_, 2
	sound_call .sub2
	note_type 12, 1, 15
	octave 3
	sound_call .sub3
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note C_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	sound_call .sub3
	note_type 12, 1, 9
	vibrato 3, 2, 3
	octave 2
	note A_, 2
	octave 3
	note F_, 2
	note A#, 2
	note G_, 2
	note D_, 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note D_, 2
	note G_, 2
	note A_, 2
	note E_, 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
.loop4:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	sound_loop 2, .loop4
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 1
	note A_, 1
.loop5:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	sound_loop 2, .loop5
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 3
	note A#, 2
	note F_, 2
	note A_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	sound_ret

.sub2:
.loop7:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 2
	note A_, 2
	octave 3
	note F_, 2
	note A_, 2
	note F_, 2
	sound_loop 2, .loop7
	sound_ret

.sub3:
	vibrato 3, 2, 3
	volume_envelope 1, 9
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	note A#, 2
	note G_, 2
	octave 4
	sound_ret

Music_NihonTrainerBattle_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
.mainLoop:
	rest 16
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

; Peaceful route theme
; 11/4 rhythm, composed in G Lydian.
; This theme started out as a melody I often play on my guitar. It is very calm and peaceful, and could probably even work as a lullaby.
; With the slow tempo, mellow instruments and simple drum pattern, this theme works well for quiet areas. (I personally picture it playing on a beach in the evening, but I digress)
; Composed by LuciShrimp.

Music_PeacefulTheme:
	channel_count 4
	channel 1, Music_PeacefulTheme_Ch1
	channel 2, Music_PeacefulTheme_Ch2
	channel 3, Music_PeacefulTheme_Ch3
	channel 4, Music_PeacefulTheme_Ch4

Music_PeacefulTheme_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	octave 3
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
.mainLoop:
	duty_cycle 2
	vibrato 18, 2, 5
	volume_envelope 10, 7
	octave 2
	sound_call .sub2
	note_type 12, 10, 7
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 9, 7
	vibrato 18, 2, 3
	duty_cycle 2
	note D#, 4
	note D_, 4
	octave 2
	note A#, 4
	octave 3
	note C_, 4
	note D_, 6
	note D#, 8
	note D_, 2
	note F_, 2
	note G_, 6
	note D#, 2
	note D_, 2
	note F_, 6
	note D#, 4
	octave 2
	note G_, 2
	note A#, 6
	octave 3
	note C_, 4
	octave 2
	note A#, 6
	note A_, 2
	note F_, 4
	note G_, 6
	note F_, 2
	note D#, 2
	sound_ret

.sub2:
	volume_envelope 9, 7
	vibrato 18, 2, 3
	duty_cycle 2
	note F_, 6
	rest 4
	octave 3
	note C_, 1
	note D_, 1
	note D#, 6
	note D_, 3
	octave 2
	note A_, 1
	octave 3
	note F_, 6
	rest 4
	note D_, 1
	note D#, 1
	note F_, 6
	note G_, 3
	note C_, 1
	note D_, 6
	rest 4
	note C_, 1
	note D_, 1
	note D#, 6
	note D_, 3
	octave 2
	note A_, 1
	note A#, 6
	note F_, 2
	note F_, 1
	note F_, 1
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	octave 3
	note C_, 1
	note C_, 1
	note D_, 2
	sound_ret

Music_PeacefulTheme_Ch2:
	note_type 12, 15, 8
	octave 3
	sound_call .sub2
	octave 8
.mainLoop:
	vibrato 18, 2, 5
	duty_cycle 3
	volume_envelope 11, 7
	octave 3
	sound_call .sub1
	note_type 12, 11, 7
	sound_call .sub2
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 3
	vibrato 18, 2, 3
	volume_envelope 10, 7
	note A#, 6
	rest 4
	note G_, 1
	note A_, 1
	note A#, 6
	note A_, 3
	octave 4
	note C_, 1
	octave 3
	note A#, 6
	rest 4
	note A#, 1
	octave 4
	note C_, 1
	note D_, 4
	note C_, 4
	octave 3
	note A_, 2
	note A#, 6
	rest 4
	note F_, 1
	note G_, 1
	note F_, 6
	note D#, 2
	note D#, 1
	note F_, 1
	note D_, 6
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note G_, 2
	note A_, 2
	sound_ret

.sub2:
	duty_cycle 3
	vibrato 18, 2, 3
	volume_envelope 10, 7
	note A#, 4
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note F_, 6
	note A_, 4
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 8
	note G_, 1
	note A_, 1
	note A#, 4
	octave 4
	note D_, 2
	note D_, 2
	octave 3
	note G_, 4
	note A_, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note F_, 2
	note F_, 1
	note F_, 1
	note G_, 4
	note F_, 8
	note G_, 2
	note A_, 2
	note A#, 2
	note A_, 2
	sound_ret

Music_PeacefulTheme_Ch3:
	note_type 12, 1, 0
	octave 2
	sound_call .sub1
	octave 8
	note_type 12, 1, 0
.mainLoop:
	volume_envelope 2, 5
	octave 1
	sound_call .sub2
	note_type 12, 2, 5
	vibrato 18, 2, 5
	sound_call .sub1
	note_type 12, 2, 5
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	vibrato 8, 2, 3
	volume_envelope 2, 5
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 1
	note F_, 1
	octave 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 1
	note F_, 1
	octave 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 1
	note F_, 1
	octave 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note_type 12, 2, 5
	note F_, 1
	note D_, 1
	sound_ret

.sub2:
	vibrato 8, 2, 3
	volume_envelope 2, 5
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	note F_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 1
	note F_, 1
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	note F_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note F_, 1
	note D_, 1
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	note F_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 1
	note F_, 1
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 3
	note F_, 2
	rest 2
	octave 1
	note A#, 2
	octave 2
	note C_, 6
	note D_, 4
	sound_ret

Music_PeacefulTheme_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
.mainLoop:
	toggle_noise
	toggle_noise 3
	octave 5
.loop1:
	drum_note 3, 2
	drum_note 7, 2
	drum_note 7, 2
	drum_note 3, 2
	drum_note 7, 1
	drum_note 3, 1
	drum_note 7, 2
	drum_note 3, 2
	drum_note 7, 1
	drum_note 3, 1
	drum_note 7, 2
	drum_note 3, 2
	drum_note 7, 1
	drum_note 7, 1
	sound_loop 8, .loop1
	drum_speed 12
	octave 8
	sound_loop 0, .mainLoop

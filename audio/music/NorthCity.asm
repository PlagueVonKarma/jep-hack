; North City theme
; 4/4 rhythm, composed in F Minor Natural.
; Like my peaceful theme, this one started out as something I play on my guitar quite often. The Minor Natural scale with a sombre vibe gives this theme a wintery feel, which works well for North City in the context of JEP.
; The rhythm has a strong 3:5 emphasis, making it feel slightly off-center, for the lack of a better term.
; The wave channel emulates a woodwind sound, playing into the winter feel. It also goes plays in three octaves, which surprisingly works well(To me, at least.)
; Composed by LuciShrimp.

Music_NorthCity:
	channel_count 4
	channel 1, Music_NorthCity_Ch1
	channel 2, Music_NorthCity_Ch2
	channel 3, Music_NorthCity_Ch3
	channel 4, Music_NorthCity_Ch4

Music_NorthCity_Ch1:
	volume 7, 7
	note_type 12, 12, 7
	tempo 192
	duty_cycle 3
	vibrato 12, 2, 3
	octave 2
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 6
	note F_, 16
	rest 4
	sound_call .sub3
	note_type 12, 15, 8
	rest 4
	octave 8
.mainLoop:
	octave 3
	sound_call .sub1
	note_type 12, 12, 7
	octave 2
	note C_, 16
	rest 4
	octave 3
	sound_call .sub1
	note_type 12, 12, 7
	octave 2
	note C#, 16
	rest 4
.loop1:
	sound_call .sub2
	note F_, 4
	note D#, 2
	note F_, 4
	note D#, 1
	note F_, 1
	note G#, 4
	note F_, 4
	note D#, 2
	sound_call .sub2
	octave 2
	note_type 12, 12, 7
	note G#, 1
	note D#, 1
	note F_, 16
	rest 4
	sound_loop 2, .loop1
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 2
	note D#, 2
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 2
	note D#, 2
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note C_, 16
	rest 4
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 2
	note D#, 2
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 2
	note D#, 2
	note F_, 4
	note D#, 1
	note C#, 1
	note F_, 4
	note D#, 1
	note C#, 1
	note C_, 16
	rest 4
	sound_call .sub3
	note_type 12, 12, 7
	rest 4
	octave 2
	sound_call .sub3
	octave 8
	note_type 12, 12, 7
	rest 4
	sound_loop 0, .mainLoop

.sub1:
	octave 2
	volume_envelope 12, 7
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 6
	octave 3
	sound_ret

.sub2:
	note F_, 4
	note D#, 1
	note F_, 1
	note D#, 4
	sound_ret

.sub3:
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 10
	note F_, 6
	note D#, 6
	note F_, 16
	sound_ret

Music_NorthCity_Ch2:
	note_type 12, 13, 7
	octave 3
	vibrato 12, 2, 3
	duty_cycle 3
	sound_call .sub1
	rest 4
	octave 8
.mainLoop:
	octave 3
	volume_envelope 13, 7
	sound_call .sub2
	rest 4
	note_type 12, 15, 8
	octave 3
	sound_call .sub1
	note_type 12, 15, 8
	rest 4
	sound_call .sub2
	note_type 12, 15, 8
	rest 4
	octave 3
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
	rest 4
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 13, 7
	note G#, 6
	note F_, 10
	note G#, 3
	note A#, 1
	note G#, 2
	note F_, 10
	note G#, 6
	note F_, 6
	note D#, 16
	rest 4
	note G#, 6
	note F_, 10
	note G#, 3
	note A#, 1
	note G#, 2
	note F_, 10
	note G#, 6
	note F_, 6
	note D#, 16
	sound_ret

.sub2:
	volume_envelope 13, 7
	note D#, 6
	note C#, 6
	octave 2
	note A#, 2
	octave 3
	note C#, 2
	note D#, 3
	note F_, 1
	note D#, 2
	note C#, 6
	octave 2
	note A#, 2
	octave 3
	note C#, 2
	note D#, 6
	note C#, 6
	octave 2
	note A#, 16
	rest 4
	octave 3
	note D#, 6
	note C#, 6
	octave 2
	note A#, 2
	octave 3
	note C#, 2
	note D#, 3
	note F_, 1
	note D#, 2
	note C#, 6
	octave 2
	note A#, 2
	octave 3
	note C#, 2
	note D#, 6
	note C#, 6
	octave 2
	note A#, 16
	sound_ret

Music_NorthCity_Ch3:
	note_type 12, 1, 1
	octave 4
	vibrato 12, 2, 4
	sound_call .sub1
	octave 8
.mainLoop:
	octave 3
	vibrato 12, 2, 4
	volume_envelope 1, 1
	note G#, 8
	octave 4
	note F_, 8
	note G#, 8
	note F_, 2
	note D#, 2
	octave 3
	note A#, 2
	note F_, 2
	note G#, 4
	note A#, 2
	octave 4
	note D#, 1
	note F_, 1
	note G#, 4
	note F_, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note F_, 6
	volume_envelope 3, 1
	note F_, 8
	octave 3
	volume_envelope 1, 1
	vibrato 12, 2, 4
	note G#, 8
	octave 4
	note F_, 4
	note D#, 2
	note F_, 2
	note G#, 8
	note F_, 4
	note D#, 2
	note F_, 2
	note_type 12, 1, 1
	octave 3
	note G#, 6
	note A#, 6
	note G_, 6
	vibrato 0, 2, 4
	volume_envelope 2, 1
	note G_, 6
	volume_envelope 3, 1
	note G_, 8
	octave 5
	volume_envelope 1, 1
	vibrato 12, 2, 4
	note C_, 8
	note G#, 8
	octave 6
	note C#, 8
	note F_, 8
	note D#, 8
	octave 5
	note G#, 4
	note C_, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note C_, 6
	volume_envelope 3, 1
	note C_, 8
	octave 6
	vibrato 12, 2, 4
	volume_envelope 1, 1
	note C#, 8
	octave 5
	note G#, 8
	octave 6
	note F_, 8
	note C#, 8
	octave 5
	note D#, 8
	note C#, 4
	octave 4
	note A#, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note A#, 6
	volume_envelope 3, 1
	note A#, 8
	vibrato 12, 2, 4
	volume_envelope 1, 1
	note G#, 8
	octave 5
	note F_, 8
	note G#, 8
	note F_, 2
	note D#, 2
	octave 4
	note A#, 2
	note F_, 2
	note G#, 4
	note A#, 2
	octave 5
	note D#, 1
	note F_, 1
	note G#, 4
	note F_, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note F_, 6
	volume_envelope 3, 1
	note F_, 8
	octave 4
	volume_envelope 1, 1
	vibrato 12, 2, 4
	note G#, 8
	octave 5
	note F_, 4
	note D#, 2
	note F_, 2
	note G#, 8
	note F_, 4
	note D#, 2
	note F_, 2
	octave 4
	note G#, 6
	note A#, 6
	note G_, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note G_, 6
	volume_envelope 3, 1
	note G_, 8
	note_type 12, 1, 0
	sound_call .sub1
	note_type 12, 1, 0
	vibrato 0, 2, 4
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 1
	vibrato 12, 2, 4
	note C_, 8
	note G#, 8
	octave 5
	note C#, 8
	note F_, 8
	note D#, 8
	octave 4
	note G#, 4
	note C_, 6
	vibrato 0, 2, 4
	volume_envelope 2, 1
	note C_, 6
	volume_envelope 3, 1
	note C_, 8
	octave 5
	volume_envelope 1, 1
	vibrato 12, 2, 4
	note C#, 8
	octave 4
	note G#, 8
	octave 5
	note F_, 8
	note C#, 8
	octave 4
	note D#, 8
	note C#, 4
	octave 3
	note A#, 6
	volume_envelope 2, 1
	vibrato 0, 2, 4
	note A#, 6
	volume_envelope 3, 1
	note A#, 8
	sound_ret

Music_NorthCity_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 6
	sound_call .sub1
	rest 16
	octave 6
	sound_call .sub1
	drum_speed 12
	rest 8
	octave 6
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	octave 8
.mainLoop:
	octave 6
	sound_call .sub2
	drum_speed 12
	octave 6
.loop2:
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 6, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 6, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 6, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 9, 1
	drum_note 4, 1
	drum_note 9, 1
	drum_note 4, 1
	sound_loop 4, .loop2
	octave 6
	sound_call .sub2
	octave 8
	drum_speed 12
	sound_loop 0, .mainLoop

.sub1:
	drum_note 4, 4
	rest 4
	drum_note 4, 4
	rest 4
	drum_note 4, 4
	rest 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	rest 4
	drum_note 4, 4
	drum_note 4, 4
	sound_ret

.sub2:
.loop3:
	drum_note 6, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 2
	drum_note 9, 1
	drum_note 9, 1
	sound_loop 7, .loop3
	drum_note 6, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 8, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_ret

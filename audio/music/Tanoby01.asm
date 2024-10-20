; Tanoby Ruins theme
; 4/4 rhythm, composed in D Locrian.
; This theme is a result of the recent leaks, specifically the concept art of the creature that's hugging the Unown pillar. We named it Alphalith for JEP, and this theme plays in the ruins where it can be found.
; The backing notes make use of the Unown Radio jingles, repurposed as the foundation for this theme. It was quite challenging, let me tell you!
; The Locrian scale was also a very... interesting scale to compose with. It's inherently dissonant, but with the use of 7th chords and simple intervals, it works quite well for what I was envisioning here.
; The chorus part makes use of the Ruins of Alph(technically Union Cave) motif to create even more connection to the Unown. Overall this theme has an adventurous feel, working well for the context of exploring the ruins.
; Composed by LuciShrimp.

Music_Tanoby01:
	channel_count 4
	channel 1, Music_Tanoby01_Ch1
	channel 2, Music_Tanoby01_Ch2
	channel 3, Music_Tanoby01_Ch3
	channel 4, Music_Tanoby01_Ch4

Music_Tanoby01_Ch1:
	volume 7, 7
	note_type 12, 12, 7
	tempo 173
	vibrato 24, 3, 4
	duty_cycle 2
	octave 3
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 6, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 3, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	volume_envelope 12, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 3
	octave 3
	note D#, 1
	note G_, 4
	note F_, 4
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 6, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 3, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	volume_envelope 12, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 3
	octave 3
	note D#, 1
	note G_, 4
	note F_, 4
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 6, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 3, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	volume_envelope 12, 7
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 3
	octave 3
	note D_, 1
	note F_, 4
	note D#, 4
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 6, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 3, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	volume_envelope 12, 7
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 3
	octave 3
	note D_, 1
	note F_, 4
	note D#, 4
	octave 8
.mainLoop:
	octave 3
	sound_call .sub1
	octave 3
	sound_call .sub1
	note_type 12, 15, 8
	octave 3
	sound_call .sub1
	note_type 12, 15, 8
	octave 3
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
.loop3:
	vibrato 24, 3, 4
	duty_cycle 2
	volume_envelope 12, 7
	octave 3
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 6, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 2
	octave 3
	volume_envelope 3, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	volume_envelope 12, 7
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 2
	note G#, 3
	octave 3
	note D#, 1
	note G_, 4
	note F_, 4
	sound_loop 2, .loop3
.loop4:
	vibrato 24, 3, 4
	duty_cycle 2
	volume_envelope 12, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 6, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 2
	volume_envelope 3, 7
	octave 3
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	volume_envelope 12, 7
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note G_, 3
	octave 3
	note D_, 1
	note F_, 4
	note D#, 4
	sound_loop 2, .loop4
	sound_ret

Music_Tanoby01_Ch2:
	note_type 12, 15, 8
	rest 5
	note_type 6, 7, 2
	duty_cycle 1
	vibrato 1, 15, 1
	rest 4
	note_type 12, 7, 2
	rest 14
	note_type 6, 7, 2
	rest 4
	note_type 12, 7, 2
	rest 16
	rest 16
	note_type 6, 7, 2
	rest 4
	note_type 12, 7, 2
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 7
.mainLoop:
	octave 3
	volume_envelope 12, 7
	vibrato 5, 2, 2
	duty_cycle 3
	note G#, 8
	note G_, 8
	note G#, 8
	note A#, 8
	note G#, 8
	note A#, 8
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G#, 2
	note G_, 2
	note A#, 6
	note G#, 2
	note G_, 16
	note G#, 8
	note A#, 8
	note G_, 1
	note G#, 1
	note G_, 14
	octave 4
	note C_, 8
	octave 3
	note A#, 2
	note G#, 1
	note G_, 1
	note G#, 2
	note G_, 2
	note G#, 4
	note G_, 4
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note G_, 2
	note G#, 4
	note G_, 4
	volume_envelope 5, -7
	note A#, 8
	vibrato 0, 2, 2
	volume_envelope 12, 7
	note A#, 4
	octave 4
	vibrato 5, 2, 2
	note C_, 4
	octave 3
	note G#, 2
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	volume_envelope 5, -7
	note G_, 12
	volume_envelope 12, 7
	vibrato 0, 2, 2
	note G_, 4
	vibrato 5, 2, 2
	note G#, 4
	note F_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note G_, 1
	note G#, 1
	volume_envelope 5, -7
	note G_, 10
	volume_envelope 12, 7
	vibrato 0, 2, 2
	note G_, 4
	octave 4
	vibrato 32, 2, 2
	volume_envelope 5, -7
	note C_, 12
	vibrato 0, 2, 2
	volume_envelope 12, 7
	note C_, 4
	vibrato 5, 2, 2
	octave 3
	note G#, 4
	note G_, 4
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note G_, 2
	note G#, 4
	note G_, 4
	volume_envelope 5, -7
	note A#, 8
	vibrato 0, 2, 2
	volume_envelope 12, 7
	note A#, 4
	octave 4
	vibrato 5, 2, 2
	note C_, 4
	octave 3
	note G#, 2
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	octave 4
	volume_envelope 5, -7
	note C_, 12
	volume_envelope 12, 7
	vibrato 0, 2, 2
	note C_, 4
	vibrato 5, 2, 2
	note D#, 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	octave 4
	volume_envelope 5, -7
	note C_, 12
	volume_envelope 12, 7
	vibrato 0, 2, 2
	note C_, 4
	vibrato 32, 2, 2
	volume_envelope 5, -7
	note G_, 12
	vibrato 0, 2, 2
	volume_envelope 12, 7
	note G_, 4
	vibrato 5, 2, 2
	note G_, 10
	note_type 12, 12, 7
	note F_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note G#, 1
	note G_, 8
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note D_, 1
	note D#, 2
	note D_, 4
	note C_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note G_, 2
	note D#, 2
	note F_, 2
	note D_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D_, 1
	note D#, 1
	note F_, 10
	note D#, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note G#, 1
	note G_, 1
	note F_, 8
	note G_, 4
	volume_envelope 5, -7
	note A#, 16
	vibrato 0, 2, 2
	volume_envelope 12, 7
	note A#, 4
	octave 4
	vibrato 5, 2, 2
	volume_envelope 5, -7
	note C_, 12
	octave 3
	volume_envelope 12, 7
	note A#, 1
	note G#, 1
	note G_, 1
	note F_, 1
	octave 8
	sound_loop 0, .mainLoop

Music_Tanoby01_Ch3:
	note_type 12, 1, 0
	octave 3
	sound_call .sub1
	octave 8
	note_type 12, 1, 0
.mainLoop:
	octave 3
	sound_call .sub1
	note_type 12, 1, 1
	octave 3
	vibrato 7, 1, 2
	sound_call .sub1
	note_type 12, 1, 0
	octave 3
	sound_call .sub1
	note_type 12, 1, 0
	octave 3
	sound_call .sub1
	octave 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
.loop3:
	vibrato 7, 1, 2
	octave 2
	volume_envelope 1, 1
	note D_, 2
	note F_, 2
	note G#, 2
	octave 3
	note C_, 2
	octave 2
	volume_envelope 3, 1
	note D_, 2
	note F_, 2
	note G#, 2
	octave 3
	note C_, 2
	octave 2
	volume_envelope 1, 1
	note D_, 2
	note F_, 2
	note G#, 2
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	volume_envelope 3, 1
	note F_, 2
	volume_envelope 1, 1
	note G#, 2
	octave 3
	volume_envelope 3, 1
	note C_, 2
	sound_loop 2, .loop3
	volume_envelope 1, 1
.loop4:
	vibrato 7, 1, 2
	octave 2
	volume_envelope 1, 1
	note C_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	volume_envelope 3, 1
	note C_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	volume_envelope 1, 1
	note C_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	note G#, 2
	volume_envelope 3, 1
	note D#, 2
	volume_envelope 1, 1
	note G_, 2
	volume_envelope 3, 1
	note A#, 2
	octave 3
	sound_loop 2, .loop4
	sound_ret

Music_Tanoby01_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 6
	toggle_noise
	toggle_noise 3
.loop2:
	drum_note 4, 8
	drum_note 4, 6
	drum_note 2, 2
	sound_loop 7, .loop2
	drum_note 4, 3
	drum_note 2, 1
	drum_note 4, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	octave 8
	toggle_noise
	toggle_noise 0
.mainLoop:
	octave 6
	toggle_noise
	toggle_noise 3
	sound_call .sub1
	drum_speed 12
	toggle_noise
	toggle_noise 3
	octave 6
.loop1:
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 3
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 3
	drum_note 2, 1
	octave 5
	drum_note 12, 1
	octave 6
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 3
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 4
	octave 6
	drum_note 2, 3
	drum_note 2, 1
	octave 5
	drum_note 12, 1
	octave 6
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_loop 2, .loop1
	drum_speed 12
	octave 6
	sound_call .sub1
	octave 8
	sound_loop 0, .mainLoop

.sub1:
.loop3:
	octave 5
	drum_note 12, 2
	octave 6
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 2, 4
	drum_note 2, 1
	drum_note 2, 1
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_loop 2, .loop3
	sound_ret

; Cool Cave theme
; 4/4 rhythm, composed in F Phrygian.
; Custom waveforms are required, specifically the 10th one from the JEP wave_samples.asm file.
; This theme started out with two ideas. Firstly, I really wanted to try my hand at negative harmony. I initially composed this in G Major and just went and inverted all the intervals. The vibe of the song is something I probably
;   would not have cooked up without this plan.
; Secondly, I really, REALLY wanted to do something with a high pitched wave channel after listening to the absolutely AMAZING sinjohsample theme that Zeta_Null cooked up. I've only really used the wave channel for backing
;   up until now, but I'm very happy with how the kind of futuristic wave notes contrast the bass line on Channel 1, which starts out sounding very metal-like and later becomes a lot more energetic.
; Channel 2 takes a sort of mixed role between lead and backing, which I really quite like. Overall, I am just very happy with this theme and could probably write 10 more paragraphs, but I digress.
; Composed by LuciShrimp.


Music_CoolCave:
	channel_count 4
	channel 1, Music_CoolCave_Ch1
	channel 2, Music_CoolCave_Ch2
	channel 3, Music_CoolCave_Ch3
	channel 4, Music_CoolCave_Ch4

Music_CoolCave_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	octave 2
	sound_call .sub2
	octave 8
	note_type 12, 15, 8
.mainLoop:
	tempo 202
	duty_cycle 2
	octave 2
	vibrato 9, 2, 2
	volume_envelope 15, 7
	sound_call .sub1
	vibrato 10, 2, 2
	tempo 201
	duty_cycle 3
	volume_envelope 12, 7
	octave 1
	note A#, 3
	note A#, 1
	octave 2
	note F_, 2
	note D#, 2
	octave 1
	note A#, 3
	note_type 9, 12, 7
	note A#, 1
	octave 2
	note_type 3, 12, 7
	note D_, 1
	note_type 12, 12, 7
	note D#, 2
	note C#, 1
	note C_, 1
	octave 1
	note A#, 3
	note A#, 1
	octave 2
	note D#, 2
	note C#, 2
	note C_, 4
	octave 1
	note G#, 4
	note A#, 3
	note A#, 1
	octave 2
	note F_, 2
	note D#, 2
	octave 1
	note A#, 3
	note_type 9, 12, 7
	note A#, 1
	octave 2
	note_type 3, 12, 7
	note G_, 1
	note_type 12, 12, 7
	note G#, 2
	note F#, 1
	note F_, 1
	note C_, 3
	note C_, 1
	note D#, 2
	note C#, 2
	note C_, 4
	octave 1
	note G#, 4
	note A#, 8
	note D#, 8
	note G#, 8
	note C#, 8
	note F_, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note F#, 2
	octave 2
	note C#, 2
	octave 1
	note F#, 2
	octave 2
	note C#, 2
	octave 1
	note D#, 1
	note A#, 1
	note D#, 1
	note A#, 1
	note F#, 4
	octave 2
	sound_call .sub1
	note_type 12, 15, 7
	octave 3
	sound_loop 0, .mainLoop

.sub1:
	vibrato 10, 2, 2
	tempo 201
	duty_cycle 3
	octave 1
	volume_envelope 12, 7
	note F_, 3
	note F_, 1
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	note F_, 3
	note_type 9, 12, 7
	note F_, 1
	note_type 3, 12, 7
	note A_, 1
	note_type 12, 12, 7
	note A#, 2
	note G#, 1
	note F#, 1
	note F_, 3
	note F_, 1
	note G#, 2
	note F#, 2
	note F_, 3
	note F_, 1
	note D#, 4
	note F_, 3
	note F_, 1
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	note F_, 3
	note_type 9, 12, 7
	note F_, 1
	note_type 3, 12, 7
	note A_, 1
	note_type 12, 12, 7
	note A#, 2
	note G#, 1
	note F#, 1
	note F_, 3
	note F_, 1
	note G#, 2
	note F#, 2
	note F_, 3
	note F_, 1
	note F#, 4
	octave 2
	sound_ret

.sub2:
	vibrato 10, 2, 2
	tempo 201
	duty_cycle 3
	octave 1
	volume_envelope 12, 7
	note F_, 3
	note F_, 1
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	note F_, 3
	note_type 9, 12, 7
	note F_, 1
	note_type 3, 12, 7
	note A_, 1
	note_type 12, 12, 7
	note A#, 2
	note G#, 1
	note F#, 1
	note F_, 3
	note F_, 1
	note G#, 2
	note F#, 2
	note F_, 3
	note F_, 1
	note D#, 4
	note F_, 3
	note F_, 1
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	note F_, 3
	note_type 9, 12, 7
	note F_, 1
	note_type 3, 12, 7
	note A_, 1
	note_type 12, 12, 7
	note A#, 2
	note G#, 1
	note F#, 1
	note F_, 3
	note F_, 1
	note G#, 2
	note F#, 2
	note F_, 3
	note F_, 1
	note F#, 4
	octave 2
	sound_ret

Music_CoolCave_Ch2:
	note_type 12, 12, 7
	duty_cycle 3
	vibrato 13, 3, 3
	octave 4
	note C_, 8
	volume_envelope 6, 7
	note C_, 8
	rest 8
	volume_envelope 12, 7
	note C#, 8
	note C_, 8
	volume_envelope 6, 7
	note C_, 8
	note_type 12, 12, 7
	rest 8
	note D#, 8
	volume_envelope 2, 7
	octave 8
.mainLoop:
	volume_envelope 12, 7
	octave 4
	note C_, 4
	note C#, 4
	octave 3
	note A#, 8
	note F#, 8
	note F_, 4
	note D#, 1
	note F_, 1
	note F#, 1
	note G#, 1
	octave 4
	note C_, 8
	volume_envelope 6, 7
	note C_, 8
	note_type 12, 12, 7
	octave 3
	note F#, 8
	note G#, 4
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	octave 3
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G#, 2
	note F_, 2
	note F#, 8
	note D#, 4
	octave 2
	note A#, 1
	octave 3
	note C_, 1
	note C#, 1
	note D#, 1
	note F_, 8
	note F#, 4
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note D#, 4
	note C#, 4
	note C_, 2
	octave 3
	note A#, 2
	note G#, 2
	note A#, 2
	sound_call .sub1
	rest 1
	octave 3
	sound_call .sub1
	note_type 12, 6, 7
	rest 1
	octave 3
	volume_envelope 12, 7
	sound_call .sub2
	rest 1
	octave 3
	sound_call .sub2
	note_type 12, 6, 7
	rest 1
	octave 3
	volume_envelope 12, 7
.loop1:
	volume_envelope 12, 7
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	octave 4
	rest 1
	volume_envelope 6, 7
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	sound_loop 2, .loop1
.loop2:
	volume_envelope 12, 7
	octave 4
	note C#, 1
	octave 3
	note F#, 1
	sound_loop 4, .loop2
	octave 2
.loop3:
	octave 3
	note A#, 1
	note D#, 1
	octave 2
	sound_loop 2, .loop3
	octave 3
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 8
	volume_envelope 6, 7
	note C_, 8
	rest 8
	volume_envelope 12, 7
	note C#, 7
	octave 3
	note A#, 1
	octave 4
	note C_, 8
	volume_envelope 6, 7
	note C_, 8
	note_type 12, 12, 7
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note D#, 4
	note F_, 4
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 12, 7
	octave 4
	note D#, 1
	rest 1
	volume_envelope 6, 7
	note D#, 1
	rest 1
	volume_envelope 12, 7
	octave 3
	note A#, 1
	rest 1
	volume_envelope 6, 7
	note A#, 1
	octave 2
	sound_ret

.sub2:
	volume_envelope 12, 7
	octave 4
	note C_, 1
	rest 1
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 12, 7
	octave 3
	note G#, 1
	rest 1
	volume_envelope 6, 7
	note G#, 1
	octave 2
	sound_ret

Music_CoolCave_Ch3:
	note_type 12, 1, 11
	vibrato 3, 2, 2
	octave 5
	sound_call .sub1
	octave 8
	rest 1
.mainLoop:
	octave 6
	volume_envelope 1, 3
	sound_call .sub2
	vibrato 3, 2, 2
	octave 5
	volume_envelope 1, 10
	note D#, 2
	octave 4
	note G#, 1
	note G#, 1
	octave 5
	volume_envelope 2, 10
	note D#, 2
	octave 4
	note G#, 1
	note G#, 1
	octave 5
	volume_envelope 1, 10
	note C#, 2
	octave 4
	note F#, 1
	note F#, 1
	octave 5
	volume_envelope 2, 10
	note C#, 2
	octave 4
	note F#, 1
	note F#, 1
	octave 6
	sound_call .sub2
	note_type 12, 1, 10
	octave 5
	note G#, 2
	note C#, 1
	note C#, 1
	volume_envelope 2, 10
	note G#, 2
	note C#, 1
	note C#, 1
	volume_envelope 1, 10
	note F#, 2
	note C_, 1
	note C_, 1
	volume_envelope 2, 10
	note F#, 2
	note C_, 1
	note C_, 1
	volume_envelope 1, 11
.loop1:
	volume_envelope 1, 10
	octave 5
	note A#, 2
	note D#, 1
	note D#, 1
	volume_envelope 2, 10
	note A#, 2
	note D#, 1
	note D#, 1
	volume_envelope 3, 10
	note A#, 2
	note D#, 1
	note D#, 1
	note A#, 2
	note D#, 1
	note D#, 1
	octave 6
	volume_envelope 1, 10
	note C#, 2
	octave 5
	note F#, 1
	note F#, 1
	octave 6
	volume_envelope 2, 10
	note C#, 2
	octave 5
	note F#, 1
	note F#, 1
	octave 6
	volume_envelope 1, 10
	note D#, 2
	octave 5
	note G#, 1
	note G#, 1
	octave 6
	note F_, 2
	octave 5
	note A#, 1
	note A#, 1
	note A#, 2
	note D#, 1
	note D#, 1
	note A#, 2
	note D#, 1
	note D#, 1
	volume_envelope 3, 10
	note A#, 2
	note D#, 1
	note D#, 1
	note A#, 2
	note D#, 1
	note D#, 1
	octave 6
	volume_envelope 1, 10
	note C#, 2
	octave 5
	note F#, 1
	note F#, 1
	octave 6
	volume_envelope 2, 10
	note C#, 2
	octave 5
	note F#, 1
	note F#, 1
	note A#, 2
	note D#, 1
	note D#, 1
	note F#, 2
	note C_, 1
	note C_, 1
	sound_loop 2, .loop1
	sound_call .sub1
	octave 8
	note_type 12, 2, 11
	rest 1
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 10
	note F_, 1
	rest 1
	volume_envelope 2, 10
	note F_, 1
	rest 1
	volume_envelope 3, 10
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	volume_envelope 1, 10
	note F_, 1
	rest 1
	volume_envelope 2, 10
	note F_, 1
	rest 1
	volume_envelope 3, 10
	note F_, 1
	rest 1
	note F_, 1
	note_type 12, 3, 3
	rest 1
	volume_envelope 1, 10
	note F#, 1
	rest 1
	volume_envelope 2, 10
	note F#, 1
	rest 1
	volume_envelope 3, 10
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	volume_envelope 1, 10
	note D#, 1
	rest 1
	volume_envelope 2, 10
	note D#, 1
	rest 1
	volume_envelope 3, 10
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	volume_envelope 1, 10
	note F_, 1
	rest 1
	volume_envelope 2, 10
	note F_, 1
	rest 1
	volume_envelope 3, 10
	note F_, 1
	rest 1
	note F_, 1
	note_type 12, 3, 3
	rest 1
	volume_envelope 1, 10
	note F_, 1
	rest 1
	volume_envelope 2, 10
	note F_, 1
	rest 1
	volume_envelope 3, 10
	note F_, 1
	rest 1
	note F_, 1
	note_type 12, 3, 3
	rest 1
	volume_envelope 1, 10
	note G#, 1
	rest 1
	volume_envelope 2, 10
	note G#, 1
	rest 1
	volume_envelope 3, 10
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 1, 10
	octave 5
	note A#, 1
	rest 1
	volume_envelope 2, 10
	note A#, 1
	octave 6
	rest 1
	volume_envelope 1, 10
	note C_, 1
	rest 1
	volume_envelope 2, 10
	note C_, 1
	sound_ret

.sub2:
	vibrato 3, 2, 2
	octave 5
	volume_envelope 1, 10
	note F_, 2
	octave 4
	note A#, 1
	note A#, 1
	octave 5
	volume_envelope 2, 10
	note F_, 2
	octave 4
	note A#, 1
	note A#, 1
	octave 5
	volume_envelope 3, 10
	note F_, 2
	octave 4
	note A#, 1
	note A#, 1
	octave 5
	note F_, 2
	octave 4
	note A#, 1
	note A#, 1
	octave 5
	sound_ret

Music_CoolCave_Ch4:
	toggle_noise 0
	drum_speed 12
	toggle_noise
	toggle_noise 4
	octave 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 2, 1
	rest 1
	drum_note 2, 1
	drum_note 2, 1
	octave 8
.mainLoop:
	octave 6
	sound_call .sub1
	drum_speed 12
	octave 6
.loop1:
	octave 2
	drum_note 12, 1
	rest 1
	octave 3
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 2
	drum_note 4, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 3, 1
	octave 6
	sound_loop 4, .loop1
	octave 6
	sound_call .sub1
	octave 8
	drum_speed 12
	sound_loop 0, .mainLoop

.sub1:
	octave 2
	drum_note 12, 1
	rest 3
	octave 3
	drum_note 3, 1
	rest 2
	drum_note 4, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 3
	drum_note 4, 1
	rest 3
	drum_note 3, 1
	rest 2
	drum_note 4, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 3, 1
	octave 2
	drum_note 12, 1
	rest 3
	octave 3
	drum_note 3, 1
	rest 2
	drum_note 4, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 3
	drum_note 4, 1
	rest 3
	drum_note 3, 1
	rest 2
	drum_note 4, 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 3, 1
	octave 7
	sound_ret

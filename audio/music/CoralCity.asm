; Coral City theme
; 4/4 rhythm, composed in D Mixolydian.
; Behold, a harbor town! The wave channel uses a sawtooth waveform, emulating an accordeon(At least I think that's the English name), which works really well in my opinion.
; The Mixolydian scale gives the theme a centered feeling, without going too deep into dramatic territory(As I tend to do with my music, but alas).
; Other than that, this theme, uhhhhh, just sounds harbor-y. I am not sure how to explain it, to be honest. It does invoke the feeling for me and I grew up close to a harbor town, so it checks out in my head!
; Composed by LuciShrimp.

Music_CoralCity:
	channel_count 4
	channel 1, Music_CoralCity_Ch1
	channel 2, Music_CoralCity_Ch2
	channel 3, Music_CoralCity_Ch3
	channel 4, Music_CoralCity_Ch4

Music_CoralCity_Ch1:
	volume 7, 7
	note_type 12, 12, 7
	duty_cycle 3
	vibrato 13, 1, 3
	tempo 200
	octave 2
	note A_, 8
	note D_, 8
	note A_, 8
	note F#, 8
	note A_, 8
	note G_, 4
	note E_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	octave 8
.mainLoop:
	octave 2
	volume_envelope 12, 7
	note A_, 8
	note D_, 4
	note E_, 2
	note F#, 1
	note G_, 1
	note A_, 8
	note F#, 4
	note E_, 2
	note F#, 1
	note G_, 1
	note A_, 8
	note G_, 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note D_, 12
	octave 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 12
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note E_, 4
	note C_, 4
	note D_, 4
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 1
	note A_, 8
	note B_, 4
	octave 2
	note D_, 4
	note C_, 8
	note D_, 4
	note F#, 4
	note E_, 8
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note E_, 8
	note D_, 4
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note D_, 12
	octave 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 12
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note E_, 4
	note C_, 4
	note D_, 4
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

Music_CoralCity_Ch2:
	note_type 12, 12, 7
	vibrato 7, 1, 1
	duty_cycle 3
	octave 4
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	rest 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note C_, 1
	rest 1
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 3, 7
	note C_, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	rest 1
	volume_envelope 6, 7
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	rest 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note C_, 1
	rest 1
	volume_envelope 6, 7
	note C_, 1
	rest 1
	volume_envelope 3, 7
	note C_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	volume_envelope 6, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note F#, 1
	rest 1
	volume_envelope 6, 7
	note F#, 1
	rest 1
	volume_envelope 3, 7
	note F#, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	rest 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note F#, 1
	rest 1
	volume_envelope 6, 7
	note F#, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	rest 1
	volume_envelope 6, 7
	note E_, 1
	rest 1
	volume_envelope 3, 7
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	volume_envelope 6, 7
	note G_, 1
	rest 1
	volume_envelope 3, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	rest 1
	volume_envelope 6, 7
	note A_, 1
	rest 1
	octave 8
.mainLoop:
	octave 4
	volume_envelope 12, 7
	note D_, 6
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 4
	note F#, 1
	note E_, 1
	note D_, 2
	note C_, 8
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 1
	note E_, 1
	note F#, 14
	note E_, 2
	note F#, 8
	note G_, 4
	note F#, 4
	note E_, 6
	note D_, 2
	note E_, 8
	note F#, 14
	note E_, 2
	note F#, 8
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note E_, 8
	note F#, 4
	note E_, 4
	note G_, 8
	note D_, 2
	note E_, 2
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 8
	octave 4
	note B_, 2
	note A_, 2
	note G_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 8
	note D_, 4
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 4
	note B_, 4
	note F#, 2
	note A_, 2
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 8
	note F#, 4
	note E_, 2
	note D_, 1
	note C#, 1
	note D_, 8
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	note E_, 4
	note D_, 8
	note_type 8, 12, 7
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note E_, 2
	note_type 12, 12, 7
	note D_, 8
	note C_, 4
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

Music_CoralCity_Ch3:
	note_type 12, 1, 0
	octave 3
	sound_call .sub1
	volume_envelope 1, 4
	note B_, 4
	note A_, 4
	sound_call .sub1
	note_type 12, 1, 4
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	octave 8
.mainLoop:
	octave 3
	sound_call .sub2
	volume_envelope 1, 4
	note B_, 4
	note A_, 4
	sound_call .sub2
	note_type 12, 1, 4
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	octave 3
	sound_call .sub3
	octave 4
	volume_envelope 1, 4
	note D_, 4
	note C_, 4
	octave 3
	sound_call .sub3
	note_type 12, 1, 4
	octave 4
	note D_, 4
	note F#, 4
	octave 3
	sound_call .sub4
	octave 4
	volume_envelope 1, 4
	note E_, 4
	note D_, 4
	octave 3
	sound_call .sub4
	note_type 12, 1, 4
	octave 4
	note E_, 4
	note G_, 4
	octave 3
	sound_call .sub5
	octave 4
	volume_envelope 1, 4
	note D_, 4
	note C_, 4
	octave 3
	sound_call .sub5
	note_type 12, 1, 4
	octave 3
	note B_, 4
	note A_, 2
	note E_, 2
	octave 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 4
	note D_, 2
	note G_, 2
	note E_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note G_, 2
	note F#, 2
	note E_, 4
	note D_, 2
	note G_, 2
	note E_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	sound_ret

.sub2:
	volume_envelope 1, 4
	note D_, 2
	note G_, 1
	note F#, 1
	note E_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note G_, 2
	note F#, 2
	note E_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 2
	note G_, 1
	note F#, 1
	note E_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	sound_ret

.sub3:
	volume_envelope 1, 4
	note F#, 2
	note B_, 1
	note A_, 1
	note G_, 2
	note D_, 1
	note E_, 1
	note B_, 2
	note A_, 2
	note G_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note B_, 1
	note A_, 1
	note G_, 2
	note D_, 1
	note E_, 1
	sound_ret

.sub4:
	volume_envelope 1, 4
	note G_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 2
	note E_, 1
	note F#, 1
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note E_, 1
	note F#, 1
	note G_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 2
	note E_, 1
	note F#, 1
	sound_ret

.sub5:
	volume_envelope 1, 4
	note F#, 2
	note B_, 1
	note A_, 1
	note G_, 2
	note D_, 1
	note E_, 1
	note B_, 2
	note A_, 2
	note G_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note B_, 1
	note A_, 1
	note G_, 2
	note D_, 1
	note E_, 1
	sound_ret

Music_CoralCity_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 6
	toggle_noise
	toggle_noise 3
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 3
	octave 5
	drum_note 11, 1
	octave 6
	drum_note 1, 1
	drum_note 1, 3
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 3
	octave 5
	drum_note 11, 1
	octave 6
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 1
	octave 5
	drum_note 11, 1
	rest 1
	drum_note 11, 1
	rest 1
	drum_note 11, 1
	rest 1
	octave 6
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	rest 1
	octave 5
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	octave 8
.mainLoop:
	octave 5
.loop1:
	drum_note 12, 2
	octave 6
	drum_note 1, 2
	drum_note 1, 2
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 2
	drum_note 1, 2
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 1, 2
	drum_note 1, 2
	octave 5
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 11, 1
	octave 6
	drum_note 1, 1
	drum_speed 6
	drum_note 1, 2
	octave 5
	drum_speed 12
	drum_note 12, 2
	octave 6
	drum_note 1, 1
	drum_note 2, 1
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	drum_note 2, 1
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	drum_note 2, 1
	octave 5
	drum_note 12, 2
	octave 6
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 2
	octave 5
	drum_note 12, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 12, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 12, 2
	octave 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	octave 5
	sound_loop 4, .loop1
	octave 8
	sound_loop 0, .mainLoop

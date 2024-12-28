; Sepia City theme
; 4/4 rhythm, composed in A Lydian.
; This theme aims to invoke a similar vibe to the Peaceful route theme, utilizing the same mode(But a different key) and a bit more tempo for a more "towny" sound.
; Getting this one done took me quite a while. I went through countless ideas and temporarily burnt myself out as I did not want this theme to sound too similar to the one on the route next to the city.
; This took me quite a few attempts, but here we are!
; Composed by LuciShrimp.

Music_SepiaCity:
	channel_count 4
	channel 1, Music_SepiaCity_Ch1
	channel 2, Music_SepiaCity_Ch2
	channel 3, Music_SepiaCity_Ch3
	channel 4, Music_SepiaCity_Ch4

Music_SepiaCity_Ch1:
	volume 7, 7
	note_type 12, 8, 7
	vibrato 24, 2, 4
	tempo 289
	duty_cycle 3
	octave 1
	note A_, 4
	note F#, 4
	octave 2
	note C#, 4
	octave 1
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 1
	octave 8
.mainLoop:
	octave 1
	volume_envelope 7, 7
	vibrato 24, 2, 4
	duty_cycle 1
	tempo 289
	note A_, 6
	note B_, 1
	octave 2
	note C#, 1
	note F#, 8
	octave 1
	note A_, 6
	note B_, 1
	octave 2
	note C#, 1
	note F#, 4
	note E_, 4
	note C#, 6
	octave 1
	note B_, 6
	note A_, 4
	octave 2
	note C#, 6
	note E_, 1
	note F#, 1
	note G#, 2
	note A_, 2
	note D#, 2
	note E_, 2
	octave 1
	note A_, 6
	note B_, 1
	octave 2
	note C#, 1
	note F#, 4
	note E_, 4
	octave 1
	note A_, 6
	note B_, 1
	octave 2
	note C#, 1
	note F#, 2
	note G#, 2
	note E_, 2
	note D#, 2
	note C#, 6
	note E_, 1
	note F#, 1
	note G#, 8
	note C#, 6
	note E_, 1
	note F#, 1
	note G#, 2
	note A_, 2
	note G#, 2
	note F#, 2
	sound_call .sub1
	octave 2
	volume_envelope 7, 7
	vibrato 24, 2, 4
	duty_cycle 1
	tempo 289
	note E_, 4
	note C#, 2
	note D#, 1
	note E_, 1
	note F#, 8
	sound_call .sub1
	note_type 12, 7, 7
	octave 2
	vibrato 24, 2, 4
	duty_cycle 1
	tempo 289
	note E_, 4
	note C#, 2
	note D#, 1
	note E_, 1
	note F#, 3
	note D#, 1
	octave 1
	note B_, 2
	note G#, 2
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	octave 2
	volume_envelope 7, 7
	vibrato 24, 2, 4
	duty_cycle 1
	tempo 289
	note E_, 4
	note C#, 2
	note E_, 1
	note F#, 1
	note A_, 4
	note G#, 4
	octave 3
	sound_ret

Music_SepiaCity_Ch2:
	note_type 12, 10, 6
	vibrato 20, 2, 4
	duty_cycle 3
	octave 3
	note C#, 4
	octave 2
	note A_, 4
	note B_, 4
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 1
	octave 8
.mainLoop:
	volume_envelope 10, 7
	vibrato 20, 2, 4
	duty_cycle 1
	octave 2
	note E_, 6
	note F#, 2
	note G#, 4
	note C#, 2
	note E_, 1
	note F#, 1
	note A_, 2
	octave 3
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 2
	note B_, 2
	octave 3
	note C#, 4
	octave 2
	note A_, 4
	note G#, 2
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note F#, 6
	note B_, 4
	note E_, 1
	note D#, 1
	octave 1
	note B_, 1
	octave 2
	note D#, 1
	note E_, 2
	note G#, 1
	note B_, 1
	note E_, 2
	note D#, 1
	note F#, 1
	note G#, 4
	note E_, 6
	note D#, 6
	note C#, 2
	note E_, 1
	note F#, 1
	note A_, 2
	note G#, 1
	note A_, 1
	note B_, 1
	octave 3
	note C#, 1
	octave 2
	note B_, 4
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	octave 2
	note F#, 1
	note A_, 1
	note F#, 1
	note G#, 6
	note F#, 6
	note B_, 4
	note G#, 6
	note F#, 6
	note G#, 4
	note B_, 4
	note G#, 1
	note A_, 1
	note B_, 6
	note A_, 1
	note G#, 1
	note F#, 2
	note G#, 4
	note A_, 1
	note B_, 1
	octave 3
	note C#, 6
	octave 2
	note B_, 2
	note A_, 2
	note G#, 4
	note F#, 1
	note A_, 1
	note B_, 6
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 4
	octave 2
	note B_, 2
	octave 3
	note C#, 4
	octave 2
	note B_, 2
	note A_, 1
	note F#, 1
	note E_, 1
	note D#, 1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

Music_SepiaCity_Ch3:
	note_type 12, 1, 1
	vibrato 22, 2, 4
	rest 16
	octave 8
.mainLoop:
	octave 4
	sound_call .sub1
	vibrato 22, 2, 4
	volume_envelope 1, 1
	octave 5
	note G#, 2
	note F#, 2
	note E_, 2
	note D#, 2
	octave 4
	note B_, 6
	octave 5
	note D#, 1
	note C#, 1
	octave 4
	note B_, 6
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	note A_, 6
	note G#, 1
	note B_, 1
	octave 5
	note C#, 2
	note D#, 1
	note C#, 1
	note D#, 2
	octave 4
	note B_, 1
	note G#, 1
	sound_call .sub1
	note_type 12, 1, 1
	vibrato 22, 2, 4
	octave 5
	note G#, 1
	note E_, 1
	note F#, 1
	note D#, 1
	note E_, 1
	note C#, 1
	note D#, 1
	octave 4
	note B_, 1
	octave 5
	note E_, 6
	note D#, 1
	note C#, 1
	octave 4
	note B_, 6
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	octave 5
	note D#, 6
	octave 4
	note G#, 1
	note B_, 1
	octave 5
	note C#, 2
	note D#, 2
	note C#, 2
	octave 4
	note A_, 2
	note B_, 6
	octave 5
	note E_, 1
	note D#, 1
	note C#, 4
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	note D#, 4
	note C#, 2
	note D#, 2
	note E_, 4
	note D#, 1
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note B_, 4
	note A_, 4
	octave 5
	note C#, 4
	octave 4
	note B_, 4
	note G#, 8
	note A_, 4
	note G#, 4
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	vibrato 22, 2, 4
	volume_envelope 1, 1
	octave 4
	note A_, 2
	note B_, 2
	note G#, 2
	note A_, 2
	octave 5
	note C#, 1
	octave 4
	note B_, 3
	octave 5
	note E_, 1
	note D#, 3
	note F#, 8
	octave 4
	sound_ret

Music_SepiaCity_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 6
	toggle_noise
	toggle_noise 3
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 9, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 1, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	octave 8
.mainLoop:
	octave 6
	toggle_noise
	toggle_noise 3
.loop1:
	drum_note 9, 2
	drum_note 2, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 3, 2
	drum_note 9, 2
	drum_note 2, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	sound_loop 8, .loop1
.loop2:
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 3, 2
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	sound_loop 4, .loop2
	drum_speed 12
	octave 8
	sound_loop 0, .mainLoop

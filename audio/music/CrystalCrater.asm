; Mt. Moon Crater Depths theme
; A rearrangement of the Area Zero theme from Scarlet/Violet by Toby Fox.
; Oh boy, this theme. As cheesy as it may sound, this theme appeared in my head while I was in a very bad mental state, and from there everything just flowed. I also managed to learn how to do Stereo sounds in Crystal Tracker!
; This theme has a sense of sombre finality. The stereo panning aims to emulate an echo effect that would occur in a big cavern.
; Honestly I do not have much more to say about it, other than this is my favorite self-made JEP creation by a massive margin. 
; Composed by LuciShrimp.

Music_CrystalCrater:
	channel_count 4
	channel 1, Music_CrystalCrater_Ch1
	channel 2, Music_CrystalCrater_Ch2
	channel 3, Music_CrystalCrater_Ch3
	channel 4, Music_CrystalCrater_Ch4

Music_CrystalCrater_Ch1:
	volume 7, 7
	note_type 12, 0, 8
	duty_cycle 3
	stereo_panning FALSE, TRUE
	tempo 192
	vibrato 14, 1, 5
	octave 2
	note G#, 1
	octave 8
	rest 16
	rest 15
.mainLoop:
	octave 3
	tempo 186
	duty_cycle 3
	vibrato 3, 2, 0
	stereo_panning FALSE, TRUE
	volume_envelope 12, 7
.loop1:
	volume_envelope 12, 7
	tempo 192
	octave 2
	stereo_panning TRUE, TRUE
	vibrato 14, 1, 5
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 12, 7
	note A#, 1
	volume_envelope 6, 7
	note A#, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 12, 7
	note A#, 1
	volume_envelope 6, 7
	note A#, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	octave 3
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	octave 2
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	volume_envelope 6, 7
	octave 3
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	volume_envelope 4, 7
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 7
	note F#, 1
	volume_envelope 4, 7
	octave 3
	note C#, 1
	volume_envelope 2, 7
	note C#, 1
	volume_envelope 2, 8
	octave 2
	stereo_panning FALSE, TRUE
	note F#, 1
	volume_envelope 1, 7
	note F#, 1
	volume_envelope 2, 7
	octave 3
	note C#, 1
	volume_envelope 1, 7
	note C#, 1
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 1
	note F#, 1
	octave 3
	note C#, 1
	note C#, 1
	volume_envelope 12, 7
	octave 2
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 12, 7
	note A#, 1
	volume_envelope 6, 7
	note A#, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 12, 7
	note A#, 1
	volume_envelope 6, 7
	note A#, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	octave 3
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	octave 2
	stereo_panning FALSE, TRUE
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	volume_envelope 6, 7
	octave 3
	note C#, 1
	volume_envelope 3, 7
	note C#, 1
	volume_envelope 4, 7
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 7
	note F#, 1
	volume_envelope 4, 7
	octave 3
	note C#, 1
	volume_envelope 2, 7
	note C#, 1
	volume_envelope 2, 8
	octave 2
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 1, 7
	note F#, 1
	volume_envelope 2, 7
	octave 3
	note C#, 1
	volume_envelope 1, 7
	note C#, 1
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 1
	note F#, 1
	octave 3
	note C#, 1
	note C#, 1
	sound_loop 8, .loop1
	note_type 12, 2, 7
	sound_loop 0, .mainLoop

Music_CrystalCrater_Ch2:
	note_type 12, 15, 8
	rest 16
	rest 16
.mainLoop:
	octave 3
	duty_cycle 3
	volume_envelope 6, 7
	vibrato 3, 3, 3
	note C#, 12
	rest 4
	note F_, 8
	note F#, 8
	note C#, 1
	note D#, 1
	note C#, 12
	rest 2
	note A#, 8
	note G#, 4
	note F#, 2
	note F_, 1
	note D#, 1
	note C#, 12
	rest 4
	note F_, 8
	note F#, 8
	note G#, 12
	rest 4
	note A#, 8
	note G#, 4
	volume_envelope 6, 8
	note F#, 1
	volume_envelope 9, 7
	note G#, 1
	volume_envelope 10, 7
	note A#, 1
	octave 4
	volume_envelope 11, 7
	note C#, 1
	volume_envelope 12, 7
	stereo_panning TRUE, TRUE
	sound_call .sub1
	note_type 12, 7, 7
	octave 3
	vibrato 7, 3, 3
	note C#, 8
	volume_envelope 5, 7
	note C#, 8
	volume_envelope 3, 7
	note C#, 8
	volume_envelope 1, 7
	note C#, 8
	volume_envelope 7, 7
	note C#, 1
	note D#, 1
	note C#, 8
	volume_envelope 5, 7
	note C#, 8
	volume_envelope 3, 7
	note C#, 6
	volume_envelope 7, 7
	note F_, 4
	note D#, 4
	note C#, 8
	octave 2
	note F#, 4
	note G#, 4
	octave 3
	note F_, 12
	note F#, 4
	note F_, 1
	note F#, 1
	note F_, 14
	note D#, 4
	note F_, 4
	note F#, 4
	vibrato 22, 3, 3
	note A#, 1
	volume_envelope 9, 7
	note B_, 1
	octave 4
	volume_envelope 10, 7
	note C#, 1
	volume_envelope 11, 7
	note D#, 1
	note_type 12, 15, 8
	sound_call .sub1
	octave 4
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
.loop2:
	volume_envelope 12, 7
	vibrato 22, 3, 4
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	octave 3
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	octave 4
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	volume_envelope 4, 7
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 7
	note D#, 1
	volume_envelope 4, 8
	note G#, 1
	volume_envelope 2, 8
	note G#, 1
	volume_envelope 2, 6
	stereo_panning TRUE, FALSE
	note D#, 1
	volume_envelope 3, 6
	note D#, 1
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	note G#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
	note D#, 1
	note G#, 1
	note G#, 1
	volume_envelope 12, 7
	note F_, 1
	volume_envelope 6, 7
	note F_, 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 6, 7
	note F#, 1
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	octave 3
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	octave 4
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 1
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	stereo_panning TRUE, FALSE
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 3, 7
	note G#, 1
	volume_envelope 4, 7
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 7
	note D#, 1
	volume_envelope 4, 8
	note G#, 1
	volume_envelope 2, 8
	note G#, 1
	volume_envelope 2, 6
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 1, 6
	note D#, 1
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	note G#, 1
	stereo_panning TRUE, TRUE
	note D#, 1
	note D#, 1
	note G#, 1
	note G#, 1
	sound_loop 2, .loop2
	sound_ret

Music_CrystalCrater_Ch3:
	note_type 12, 1, 0
	rest 16
	rest 16
.mainLoop:
	stereo_panning TRUE, TRUE
	octave 1
	vibrato 1, 0, 0
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	stereo_panning FALSE, TRUE
	note F#, 2
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning FALSE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	stereo_panning TRUE, FALSE
	note G#, 2
	octave 1
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 8
	stereo_panning TRUE, FALSE
	volume_envelope 1, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	vibrato 12, 0, 0
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	octave 2
	volume_envelope 2, 10
	note F_, 2
	stereo_panning FALSE, TRUE
	note F#, 2
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	octave 1
	volume_envelope 3, 10
	note G#, 2
	stereo_panning FALSE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	stereo_panning TRUE, FALSE
	note G#, 2
	octave 1
	volume_envelope 1, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	stereo_panning FALSE, TRUE
	note F#, 2
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning FALSE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	stereo_panning TRUE, FALSE
	note G#, 2
	octave 1
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	volume_envelope 1, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 10
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	octave 2
	volume_envelope 2, 10
	note F_, 2
	stereo_panning FALSE, TRUE
	note F#, 2
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note D#, 2
	stereo_panning TRUE, TRUE
	octave 1
	volume_envelope 3, 10
	note G#, 2
	stereo_panning FALSE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	stereo_panning TRUE, FALSE
	note G#, 2
	octave 1
	volume_envelope 1, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 2, 10
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 3, 10
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	octave 2
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

Music_CrystalCrater_Ch4:
	toggle_noise 0
	octave 6
	drum_speed 12
	sound_call .sub1
	octave 6
	drum_speed 12
.mainLoop:
	octave 6
	toggle_noise
	toggle_noise 2
	stereo_panning TRUE, TRUE
.loop1:
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning FALSE, TRUE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	stereo_panning FALSE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 3, 1
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 6, 1
	stereo_panning FALSE, TRUE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning FALSE, TRUE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	stereo_panning FALSE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 3, 1
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 6, 1
	stereo_panning FALSE, TRUE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning FALSE, TRUE
	drum_note 3, 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 3, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	stereo_panning TRUE, FALSE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 6, 1
	stereo_panning FALSE, TRUE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	rest 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	drum_note 3, 4
	rest 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	drum_note 3, 2
	drum_note 3, 2
	rest 9
	stereo_panning TRUE, FALSE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 6, 1
	stereo_panning FALSE, TRUE
	drum_note 6, 1
	sound_loop 4, .loop1
	stereo_panning TRUE, TRUE
	drum_speed 12
	sound_loop 0, .mainLoop

.sub1:
	toggle_noise
	toggle_noise 2
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	rest 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	drum_note 3, 4
	rest 3
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	drum_note 3, 2
	drum_note 3, 2
	rest 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	stereo_panning TRUE, FALSE
	drum_note 6, 1
	stereo_panning TRUE, TRUE
	drum_note 6, 1
	stereo_panning FALSE, TRUE
	drum_note 6, 1
	sound_ret

; Flooded Shrine theme
; 4/4 rhythm, composed in A# Dorian.
; This theme is meant for the flooded shrine in Ochre, the area where the player will find Alphalith and Unown.
; The wave channel plays a repeating motif, with the waveform approximating a watery tech sound. My goal with this one was to create a mysterious vibe, accentuated by the faint Unown jingles from the Unown Radio "theme",
;   slowed and pitch-corrected to fit into the music.
; The backing utilizes a fade in/fade out effect to further push the mysterious vibe of the theme.
; I intentionally kept the hints at Alphalith and Unown vague and low in number. The Alphalith Battle/Encounter themes already go very heavily into the Unown motif, and I didn't want the whole area to turn into a repetitive soundscape.
; Composed by LuciShrimp.

Music_FloodedShrine:
	channel_count 4
	channel 1, Music_FloodedShrine_Ch1
	channel 2, Music_FloodedShrine_Ch2
	channel 3, Music_FloodedShrine_Ch3
	channel 4, Music_FloodedShrine_Ch4

Music_FloodedShrine_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	tempo 169
	duty_cycle 3
	volume_envelope 3, -7
	vibrato 12, 2, 2
	octave 1
.loop1:
	volume_envelope 3, -7
	vibrato 12, 2, 2
	tempo 207
	note A#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note A#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note G#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note G#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	octave 2
	note C_, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C_, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note C#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C#, 8
	octave 1
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note A#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note A#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note G#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note G#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	octave 2
	note C#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note C_, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C_, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note C_, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C_, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	note D#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note D#, 8
	volume_envelope 3, -7
	vibrato 12, 2, 2
	sound_call .sub1
	vibrato 12, 2, 2
	volume_envelope 3, -7
	octave 1
	note G#, 8
	volume_envelope 10, 7
	vibrato 0, 2, 2
	note G#, 4
	octave 2
	note C#, 4
	volume_envelope 3, -7
	vibrato 13, 2, 2
	note C_, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C_, 8
	note_type 12, 3, -7
	vibrato 12, 2, 2
	note C#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note C#, 8
	note_type 12, 3, -7
	vibrato 12, 2, 2
	note D#, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note D#, 8
	note F_, 4
	note D#, 4
	note C_, 4
	octave 1
	note G#, 4
	sound_loop 2, .loop1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 3, -7
	vibrato 12, 2, 2
	octave 1
	note F_, 8
	vibrato 0, 2, 2
	volume_envelope 10, 7
	note F_, 8
	octave 2
	sound_ret

Music_FloodedShrine_Ch2:
	note_type 12, 15, 8
.mainLoop:
	vibrato 14, 3, 3
	duty_cycle 3
	volume_envelope 14, 7
	octave 3
	note F_, 16
	note D#, 12
	volume_envelope 3, 7
	vibrato 0, 3, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note C#, 1
	volume_envelope 14, 7
	vibrato 14, 3, 3
	note G_, 16
	volume_envelope 5, 7
	note F_, 2
	octave 4
	note C_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	volume_envelope 14, 7
	note F_, 16
	note D#, 16
	note G#, 16
	octave 2
	volume_envelope 5, 7
	sound_call .sub1
	volume_envelope 14, 7
	note G_, 16
	note A#, 16
	octave 4
	note C_, 16
	octave 2
	sound_call .sub1
	note_type 12, 14, 7
	note G_, 16
	note G#, 16
	note A#, 12
	volume_envelope 3, 7
	vibrato 0, 3, 1
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	octave 3
	volume_envelope 5, 7
	sound_call .sub2
	note_type 12, 14, 7
	octave 4
	note F_, 12
	octave 3
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
	note D#, 8
	note C#, 4
	octave 3
	note A#, 4
	volume_envelope 14, 4
	octave 4
	note C_, 3
	volume_envelope 13, 4
	note C_, 3
	volume_envelope 12, 4
	note C_, 3
	volume_envelope 11, 4
	note C_, 3
	volume_envelope 14, 7
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	octave 3
	note A#, 8
	volume_envelope 3, 7
	vibrato 0, 3, 1
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	volume_envelope 14, 7
	vibrato 14, 3, 3
	note F_, 2
	note G_, 1
	note G#, 1
	note A#, 12
	note G_, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 16
	volume_envelope 14, 4
	note F_, 3
	volume_envelope 13, 4
	note F_, 3
	volume_envelope 12, 4
	note F_, 3
	volume_envelope 11, 4
	note F_, 3
	volume_envelope 14, 7
	note D#, 4
	note F_, 16
	note D#, 12
	octave 3
	note G_, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 8
	note C_, 4
	octave 3
	note G#, 4
	note A#, 16
	volume_envelope 5, 7
	note F_, 2
	octave 4
	note C_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	volume_envelope 3, 7
	vibrato 0, 3, 1
	octave 3
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	octave 4
	note_type 12, 14, 7
	vibrato 14, 3, 3
	note D#, 6
	note C#, 6
	octave 3
	note A#, 4
	octave 4
	note F_, 6
	note C#, 6
	octave 3
	note A#, 4
	octave 4
	volume_envelope 14, 3
	note F_, 3
	volume_envelope 13, 3
	note F_, 3
	volume_envelope 12, 3
	note F_, 3
	volume_envelope 11, 3
	note F_, 3
	volume_envelope 14, 7
	note D#, 4
	note F_, 8
	note D#, 2
	note C#, 2
	note C_, 2
	octave 3
	note G#, 2
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	octave 3
	volume_envelope 5, 7
	note F_, 2
	octave 4
	note C_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	sound_ret

.sub2:
	volume_envelope 5, 7
	vibrato 14, 3, 3
	note F_, 2
	octave 4
	note C_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	sound_ret

Music_FloodedShrine_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 3
	volume_envelope 2, 0
.loop1:
	sound_call .sub1
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	octave 5
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	sound_call .sub1
	note_type 12, 1, 3
	octave 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 3, 3
	note F_, 1
	octave 5
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note C_, 1
	volume_envelope 2, 3
	note C_, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	sound_call .sub1
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	volume_envelope 1, 3
	octave 5
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	sound_call .sub2
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	octave 5
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 3
	note G_, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	octave 3
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	octave 5
	stereo_panning FALSE, TRUE
	note C_, 1
	volume_envelope 2, 3
	note C_, 1
	volume_envelope 3, 3
	note C_, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 3
	note G_, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	octave 3
	sound_call .sub2
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	octave 5
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 3, 3
	note C#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 3
	note G_, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	octave 3
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	octave 5
	stereo_panning FALSE, TRUE
	note C_, 1
	volume_envelope 2, 3
	note C_, 1
	volume_envelope 3, 3
	note C_, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 3
	note G_, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note C#, 1
	volume_envelope 2, 3
	note C#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	octave 3
	sound_call .sub2
	sound_loop 2, .loop1
	octave 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 5
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 3, 3
	note D#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	sound_ret

.sub2:
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 5
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 3, 3
	note D#, 1
	octave 4
	rest 3
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	note_type 12, 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 5
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note C_, 1
	volume_envelope 2, 3
	note C_, 1
	octave 4
	volume_envelope 1, 3
	stereo_panning TRUE, FALSE
	note A#, 1
	volume_envelope 2, 3
	note A#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note G#, 1
	volume_envelope 2, 3
	note G#, 1
	volume_envelope 1, 3
	stereo_panning FALSE, TRUE
	note D#, 1
	volume_envelope 2, 3
	note D#, 1
	volume_envelope 1, 3
	stereo_panning TRUE, TRUE
	note F_, 1
	volume_envelope 2, 3
	note F_, 1
	octave 3
	sound_ret

Music_FloodedShrine_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 7
	toggle_noise
	toggle_noise 4
.loop1:
	octave 5
	drum_note 10, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 10, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 2
	octave 7
	sound_loop 7, .loop1
	octave 7
.loop2:
	octave 5
	drum_note 10, 2
	drum_note 2, 2
	drum_note 2, 3
	drum_note 2, 1
	drum_note 2, 4
	drum_note 2, 3
	drum_note 2, 1
	drum_note 10, 2
	drum_note 2, 2
	drum_note 2, 3
	drum_note 2, 1
	drum_note 10, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	octave 7
	sound_loop 9, .loop2
	octave 8
	drum_speed 12
	sound_loop 0, .mainLoop

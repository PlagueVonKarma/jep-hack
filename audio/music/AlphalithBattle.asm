; Alphalith battle theme
; 5/4 and 11/4 rhythms, composed in F Phrygian.
; This theme uses a custom waveform. Specifically, the 12th wave from JEP's wave_samples.asm file is required for proper playback.
;
; Oh, this theme. We got a lot of concept art thanks to the Teraleak, and this is our interpretation of the creature that is hugging the pillar with Unown symbols all over it.
; The theme reflects a tangential relation to the Unown, with a slowed-down version of the Unown Radio jingle as the leitmotif. 
; This theme's rhythmic changes between 5/4 and 11/4, along with the Phrygian scale give this theme an ancient and somewhat otherworldy feel, further amplified by the wave notes bouncing through the metaphorical room via stereo panning.
; There may be more to this theme than meets the, uh, ear, but finding out about that is an exercise left to the viewer of this file. A riddle, wrapped in a mystery!
; Composed by LuciShrimp.

Music_AlphalithBattle:
	channel_count 4
	channel 1, Music_AlphalithBattle_Ch1
	channel 2, Music_AlphalithBattle_Ch2
	channel 3, Music_AlphalithBattle_Ch3
	channel 4, Music_AlphalithBattle_Ch4

Music_AlphalithBattle_Ch1:
	volume 7, 7
	note_type 12, 9, 7
	tempo 134
	vibrato 0, 2, 2
	duty_cycle 3
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
.mainLoop:
	octave 3
.loop1:
	volume_envelope 12, 7
	sound_call .sub1
	octave 1
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 12, 7
	note A_, 8
	octave 3
	sound_loop 2, .loop1
	vibrato 17, 2, 2
	octave 1
	duty_cycle 3
	volume_envelope 12, 4
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note B_, 12
	octave 2
	note D_, 4
	note F#, 2
	note E_, 2
	octave 1
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note B_, 12
	note_type 12, 12, 4
	note A_, 4
	note G_, 2
	note F#, 2
	vibrato 17, 4, 3
	sound_call .sub2
	note_type 12, 12, 7
	vibrato 17, 2, 2
	duty_cycle 3
	note A_, 4
	note G_, 2
	note F#, 2
	octave 3
	sound_call .sub3
	note_type 12, 12, 7
	sound_call .sub3
	note_type 12, 10, 2
	octave 1
	vibrato 3, 2, 2
.loop2:
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note D_, 2
	note F_, 2
	note A_, 2
	octave 2
	note C#, 2
	note E_, 2
	octave 1
	note D_, 2
	note F_, 2
	note A_, 2
	octave 2
	note C_, 2
	note D_, 2
	octave 1
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note F#, 2
	note A_, 2
	octave 2
	note C_, 2
	note E_, 2
	note G_, 2
	octave 1
	note D_, 2
	note F#, 2
	note A_, 2
	octave 2
	note C_, 2
	note D_, 2
	octave 1
	sound_loop 3, .loop2
	octave 1
	vibrato 3, 2, 2
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note E_, 2
	note G_, 2
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	octave 1
	note D_, 2
	note F_, 2
	note A_, 2
	octave 2
	note C#, 2
	note E_, 2
	octave 1
	note D_, 2
	note F_, 2
	note A_, 2
	octave 2
	note C_, 2
	note D_, 2
	octave 1
	volume_envelope 10, 7
	vibrato 17, 2, 2
	note E_, 10
	note G_, 10
	note_type 12, 10, 7
	note A_, 10
	octave 2
	note C_, 10
	sound_loop 0, .mainLoop

.sub1:
	vibrato 17, 2, 2
	octave 1
	duty_cycle 3
	volume_envelope 12, 7
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note B_, 12
	octave 2
	note D_, 4
	note F#, 2
	note E_, 2
	octave 1
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note_type 12, 12, 7
	note B_, 12
	octave 3
	sound_ret

.sub2:
	vibrato 17, 2, 2
	octave 1
	duty_cycle 3
	volume_envelope 12, 7
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note B_, 12
	octave 2
	note D_, 4
	note F#, 2
	note E_, 2
	octave 1
	note B_, 12
	octave 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note B_, 12
	sound_ret

.sub3:
.loop7:
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note E_, 2
	octave 1
	note G_, 1
	note B_, 1
	octave 3
	sound_loop 3, .loop7
	octave 3
.loop8:
	vibrato 17, 2, 2
	octave 2
	duty_cycle 3
	volume_envelope 10, 2
	note D_, 2
	octave 1
	note G_, 2
	octave 3
	sound_loop 3, .loop8
	octave 3
.loop9:
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note E_, 2
	octave 1
	note G_, 1
	note B_, 1
	octave 3
	sound_loop 3, .loop9
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note F#, 2
	note C_, 2
	note F#, 2
	note C_, 1
	note D_, 1
	octave 3
.loop11:
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note E_, 2
	octave 1
	note G_, 1
	note B_, 1
	octave 3
	sound_loop 3, .loop11
	octave 3
.loop12:
	vibrato 17, 2, 2
	octave 2
	duty_cycle 3
	volume_envelope 10, 2
	note D_, 2
	octave 1
	note G_, 2
	octave 3
	sound_loop 3, .loop12
	octave 3
.loop13:
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note G_, 2
	octave 1
	note B_, 1
	octave 2
	note D_, 1
	octave 3
	sound_loop 3, .loop13
	octave 2
	vibrato 17, 2, 2
	duty_cycle 3
	volume_envelope 10, 2
	note F#, 2
	note C_, 2
	note F#, 1
	note E_, 1
	note C_, 1
	note D_, 1
	sound_ret

Music_AlphalithBattle_Ch2:
	duty_cycle 3
	note_type 12, 1, 7
	rest 3
	note_type 6, 6, 7
	octave 3
	note F#, 1
	rest 1
	note E_, 1
	note_type 1, 2, 7
	rest 6
	note_type 6, 6, 7
	note E_, 3
	rest 1
	note D_, 1
	note_type 1, 2, 7
	rest 6
	note_type 12, 3, 7
	rest 1
	note_type 6, 6, 7
	note E_, 1
	note_type 1, 3, 7
	rest 6
	note_type 6, 6, 7
	note F#, 3
	note_type 1, 3, 7
	rest 6
	note_type 6, 6, 7
	note G_, 1
	note_type 1, 4, 7
	rest 6
	note_type 12, 4, 7
	rest 1
	note_type 6, 6, 7
	note G#, 1
	note_type 1, 4, 7
	rest 6
	note_type 6, 6, 7
	note G#, 1
	note_type 1, 4, 7
	rest 6
	note_type 12, 5, 7
	vibrato 5, 1, 1
	rest 1
	note_type 6, 6, 7
	note F#, 1
	note_type 1, 5, 7
	rest 6
	note_type 12, 5, 7
	rest 1
	note_type 6, 6, 7
	note F#, 3
	rest 1
	note E_, 1
	note_type 12, 6, 7
	rest 1
	note_type 6, 6, 7
	rest 1
	note D_, 3
	note_type 6, 7, 7
	rest 1
	volume_envelope 6, 7
	note E_, 1
	rest 1
	note F#, 1
	note_type 12, 7, 7
	rest 1
	note_type 1, 6, 7
	rest 6
	note_type 6, 6, 7
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	note_type 12, 8, 7
	rest 1
	note_type 1, 8, 7
	rest 6
	note_type 12, 8, 7
.mainLoop:
	volume_envelope 11, 7
	vibrato 5, 1, 1
	octave 3
	note F#, 2
	note E_, 1
	note G_, 1
	note F#, 2
	note D_, 2
	note D_, 4
	note A_, 4
	note G_, 2
	note E_, 2
	note F#, 2
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note D_, 2
	note E_, 4
	note A_, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note_type 12, 11, 7
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note D_, 2
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note A_, 4
	note G_, 2
	note E_, 2
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note D_, 2
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note D_, 2
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 4
	octave 4
	sound_call .sub1
	volume_envelope 11, 7
	vibrato 5, 1, 1
	octave 3
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	note F#, 2
	octave 4
	note C_, 2
	volume_envelope 6, 7
	octave 3
	note C_, 2
	note F#, 2
	octave 4
	note C_, 2
	volume_envelope 3, 7
	octave 3
	note C_, 2
	note F#, 2
	octave 4
	sound_call .sub1
	note_type 12, 11, 7
	vibrato 5, 1, 1
	octave 2
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note_type 6, 11, 7
	note F#, 3
	rest 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	note_type 12, 11, 7
	rest 1
	note_type 6, 11, 7
	rest 1
	note E_, 3
	rest 1
	note F#, 3
	rest 1
	note F#, 3
	rest 3
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 3
	rest 3
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 3
	note_type 12, 11, 7
	rest 1
	note_type 6, 11, 7
	rest 1
	note E_, 3
	rest 1
	note E_, 1
	rest 3
	note F#, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	note_type 1, 11, 7
	rest 6
	note_type 12, 11, 7
	rest 1
	note_type 6, 11, 7
	note F#, 1
	note_type 1, 11, 7
	rest 6
	note_type 6, 11, 7
	note F#, 3
	note_type 12, 11, 7
	rest 1
	note_type 6, 11, 7
	rest 1
	note F#, 1
	rest 1
	note A_, 3
	rest 1
	note A_, 1
	note_type 12, 11, 7
	rest 1
	note_type 6, 11, 7
	rest 1
	octave 4
	note C_, 3
	octave 3
	rest 1
	note B_, 3
	rest 3
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 5
	note F#, 3
	rest 1
	note F#, 3
	rest 3
	note F#, 1
	rest 1
	note A_, 3
	rest 3
	note A_, 3
	rest 1
	note G_, 1
	rest 3
	note E_, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 3
	rest 3
	note F#, 1
	rest 3
	note F#, 3
	rest 1
	note F#, 1
	rest 1
	note E_, 3
	rest 1
	note E_, 3
	rest 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 3
	rest 1
	note E_, 1
	rest 3
	note F#, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note F#, 3
	rest 1
	note A_, 1
	rest 1
	note A_, 3
	rest 1
	octave 4
	note C_, 3
	octave 3
	rest 3
	note B_, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 3
	rest 3
	note G_, 3
	note_type 1, 11, 7
	rest 16
	rest 2
	note_type 6, 11, 7
	note F#, 3
	rest 1
	note F#, 3
	rest 1
	note F#, 3
	rest 3
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 4
	octave 2
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	octave 4
	note_type 12, 11, 7
	sound_call .sub2
	vibrato 5, 1, 1
	octave 3
	note G_, 6
	note E_, 1
	note F#, 1
	note E_, 10
	note D_, 1
	note E_, 1
	note B_, 4
	note A_, 4
	note G_, 4
	note A_, 8
	note D_, 2
	note E_, 1
	note F#, 1
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 6
	volume_envelope 6, 7
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	volume_envelope 3, 7
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	note G_, 1
	volume_envelope 2, 7
	note F#, 1
	sound_call .sub2
	note_type 12, 11, 7
	vibrato 5, 1, 1
	octave 3
	note G_, 6
	note E_, 1
	note F#, 1
	note E_, 10
	note F#, 1
	note A_, 1
	note B_, 4
	note A_, 2
	note G_, 1
	note F#, 1
	note D_, 10
	note E_, 1
	note G_, 1
	note A_, 4
	note G_, 4
	note F#, 4
	note G_, 10
	volume_envelope 6, 7
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	volume_envelope 3, 7
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note_type 12, 11, 7
	vibrato 12, 2, 2
	note E_, 12
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 12
	note C_, 4
	octave 3
	note A_, 4
	note B_, 8
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	note D_, 4
	note E_, 2
	note D_, 4
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 8
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 12
	octave 3
	note A_, 2
	note B_, 1
	octave 4
	note C_, 1
	note D_, 4
	octave 3
	note B_, 12
	note A_, 8
	octave 4
	note C_, 4
	octave 3
	note A_, 2
	note B_, 4
	note F#, 2
	note A_, 4
	note G_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 12
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note G_, 12
	note A_, 4
	octave 5
	note D_, 4
	octave 4
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note F#, 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 1
	note E_, 2
	note C_, 2
	note D_, 2
	octave 4
	note B_, 2
	octave 5
	note G_, 2
	note D_, 4
	note E_, 2
	note D_, 4
	note C_, 2
	octave 4
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	octave 3
	note B_, 4
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note E_, 2
	note C_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 12
	octave 3
	note A_, 2
	note B_, 1
	octave 4
	note C_, 1
	note D_, 4
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note F#, 8
	note A_, 8
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 2
	note B_, 4
	note F#, 2
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note E_, 1
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 11, 7
	vibrato 5, 1, 1
	octave 3
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	volume_envelope 5, 7
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	volume_envelope 3, 7
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 2
	note G_, 1
	note F#, 1
	octave 4
	sound_ret

.sub2:
	volume_envelope 11, 7
	vibrato 5, 1, 1
	octave 3
	note E_, 6
	note D_, 1
	note E_, 1
	note G_, 4
	note A_, 4
	octave 5
	sound_ret

Music_AlphalithBattle_Ch3:
	vibrato 0, 1, 3
	note_type 12, 3, 12
	octave 1
	note B_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note_type 12, 2, 12
	note B_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 1
	note F#, 1
	octave 2
.mainLoop:
	octave 3
	note_type 12, 1, 0
	vibrato 5, 2, 1
	sound_call .sub1
	octave 3
	sound_call .sub1
	note_type 12, 1, 2
	octave 3
.loop1:
	sound_call .sub2
	volume_envelope 1, 12
	vibrato 0, 1, 3
	octave 3
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	octave 2
	volume_envelope 1, 12
	note B_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	sound_call .sub2
	note_type 12, 1, 12
	octave 3
	vibrato 0, 1, 3
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note F#, 1
	note E_, 1
	note D_, 1
	note C_, 1
	sound_call .sub2
	note_type 12, 1, 12
	vibrato 0, 1, 3
	octave 3
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	octave 2
	volume_envelope 1, 12
	note B_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C_, 1
	sound_call .sub2
	note_type 12, 1, 12
	octave 3
	vibrato 0, 1, 3
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note F#, 1
	note E_, 1
	note D_, 1
	note C_, 1
	sound_loop 2, .loop1
.loop3:
	sound_call .sub3
	volume_envelope 1, 12
	vibrato 0, 1, 3
	octave 3
	note C_, 1
	note D_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, FALSE
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	octave 2
	volume_envelope 1, 12
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	octave 3
	stereo_panning TRUE, TRUE
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	sound_call .sub3
	note_type 12, 1, 12
	vibrato 0, 1, 3
	octave 3
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	octave 2
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	octave 3
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	sound_call .sub3
	note_type 12, 1, 12
	vibrato 0, 1, 3
	octave 3
	note C_, 1
	note D_, 1
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, FALSE
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	octave 2
	volume_envelope 1, 12
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	octave 3
	stereo_panning TRUE, TRUE
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 3, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	stereo_panning TRUE, TRUE
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 3, 12
	stereo_panning FALSE, TRUE
	note D_, 1
	note D_, 1
	volume_envelope 1, 12
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	sound_loop 2, .loop3
	note_type 12, 1, 12
	octave 2
.loop4:
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 3, 12
	note G_, 1
	volume_envelope 1, 12
	note A_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning FALSE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note G_, 1
	note B_, 1
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	note D_, 1
	note A_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 3, 12
	note A_, 1
	volume_envelope 1, 12
	note G_, 1
	stereo_panning FALSE, TRUE
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note E_, 1
	note F#, 1
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note C_, 1
	note G_, 1
	stereo_panning FALSE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 3, 12
	note G_, 1
	volume_envelope 1, 12
	note A_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note G_, 1
	note B_, 1
	stereo_panning FALSE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	note D_, 1
	note A_, 1
	note_type 12, 1, 12
	stereo_panning TRUE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 3, 12
	note A_, 1
	volume_envelope 1, 12
	note B_, 1
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note A_, 1
	note F#, 1
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note D_, 1
	note G_, 1
	stereo_panning FALSE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note D_, 1
	note A_, 1
	sound_loop 3, .loop4
	volume_envelope 1, 12
	octave 2
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 3, 12
	note G_, 1
	volume_envelope 1, 12
	note A_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning FALSE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note G_, 1
	note B_, 1
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	note D_, 1
	note A_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 3, 12
	note A_, 1
	volume_envelope 1, 12
	note G_, 1
	stereo_panning FALSE, TRUE
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note E_, 1
	note F#, 1
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note C_, 1
	note G_, 1
	stereo_panning FALSE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 3, 12
	note G_, 1
	volume_envelope 1, 12
	note A_, 1
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note G_, 1
	note B_, 1
	stereo_panning FALSE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	note D_, 1
	note A_, 1
	note_type 12, 1, 12
	stereo_panning TRUE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 3, 12
	note A_, 1
	volume_envelope 1, 12
	note B_, 1
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 1, 12
	note A_, 1
	note F#, 1
	stereo_panning TRUE, TRUE
	note G_, 1
	volume_envelope 2, 12
	note G_, 1
	volume_envelope 1, 12
	note D_, 1
	note G_, 1
	stereo_panning FALSE, TRUE
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	note G_, 1
	note A_, 1
	stereo_panning TRUE, TRUE
	note F#, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	octave 3
	note C_, 1
	note D_, 1
	note_type 12, 3, 12
	sound_loop 0, .mainLoop

.sub1:
.loop2:
	octave 3
	volume_envelope 1, 12
	vibrato 0, 1, 3
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 3, 12
	note F#, 1
	volume_envelope 1, 12
	note E_, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 3, 12
	stereo_panning FALSE, TRUE
	note B_, 1
	note B_, 1
	volume_envelope 1, 12
	octave 3
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	volume_envelope 2, 12
	note D_, 1
	volume_envelope 1, 12
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	octave 2
	volume_envelope 1, 12
	note A_, 1
	octave 3
	note E_, 1
	sound_loop 3, .loop2
	octave 3
	volume_envelope 1, 12
	vibrato 0, 1, 3
	stereo_panning TRUE, FALSE
	note F#, 1
	volume_envelope 2, 12
	note F#, 1
	volume_envelope 3, 12
	note F#, 1
	volume_envelope 1, 12
	note E_, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 3, 12
	stereo_panning FALSE, TRUE
	note B_, 1
	note B_, 1
	volume_envelope 1, 12
	octave 3
	note C_, 1
	volume_envelope 2, 12
	note C_, 1
	volume_envelope 1, 12
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note A_, 1
	volume_envelope 2, 12
	note A_, 1
	volume_envelope 1, 12
	note G_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	octave 2
	sound_ret

.sub2:
	volume_envelope 1, 12
	vibrato 0, 1, 3
	octave 2
	stereo_panning TRUE, FALSE
	note B_, 1
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	octave 3
	volume_envelope 1, 12
	note D_, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	stereo_panning FALSE, TRUE
	note B_, 1
	octave 3
	note C_, 1
	sound_ret

.sub3:
	octave 3
	volume_envelope 1, 12
	vibrato 0, 1, 3
	stereo_panning TRUE, FALSE
	note E_, 1
	volume_envelope 2, 12
	note E_, 1
	volume_envelope 3, 12
	note E_, 1
	volume_envelope 1, 12
	note D_, 1
	octave 2
	stereo_panning TRUE, TRUE
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 1, 12
	note B_, 1
	volume_envelope 2, 12
	note B_, 1
	volume_envelope 3, 12
	stereo_panning FALSE, TRUE
	note B_, 1
	note B_, 1
	octave 3
	sound_ret

Music_AlphalithBattle_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
.mainLoop:
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
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

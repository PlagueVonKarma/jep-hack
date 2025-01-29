; Savoy City theme
; 4/4 rhythm, composed in B Mixolydian.
; An urban theme, loosely inspired by A Cyber's World by Toby Fox.
; This theme has an upbeat feeling, emphasised by a simple backing and a repeating motif.
; Channel 1 and 2 work in tandem for a reverb effect, in a similar vein to my Area Zero theme demake in KEP.
; Stereo panning is limited to the backing channel, as the soundscape got way too cluttered with the lead notes bouncing around the metaphorical room.
; Composed by LuciShrimp.

Music_SavoyCity:
	channel_count 4
	channel 1, Music_SavoyCity_Ch1
	channel 2, Music_SavoyCity_Ch2
	channel 3, Music_SavoyCity_Ch3
	channel 4, Music_SavoyCity_Ch4

Music_SavoyCity_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	octave 5
	sound_call .sub1
	duty_cycle 3
	octave 3
	volume_envelope 8, 5
	vibrato 8, 2, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	octave 5
	sound_call .sub1
	note_type 12, 8, 5
	duty_cycle 3
	octave 4
	vibrato 8, 2, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 2
	volume_envelope 12, 5
	note F#, 6
	note F#, 6
	note F#, 4
	note G#, 6
	note G#, 6
	note E_, 4
	note F#, 8
	octave 4
	volume_envelope 4, 5
	note C#, 2
	rest 1
	octave 3
	note E_, 2
	note G#, 1
	note A_, 2
	volume_envelope 12, 5
	octave 2
	note B_, 3
	note A_, 3
	note G#, 3
	note F#, 3
	note D#, 1
	note E_, 1
	note F#, 1
	note A_, 1
	octave 8
.mainLoop:
	volume_envelope 12, 5
	vibrato 8, 2, 1
	octave 2
	note B_, 6
	note B_, 6
	note B_, 4
	octave 3
	note C#, 6
	note C#, 6
	octave 2
	note A_, 4
	note B_, 8
	volume_envelope 4, 5
	octave 4
	note C#, 2
	octave 3
	rest 1
	note E_, 2
	note G#, 1
	note A_, 2
	volume_envelope 12, 5
	note E_, 3
	note D#, 3
	note C#, 3
	octave 2
	note B_, 3
	note F#, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 3
	note_type 12, 12, 5
	note C#, 6
	note C#, 6
	octave 2
	note A_, 4
	note B_, 6
	note B_, 6
	note G#, 4
	note F#, 8
	octave 4
	volume_envelope 4, 5
	note G#, 2
	octave 3
	note B_, 2
	octave 2
	volume_envelope 12, 5
	note G#, 1
	note A_, 1
	note B_, 1
	octave 3
	note C#, 1
	note D#, 8
	octave 4
	volume_envelope 4, 5
	note G#, 2
	note B_, 2
	note G#, 2
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	octave 3
	volume_envelope 12, 5
	note E_, 6
	note E_, 6
	note D#, 4
	note F#, 6
	note C#, 6
	note D#, 4
	note E_, 4
	note C#, 2
	note D#, 4
	octave 2
	note B_, 2
	octave 3
	note C#, 4
	octave 2
	note B_, 4
	note G#, 2
	note A_, 4
	note F#, 2
	note G#, 1
	note A_, 1
	note B_, 1
	octave 3
	note C#, 1
.loop1:
	vibrato 8, 2, 1
	note D#, 4
	octave 2
	note B_, 2
	note A_, 1
	note B_, 1
	octave 3
	note C#, 4
	octave 2
	note A_, 4
	note B_, 4
	note A_, 2
	note E_, 1
	note F#, 1
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	note D#, 1
	note C#, 1
	sound_loop 2, .loop1
	vibrato 5, 1, 1
	duty_cycle 3
	octave 3
	sound_call .sub2
	vibrato 8, 2, 1
	octave 4
	note C#, 2
	octave 3
	sound_call .sub2
	note_type 12, 12, 5
	vibrato 8, 2, 1
	octave 4
	note C#, 2
	octave 3
	note F#, 6
	note F#, 6
	note F#, 4
	note G#, 6
	note G#, 6
	note E_, 4
	volume_envelope 12, 7
	vibrato 19, 3, 1
	note F#, 16
	rest 16
	vibrato 8, 2, 1
	volume_envelope 12, 5
	note B_, 6
	note B_, 6
	note B_, 4
	octave 4
	note C#, 6
	note C#, 6
	octave 3
	note A_, 4
	note B_, 8
	octave 4
	volume_envelope 2, 5
	note C#, 2
	rest 1
	octave 3
	volume_envelope 3, 5
	note E_, 2
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 4, 5
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note F#, 1
	note E_, 1
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 3
	tempo 153
	volume_envelope 8, 5
	vibrato 8, 2, 1
	octave 3
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	octave 5
	sound_ret

.sub2:
	vibrato 8, 2, 1
	note G#, 4
	note E_, 2
	note D#, 1
	note E_, 1
	note F#, 4
	note D#, 4
	note E_, 4
	note D#, 2
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note C#, 2
	note E_, 2
	note G#, 1
	note A_, 1
	sound_ret

Music_SavoyCity_Ch2:
	note_type 12, 15, 8
	rest 3
	vibrato 5, 1, 1
	duty_cycle 3
	volume_envelope 4, 5
	octave 3
	note B_, 2
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	rest 1
	note E_, 2
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	octave 3
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	rest 1
	note B_, 2
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	rest 1
	note E_, 2
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note_type 12, 15, 8
	rest 2
	volume_envelope 8, 5
	sound_call .sub1
	octave 8
.mainLoop:
	octave 4
	sound_call .sub1
	note_type 12, 8, 5
	sound_call .sub2
	note E_, 1
	note D#, 1
	octave 4
	note C#, 1
	note D#, 1
	sound_call .sub2
	note_type 12, 8, 5
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note G#, 1
	note_type 12, 15, 8
	sound_call .sub2
	octave 4
	note_type 12, 8, 5
	note E_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	sound_call .sub2
	octave 4
	note_type 12, 8, 5
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	sound_call .sub1
	note_type 12, 8, 5
	octave 4
	sound_call .sub3
	note_type 12, 6, 7
	octave 4
	note C#, 6
	note C#, 6
	note C#, 4
	note D#, 6
	note D#, 6
	octave 3
	note B_, 4
	octave 4
	note C#, 16
	rest 16
	volume_envelope 1, 5
	octave 3
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	volume_envelope 2, 5
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	volume_envelope 3, 5
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	volume_envelope 4, 5
	note E_, 2
	note C#, 2
	octave 3
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	volume_envelope 5, 5
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	volume_envelope 6, 5
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	volume_envelope 7, 5
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	volume_envelope 8, 5
	note E_, 2
	note C#, 2
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 8, 5
	octave 3
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	octave 3
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	sound_ret

.sub2:
	volume_envelope 8, 5
	note F#, 3
	note D#, 1
	note E_, 2
	note G#, 2
	octave 3
	note B_, 3
	octave 4
	note D#, 1
	note E_, 2
	note G#, 2
	note F#, 2
	note D#, 2
	note E_, 2
	note G#, 2
	note B_, 2
	note G#, 2
	sound_ret

.sub3:
	octave 3
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	octave 3
	note B_, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	sound_ret

Music_SavoyCity_Ch3:
	note_type 12, 1, 0
	rest 16
	rest 16
	rest 16
	rest 16
	volume_envelope 2, 3
	vibrato 4, 2, 2
	octave 1
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 3
	octave 2
	note C#, 1
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note D#, 4
	stereo_panning TRUE, TRUE
	note D#, 3
	note E_, 1
	stereo_panning FALSE, TRUE
	note F#, 3
	note E_, 1
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 3
	octave 2
	note C#, 1
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning FALSE, TRUE
	note C#, 2
	octave 1
	note B_, 1
	note A_, 1
	octave 8
.mainLoop:
	volume_envelope 2, 3
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 2
	note E_, 2
	octave 1
	stereo_panning FALSE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note F#, 2
	note E_, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning FALSE, TRUE
	note F#, 4
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, FALSE
	note D#, 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning FALSE, TRUE
	note D#, 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, FALSE
	note F#, 4
	stereo_panning TRUE, TRUE
	note E_, 2
	note D#, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	octave 1
	note A_, 2
	sound_call .sub1
	octave 2
	stereo_panning TRUE, TRUE
	note A_, 4
	stereo_panning TRUE, FALSE
	note A_, 4
	stereo_panning TRUE, TRUE
	note A_, 3
	note B_, 1
	octave 3
	stereo_panning FALSE, TRUE
	note C#, 4
	octave 1
	sound_call .sub1
	note_type 12, 2, 3
	octave 3
	stereo_panning TRUE, TRUE
	note C#, 4
	octave 2
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	note A_, 3
	note G#, 1
	stereo_panning FALSE, TRUE
	note E_, 4
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning TRUE, FALSE
	note F#, 4
	octave 3
	stereo_panning TRUE, TRUE
	note C#, 2
	octave 2
	note B_, 2
	stereo_panning FALSE, TRUE
	note F#, 4
	octave 3
	stereo_panning TRUE, TRUE
	note C#, 4
	octave 2
	stereo_panning TRUE, FALSE
	note B_, 2
	note A_, 2
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning FALSE, TRUE
	note B_, 4
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning TRUE, FALSE
	note A_, 3
	note G#, 1
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning FALSE, TRUE
	note A_, 3
	note G#, 1
	stereo_panning TRUE, TRUE
	note F#, 4
	octave 3
	stereo_panning TRUE, FALSE
	note C#, 1
	note C#, 2
	octave 2
	note B_, 1
	stereo_panning TRUE, TRUE
	note A_, 2
	note G#, 2
	stereo_panning FALSE, TRUE
	note F#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	sound_call .sub2
	octave 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note A_, 2
	octave 2
	note C#, 2
	octave 1
	stereo_panning FALSE, TRUE
	note B_, 2
	octave 2
	note C#, 2
	sound_call .sub2
	note_type 12, 2, 3
	octave 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note A_, 2
	octave 2
	note C#, 2
	octave 1
	stereo_panning FALSE, TRUE
	note B_, 2
	octave 2
	note C#, 2
.loop3:
	stereo_panning TRUE, TRUE
	note E_, 1
	note E_, 2
	note E_, 1
	stereo_panning TRUE, FALSE
	note G#, 2
	octave 2
	note B_, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	note F#, 2
	stereo_panning FALSE, TRUE
	note D#, 2
	note F#, 2
	octave 3
	stereo_panning TRUE, TRUE
	note C#, 1
	octave 2
	note A_, 2
	note F#, 1
	stereo_panning TRUE, FALSE
	note E_, 2
	note F#, 2
	stereo_panning TRUE, TRUE
	note D#, 2
	note F#, 2
	stereo_panning FALSE, TRUE
	note E_, 2
	note F#, 2
	sound_loop 2, .loop3
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 3
	octave 2
	note C#, 1
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note D#, 4
	stereo_panning TRUE, TRUE
	note D#, 3
	note E_, 1
	stereo_panning FALSE, TRUE
	note F#, 3
	note E_, 1
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning FALSE, TRUE
	note B_, 3
	octave 2
	note C#, 1
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning FALSE, TRUE
	note C#, 2
	octave 1
	note B_, 1
	note A_, 1
	stereo_panning TRUE, TRUE
	note B_, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 2
	note E_, 2
	octave 1
	stereo_panning FALSE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note F#, 2
	note E_, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning FALSE, TRUE
	note F#, 4
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, FALSE
	note D#, 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning FALSE, TRUE
	note D#, 2
	note C#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 4
	octave 2
	stereo_panning TRUE, FALSE
	note F#, 4
	stereo_panning TRUE, TRUE
	note E_, 2
	note D#, 2
	stereo_panning FALSE, TRUE
	note C#, 2
	octave 1
	note A_, 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	octave 2
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning TRUE, FALSE
	note F#, 4
	stereo_panning TRUE, TRUE
	note F#, 4
	stereo_panning FALSE, TRUE
	note F#, 3
	note G#, 1
	octave 1
	sound_ret

.sub2:
	octave 1
	stereo_panning TRUE, TRUE
	note B_, 1
	note B_, 2
	note B_, 1
	octave 2
	stereo_panning TRUE, FALSE
	note D#, 2
	note F#, 2
	octave 1
	stereo_panning TRUE, TRUE
	note A_, 2
	octave 2
	note C#, 2
	octave 1
	stereo_panning FALSE, TRUE
	note A_, 2
	octave 2
	note C#, 2
	stereo_panning TRUE, TRUE
	note G#, 1
	note E_, 2
	note C#, 1
	octave 1
	stereo_panning TRUE, FALSE
	note B_, 2
	octave 2
	sound_ret

Music_SavoyCity_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	octave 5
.loop2:
	toggle_noise
	toggle_noise 3
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 3
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 3, .loop2
	toggle_noise
	toggle_noise 3
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	octave 8
.mainLoop:
	toggle_noise
	toggle_noise 3
	octave 5
.loop1:
	toggle_noise
	toggle_noise 3
	drum_note 12, 4
	octave 6
	drum_note 3, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 3
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 3
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 3
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_call .sub1
	octave 5
	sound_loop 3, .loop1
	drum_speed 12
	octave 6
	toggle_noise
	toggle_noise 3
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	rest 16
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	toggle_noise
	toggle_noise 3
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 3
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

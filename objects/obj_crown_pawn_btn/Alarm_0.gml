/// @description Insert description here
// You can write your code in this editor

with (obj_pawn) {
	crowned = false
}

if !pawn.crowned {
	if(audio_is_playing(snd_crown)){
		audio_stop_sound(snd_crown);
	}
	
	audio_play_sound(snd_crown, 1, false);

}

pawn.crowned = true


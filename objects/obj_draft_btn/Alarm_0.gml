/// @description Insert description here
// You can write your code in this editor

if !pawn.drafted {
	if(audio_is_playing(snd_level_up)){
		audio_stop_sound(snd_level_up);
	}
	
	audio_play_sound(snd_level_up, 1, false);
	pawn.drafted = true
	
	with (obj_target) {
		if pawn == other.pawn {
			instance_destroy()
		}
	}	
	
	with (instance_create_layer(x, y, "Items", obj_target)) {
		pawn = other.pawn.id
		x = pawn.x
		y = pawn.y
	}
	
	with(obj_target_btn) { alarm[0] = 1}
	
} else {
	pawn.drafted = false
}




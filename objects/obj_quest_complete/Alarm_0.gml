/// @description Insert description here
// You can write your code in this editor

//global.renown += renown_reward

//unpause()

if renown_reward == "The Regent Crown" {
	
	var highest_defense = 0
	var regent = noone
	with(obj_pawn) {
		var defense = task_cells[jobid.defend].skill_level
		if defense >= highest_defense {
			highest_defense = defense
			regent = id
		}
	}
	
	with(regent) { crowned = true }

	if(audio_is_playing(snd_crown)){
		audio_stop_sound(snd_crown);
	}
	
	audio_play_sound(snd_crown, 1, false);
	
	
} else {
	repeat(renown_reward) {
		instance_create_layer(x+sprite_width/2, y + sprite_height/2, "Menu_Objects",obj_renown_crystal);
	}
}

instance_destroy()
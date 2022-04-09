/// @description Insert description here
// You can write your code in this editor

if global.menu_open {
	if !instance_exists(obj_task_menu) {
		
		if instance_exists(obj_tech_menu) {
			exit
		}
		if instance_exists(obj_close_construction) {
			exit
		}
		if instance_exists(obj_storyteller_prompt) {
			exit
		}
		unpause()
	}
}

//unpause()

with pawn {
	alarm[0] = 1
}

if(audio_is_playing(Fantasy_Game_Gear_Inventory_UI_3)){
	audio_stop_sound(Fantasy_Game_Gear_Inventory_UI_3);
}
	
audio_play_sound(Fantasy_Game_Gear_Inventory_UI_3, 1, false);
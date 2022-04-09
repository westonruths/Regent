/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_left)){
    if(position_meeting(device_mouse_x(0),device_mouse_y(0),id)){
		if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_speed_controls)){
			
		} else if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_menu_btn)){
			
		} else {
			alarm[4] = 1	
			
			if(audio_is_playing(Fantasy_Game_Crafting_UI_Tab_Button_1)){
				audio_stop_sound(Fantasy_Game_Crafting_UI_Tab_Button_1);
			} else {
				audio_play_sound(Fantasy_Game_Crafting_UI_Tab_Button_1, 1, false);
			}
		}
    }
} 

if num_stored > 0 {
	num_stored = 999
}

if !filled {
	title = "Empty Grave"
	detail = "A final resting spot for friend and foe alike"
	sprite_index = spr_grave_empty
} else {
	sprite_index = spr_grave
}
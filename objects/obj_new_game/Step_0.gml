/// @description Insert description here
// You can write your code in this editor

image_blend = c_white

if(mouse_check_button_pressed(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		image_blend = c_gray
    }
}

if(mouse_check_button(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
        image_blend = c_gray
    }
}

if(mouse_check_button_released(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		if !instance_exists(obj_confirm_new_game) {
			if (file_exists("info_items.save")) {
				instance_create_layer(x,y,"Top_Menu",obj_confirm_new_game)
				instance_create_layer(x+70,y,"Top_Menu",obj_cancel_new_game)
			} else {
				instance_create_depth(0,0, -9999, obj_fade)
				global.start_new_game = true
				room_goto(rm_game);
				if(audio_is_playing(Fantasy_Game_Distant_Soft_Rumble_1)){
					audio_stop_sound(Fantasy_Game_Distant_Soft_Rumble_1);
				}
	
				audio_play_sound(Fantasy_Game_Distant_Soft_Rumble_1, 1, false);				
			}
		}
    }
}
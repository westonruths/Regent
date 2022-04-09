/// @description Insert description here
// You can write your code in this editor
event_inherited()
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
		instance_create_depth(0,0, -9999, obj_fade)

		room_goto(rm_start);
		
		if(audio_is_playing(Fantasy_Game_Distant_Soft_Rumble_1)){
			audio_stop_sound(Fantasy_Game_Distant_Soft_Rumble_1);
		}
		audio_play_sound(Fantasy_Game_Distant_Soft_Rumble_1, 1, false);
		
		global.menu_open = false
		global.building = false
		global.time_pause = true
    }
}

if (global.menu_open == false || global.building) {
	instance_destroy();
}

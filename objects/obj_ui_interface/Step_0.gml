/// @description Insert description here
// You can write your code in this editor
//x = (camera_get_view_x(view_camera[0]) + viewPosX);
//y = (camera_get_view_y(view_camera[0]) + viewPosY);

image_blend = c_white

if(mouse_check_button_pressed(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
        //alarm[0] = 1
		image_blend = c_gray
    }
}

if(mouse_check_button(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
        image_blend = c_gray
		alarm[1] = 1
    }
}

if(mouse_check_button_released(mb_left)){
    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
        //alarm[2] = 1
		alarm[0] = 1
		
		if(audio_is_playing(Fantasy_Game_Crafting_UI_Tab_Button_1)){
			audio_stop_sound(Fantasy_Game_Crafting_UI_Tab_Button_1);
		}
	
		audio_play_sound(Fantasy_Game_Crafting_UI_Tab_Button_1, 1, false);
    }
}
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
		url_open("https://forms.gle/cpWxSMdGKKBEN6M26")
    }
}

if (global.menu_open == false || global.building) {
	instance_destroy();
}

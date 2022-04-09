/// @description Insert description here
// You can write your code in this editor
if (selected) || !techenabled {
	exit
}

global.building = false

selected = true

//with (obj_cell) {
//	visible = true;
	
//	if (instance_exists(build_obj)) {
//		visible = false;
//	} else {	
//		build_obj = noone;
//	}
//}

y = global.view_height - sprite_height * 2

instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_construction);
var back = instance_create_layer(global.view_width-65,y+15,"Menu_Btns",obj_back_construction);
with (back) {
	with (obj_build_menu) {
		other.previous_menu = text
	}
}

instance_create_layer(x+10,y+70,"Menu_Btns",obj_place_btn);
instance_create_layer(x+80,y+70,"Menu_Btns",obj_remove_btn);
instance_create_layer(x+150,y+70,"Menu_Btns",obj_camera_btn);
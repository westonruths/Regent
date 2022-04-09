/// @description Insert description here
// You can write your code in this editor
var menu_open = global.menu_open
if global.menu_open { 
	if instance_exists(obj_close_info) {
		menu_open = false
	} else if instance_exists(obj_close_task) {
		menu_open = true
	} else if instance_exists(obj_close_building) || instance_exists(obj_close_construction) {
		menu_open = true
	} else if instance_exists(obj_close_menu) {
		//with (obj_close_menu) {
		//	alarm[0] = 1	
		//}
		menu_open = true
	}
}


if !instance_exists(selection) || menu_open {exit}

with (obj_ui_interface) {
	selected = false
}

global.menu_open = true

instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_info);

var action_btn = instance_create_layer(x+170,y+70,"Menu_Btns",obj_info_action);
with (action_btn) {
	selection = other.selection
}
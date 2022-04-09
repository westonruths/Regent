/// @description Insert description here
// You can write your code in this editor
global.menu_open = false

var menu_btn = noone
with (obj_menu_btn) {
	menu_btn = id
	hide_buttons = true	
}

with (obj_ui_task) {
	var new_task = instance_create_layer(originalX,originalY,"Menu_Static", object_index);
	new_task.x = menu_btn.x
	new_task.y = menu_btn.y
	instance_destroy()
}

with (obj_ui_task_helper) {
	instance_destroy()
}

with (obj_info_item) {
	alarm[4] = -1
}

with(obj_target_task) { 
	instance_destroy() 
	
	with (obj_menu_btn) {
		alarm[0] = 1
	}
}



/// @description Insert description here
// You can write your code in this editor
global.menu_open = false

with (obj_ui_info) {
	selection = noone
}

with (obj_ui_info_btns) {
	instance_destroy()
}

with (obj_cell) {
	visible = false
	selected = false
}

with (obj_mtn_wall) {
	tmp_selected = false	
}

with (obj_info_item) {
	alarm[4] = -1
}
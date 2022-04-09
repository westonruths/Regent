/// @description Insert description here
// You can write your code in this editor
global.building = false
global.menu_open = false

with(obj_build_ui) {
	selected = false
}

with (obj_info_item) {
	alarm[4] = -1
}

instance_destroy()
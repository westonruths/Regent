/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	//unpause();
	exit;
} else {
	unpause()
}

global.menu_open = true;

with (techs) {
	alarm[0] = 1
}

instance_create_layer(225,0,"Menu",obj_tech_menu);

pause()

new_point = false
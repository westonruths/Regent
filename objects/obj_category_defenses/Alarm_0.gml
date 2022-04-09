/// @description Insert description here
// You can write your code in this editor

event_inherited()
//initialize build menu
instance_create_layer(global.build_x, global.build_y,"Menu_Objects",obj_build_defensive_position);
instance_create_layer(global.build_x, global.build_y+70,"Menu_Objects",obj_build_hide_position);
instance_create_layer(global.build_x, global.build_y+140,"Menu_Objects",obj_build_spike_trap);


with(obj_build_menu) {
	text = "Defenses"
}
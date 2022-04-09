/// @description Insert description here
// You can write your code in this editor

event_inherited()

//initialize build menu
instance_create_layer(global.build_x, global.build_y,"Menu_Objects",obj_build_stockpile);
instance_create_layer(global.build_x, global.build_y+70,"Menu_Objects",obj_build_wall);
instance_create_layer(global.build_x, global.build_y+140,"Menu_Objects",obj_build_door);
instance_create_layer(global.build_x, global.build_y+210,"Menu_Objects",obj_build_grave);

with(obj_build_menu) {
	text = "Stockpiles/Buildings"
}


/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	//unpause();
	exit;
} else {
	unpause()
}

global.building = true;
global.menu_open = true;

instance_create_layer(global.build_x, global.build_y+10,"Menu_Objects",obj_category_buildings);
instance_create_layer(global.build_x, global.build_y+70,"Menu_Objects",obj_category_workstations);
instance_create_layer(global.build_x, global.build_y+140,"Menu_Objects",obj_category_furniture);
instance_create_layer(global.build_x, global.build_y+210,"Menu_Objects",obj_category_plants);
instance_create_layer(global.build_x, global.build_y+270,"Menu_Objects",obj_category_defenses);

instance_create_layer(global.view_width-30,15,"Menu",obj_close_building);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu",obj_build_menu);
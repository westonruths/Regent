/// @description Insert description here
// You can write your code in this editor
with (obj_construct_ui) {
	instance_destroy()
}

global.menu_open = true
global.building = true

instance_create_layer(global.view_width-250,15,"Menu_Btns",obj_back_building);
instance_create_layer(global.view_width-30,15,"Menu",obj_close_building);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu",obj_build_menu);


var category = noone
switch (previous_menu) {
	case "Stockpiles/Buildings":
		category = instance_create_layer(global.build_x, global.build_y+10,"Menu_Objects",obj_category_buildings);
		with (category) { alarm[0] = 1 }
		break
	case "Furniture":
		category = instance_create_layer(global.build_x, global.build_y+140,"Menu_Objects",obj_category_furniture);
		with (category) { alarm[0] = 1 }
		break
	case "Workstations":
		category = instance_create_layer(global.build_x, global.build_y+70,"Menu_Objects",obj_category_workstations);
		with (category) { alarm[0] = 1 }
		break
	case "Plants":
		category = instance_create_layer(global.build_x, global.build_y+210,"Menu_Objects",obj_category_plants);
		with (category) { alarm[0] = 1 }
		break
	case "Defenses":
		category = instance_create_layer(global.build_x, global.build_y+270,"Menu_Objects",obj_category_defenses);
		with (category) { alarm[0] = 1 }
		break
}




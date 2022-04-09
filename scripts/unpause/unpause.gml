// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
	global.building = false;
	global.menu_open = false;
	global.time_pause = false;
	global.game_speed = global.saved_game_speed
	
	with (obj_pawn_btn) {
		instance_destroy()
	}

	with (obj_pawns_menu) {
		instance_destroy()
	}
	
	with (obj_target_btn) {
		instance_destroy()
	}

	with (obj_close_info) {
		alarm[0] = 1
	}

	with (obj_close_menu) {
		alarm[0] = 1
	}

	with (obj_close_building) {
		alarm[0] = 1
	}

	with (obj_close_menu) { 
		alarm[0] = 1	
	}

	with (obj_build_ui) {
		instance_destroy()
	}
	
	with (obj_close_construction) {
		instance_destroy()	
	}
	
	with (obj_close_task) { 
		alarm[0] = 1 
	}
	
	with (obj_info_item) {
		alarm[4] = -1
	}
	
	with (obj_ui_task) {
		instance_create_layer(originalX,originalY,"Menu_Static", object_index);
		instance_destroy()
	}

	with (obj_ui_task_helper) {
		instance_destroy()
	}

}
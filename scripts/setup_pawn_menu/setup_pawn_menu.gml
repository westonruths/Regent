// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_pawn_menu(){
	// Close out other pawn menus
	with(obj_task_cell) {
		visible = false
	}
	
	with(obj_pawn) { 
		menu_open = false;
	}

	// Setup this pawn's menu
	global.menu_open = true;
	global.building = false;
	menu_open = true;

	//initialize tasking menu
	var listSize = array_length(task_cells);
	for(var i = 0; i < listSize; i++) {
		with(task_cells[i]) {
			visible = true
		}
	}
	
	var crown_unlocked = false
	with (quests) {
		if quest_array[quest.gather_renown][1] == -1 { crown_unlocked = true }
	}
	
	if crown_unlocked {
		with(instance_create_layer(global.view_width-265,global.view_height-90,"Menu",obj_crown_pawn_btn)) {
			pawn = other
		}
	}
	
	with(instance_create_layer(global.view_width-265,global.view_height-30,"Menu",obj_draft_btn)) {
		pawn = other
	}

	with(instance_create_layer(global.view_width-265,global.view_height-60,"Menu",obj_combat_mode_btn)) {
		pawn = other
	}

	with(instance_create_layer(global.view_width-170,global.view_height-30,"Menu",obj_target_btn)) {
		pawn = other.id
	}

	instance_create_layer(global.view_width-30,15,"Menu",obj_close_menu);
	var task_menu = instance_create_layer(global.view_width-(global.view_width/3),0,"Menu",obj_task_menu);
	with (task_menu) {
		pawn = other
	}
}
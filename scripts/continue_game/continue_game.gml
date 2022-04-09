// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function continue_game(){
	obj_size = sprite_get_width(spr_cell);
	buffer = global.grid_resolution
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	//setup cells
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			instance_create_layer(j,i,"BuildUI",obj_cell);
		}
	}
	
	with(obj_save_load) {
		alarm[1] = 1	
	}
	
}
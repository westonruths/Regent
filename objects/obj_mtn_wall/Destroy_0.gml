/// @description Insert description here
// You can write your code in this editor


mp_grid_clear_cell(global.grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
mp_grid_clear_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));

with (obj_mtn_wall) {
	alarm[1] = 1
}

ds_list_delete(global.selected_mtns, ds_list_find_index(global.selected_mtns, id));

if sprite_index != gw_middle_center { 
	with (obj_rooms) { alarm[0] = 100 }
}
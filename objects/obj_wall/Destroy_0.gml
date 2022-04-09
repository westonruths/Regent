/// @description Insert description here
// You can write your code in this editor
mp_grid_clear_cell(global.grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
mp_grid_clear_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));

with (obj_rooms) { alarm[0] = 1 }
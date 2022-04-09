/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_max = 50;
hp = hp_max;

dmg = 0

selected = false

title = "Berry Plant"
detail = "Can be harvested for berries that can eaten"

mp_grid_clear_cell(global.grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
mp_grid_clear_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
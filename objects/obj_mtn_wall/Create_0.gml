/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_max = 50;
hp = hp_max;
dmg = 0

selected = false
tmp_selected = false

mp_grid_add_cell(global.grid, floor(x / global.grid_resolution), floor(y / global.grid_resolution));
mp_grid_add_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y / global.grid_resolution));

alarm[1] = 1

title = "Mountain"
detail = "Can be mined for stone"
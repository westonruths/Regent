/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

mp_grid_add_cell(global.grid, floor(x / global.grid_resolution), floor(y / global.grid_resolution));
mp_grid_add_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y / global.grid_resolution));

hp_max = 100;
hp = hp_max;

title = "Wall"
detail = "Used to enclose a room"

with (obj_rooms) { alarm[0] = 1 }
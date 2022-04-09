/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp_max = 50;
hp = hp_max;

dmg = 0

selected = true

title = "Wheat Plant"
detail = "A fully grown wheat plant ready for harvest"

mp_grid_clear_cell(global.grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
mp_grid_clear_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));

image_index = image_number-1
image_speed = 0
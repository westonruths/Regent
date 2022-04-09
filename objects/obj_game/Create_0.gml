/// @description Insert description here
// You can write your code in this editor
//cursor_sprite = hand_open_02
//window_set_cursor(cr_none);

global.view_width = 812
global.view_height = 375

global.room_x_size = 2000
global.room_y_size = 2000

global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, global.room_x_size div global.grid_resolution + 1, 
						global.room_y_size div global.grid_resolution + 1, global.grid_resolution, 
						global.grid_resolution);

global.enemy_grid = mp_grid_create(0, 0, global.room_x_size div global.grid_resolution + 1, 
						global.room_y_size div global.grid_resolution + 1, global.grid_resolution, 
						global.grid_resolution);


global.building = false;
global.build_x = global.view_width - (global.view_width/3) + 5
global.build_y = 30;

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
global.falloff_ref = 400
global.falloff_max = 1200
global.falloff_factor = 1

global.menu_open = false;

global.selected_mtns = ds_list_create()

first_step = true

global.start_new_game = true
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_new_game(){
	
	instance_create_layer(0, 0, "Menu_Prompts", obj_tutorial)
	
	randomise()
	
	obj_size = sprite_get_width(spr_cell);
	buffer = global.grid_resolution
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	//Identify mountain range
	mtn_list = []
	var num_mtns = irandom_range(5,10)
	for (var i = 0; i<num_mtns; i+=1) {
		var start_x = irandom_range(first_cell_x,global.right_limit)
		var start_y = irandom_range(first_cell_y,global.bottom_game)
		var end_x = start_x + irandom_range(5*buffer,10*buffer)
		var end_y = start_y + irandom_range(5*buffer,10*buffer)
		start_x = start_x - (start_x mod buffer) + obj_size/2
		start_y = start_y - (start_y mod buffer) + obj_size/2
		end_x = end_x - (end_x mod buffer) + obj_size/2
		end_y = end_y - (end_y mod buffer) + obj_size/2
		
		mtn_list[i] = [start_x, end_x, start_y, end_y]
	}
	
	var _x = first_cell_x
	var _y = first_cell_y
	with (obj_camera) {
		_x = x
		_y = y
	}
		
	//make pawns
	instance_create_layer(_x,_y,"Instances",obj_pawn);
	instance_create_layer(_x,_y+buffer,"Instances",obj_pawn);
	instance_create_layer(_x,_y+buffer*2,"Instances",obj_pawn);
	
	//make starting meals
	repeat(3) {
		instance_create_layer(_x,_y,"Items",obj_meal);
		instance_create_layer(_x,_y+buffer,"Items",obj_meal);
		instance_create_layer(_x,_y+buffer*2,"Items",obj_meal);
	}
	
	//make starting medicines
	instance_create_layer(_x,_y,"Items",obj_healing_herb);
	instance_create_layer(_x,_y+buffer,"Items",obj_healing_herb);
	instance_create_layer(_x,_y+buffer*2,"Items",obj_healing_herb);
	
	//setup cells
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			
			if i-16 == global.top_game && j-16 == global.left_limit {
				continue	
			}
			if i+16 == global.bottom_game && j+16 == global.right_limit {
				continue	
			}
			if i+16 == global.bottom_game && j-16 == global.left_limit {
				continue	
			}
			if i-16 == global.top_game && j+16 == global.right_limit {
				continue	
			}
			
			
			var cell = instance_create_layer(j,i,"BuildUI",obj_cell);
			
			for (var m = 0; m<num_mtns; m+=1) {
				var start_x = mtn_list[m][0]
				var end_x = mtn_list[m][1]
				var start_y = mtn_list[m][2]
				var end_y = mtn_list[m][3]
				
				if j >= start_x && j <= end_x && i >= start_y && i <= end_y {
					with (cell) {
						if instance_position(x, y, obj_pawn) == noone && !instance_exists(build_obj) {
							build_obj = instance_create_layer(x,y,"Buildings",obj_mtn_wall);
						}
					}	
				}
			}
			
			//place objects helper code
			var place_object = irandom_range(0,1000)

			//place trees
			if (place_object > 0 && place_object < 70) {
				with (cell) {
					if !instance_exists(build_obj) {
						if instance_position(x, y, obj_pawn) == noone {
							build_obj = instance_create_layer(x,y,"Buildings",obj_tree);
						}
					}
				}
			} 
			
			//place animals
			if (place_object > 100 && place_object < 110) {
				with (cell) {
					if !instance_exists(build_obj) {
						instance_create_layer(x, y, "Instances", obj_bunny)
					}
				}
			}

			//place healing herbs
			if (place_object > 110 && place_object < 120) {
				with (cell) {
					if !instance_exists(build_obj) {
						if instance_position(x, y, obj_pawn) == noone {
							build_obj = instance_create_layer(x,y,"Buildings",obj_herb_plant);
						}
					}
				}
			} 
	
			//place berry bushes
			if (place_object > 150 && place_object < 160) {
				with (cell) {
					if !instance_exists(build_obj) {
						if instance_position(x, y, obj_pawn) == noone {
							build_obj = instance_create_layer(x,y,"Buildings",obj_berry_bush);
						}
					}
				}
			} 
		}
	}
}
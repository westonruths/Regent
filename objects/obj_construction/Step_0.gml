/// @description Insert description here
// You can write your code in this editor
event_inherited()

title = name

if obj_building_type < 0 {
	instance_destroy()
}

if build_cost.done() {
	//mp_grid_add_cell(global.grid, floor(x / global.grid_resolution), floor(y / global.grid_resolution));
}

if build_cost.construction_health <= 0 {
	mp_grid_clear_cell(global.grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
	mp_grid_clear_cell(global.enemy_grid, floor(x / global.grid_resolution), floor(y /global.grid_resolution));
	var new_build_obj = instance_create_layer(x,y,"Buildings",obj_building_type);
	
	var cell = instance_nearest(x, y, obj_cell)
	with(cell){
		build_obj = new_build_obj
	}
	
	with(new_build_obj) {
		build_cost = other.build_cost.new_cost(true)
	}
	
	instance_destroy();
}

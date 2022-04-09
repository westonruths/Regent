/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
sprite_index = object_get_sprite(obj_building_type)

if (obj_building_type == obj_wall) {
	render_wall()
}

draw_self()

image_alpha = 0.3

if build_cost.done() {
	//sprite_index = spr_construction	
	image_alpha = 0.3
	
	var pc;
	pc = ((build_cost.original_construction_health - build_cost.construction_health) 
			/ build_cost.original_construction_health) * 100;
	draw_healthbar(x-sprite_width/2+5,y-1, x+sprite_width/2-5, y+1, pc, c_black, c_red, c_lime, 0, true, true)
}

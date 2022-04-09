/// @description Insert description here
// You can write your code in this editor

if in_room(x, y) {
	cooking_counter += dmg;
} else {
	cooking_counter += dmg/4;
	
	if random_range(-2, 1) > 0 {
		with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
			text = "Slow because cooking outside"
			image_blend = c_red
		}
	}
}
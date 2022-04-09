/// @description Insert description here
// You can write your code in this editor

repeat(build_cost.original_costs[0]-build_cost.costs[0]) {
	instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Items",obj_wood)
}
repeat(build_cost.original_costs[1]-build_cost.costs[1]) {
	instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Items",obj_stone)
}
	
instance_destroy()
/// @description Insert description here
// You can write your code in this editor

if deconstruct {
	hp -= dmg;
} else {
	hp += dmg
	if hp > hp_max { hp = hp_max }
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}

if (hp <= 0) {
	//print(build_cost.costs[0])
	repeat(build_cost.costs[0]) {
		instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Items",obj_wood)
	}
	repeat(build_cost.costs[1]) {
		instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Items",obj_stone)
	}
	
	instance_destroy()
}
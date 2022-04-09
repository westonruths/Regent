/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp <= 0) {
	var chance = irandom_range(0, 100)
	if chance < 120 {
		instance_create_layer(x,y,"Items",obj_stone)
	}
	instance_destroy()
}

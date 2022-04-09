/// @description Insert description here
// You can write your code in this editor
var ready_to_build = false;
var counter = 0;

with(other) {
	counter += 1;
	print("Dragging: ", counter, "~~", dragging)
	if (!dragging) {
		ready_to_build = true;
	}
}

if (ready_to_build && char == noone && global.money >= money_cost) {
	var xx = x+sprite_get_xoffset(spr_gun_idle)/2;
	var yy = y-sprite_get_yoffset(spr_gun_idle)/2;
	char = instance_create_layer(xx,yy,"Instances",obj_gun);
	global.money -= money_cost;
}
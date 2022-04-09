/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if item_cooking != noone {
	draw_sprite(item_cooking, 0, x, y-4);
	
	var pc;
	pc = (cooking_counter / max_counter) * 100;
	draw_healthbar(x-sprite_width/2+5,y-1, x+sprite_width/2-5, y+1, pc, c_black, c_red, c_lime, 0, true, true)
}






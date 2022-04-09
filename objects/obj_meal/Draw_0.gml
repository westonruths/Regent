/// @description Insert description here
// You can write your code in this editor

draw_self()

var ch = round((hp / hp_max) * 100);

if (hp < hp_max) {
	draw_healthbar(x-sprite_width/2-2,y+sprite_height/2, x+sprite_width/2+2, y+sprite_height/2+3, ch, c_black, c_lime, c_lime, 0, true, true)
}
/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_alpha(0.7);
if (selected) {
	draw_sprite(spr_itemdisc_01, 0, x, y);
	draw_sprite(spr_axe_btn, 0, x, y);
}
draw_set_alpha(1);

var ch = round((hp / hp_max) * 100);

if (hp < hp_max) {
	draw_healthbar(x-sprite_width/2,y+sprite_height/2-5, x+sprite_width/2, y+sprite_height/2-1, ch, c_black, c_lime, c_lime, 0, true, true)
}
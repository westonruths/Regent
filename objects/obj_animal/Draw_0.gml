/// @description Insert description here
// You can write your code in this editor
draw_self()


if (selected) {
	draw_sprite_ext(spr_itemdisc_01, 0, x-10, y+10, 1, 1, image_angle, image_blend, 0.7)
	draw_sprite_ext(spr_bow_btn, 0, x-10, y+10, 1, 1, image_angle, image_blend, 0.7)
}

if (tmp_selected) {
	draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
}

var pc;
pc = round((hp / hp_max) * 100);
if (hp<hp_max) {
	draw_healthbar(x-10,y+10, x+10, y+12, pc, c_black, c_red, c_red, 0, true, true)
}


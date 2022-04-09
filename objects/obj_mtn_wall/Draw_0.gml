/// @description Insert description here
// You can write your code in this editor
//render_mtn_wall()
draw_self()

if (selected) {
	draw_set_alpha(0.7);
	draw_sprite(spr_itemdisc_01, 0, x, y);
	draw_sprite(spr_pickaxe_btn, 0, x, y);
	draw_set_alpha(1);
}

if (tmp_selected) {
	draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
}

var ch = round((hp / hp_max) * 100);

if (hp < hp_max) {
	draw_healthbar(x-sprite_width/2,y+sprite_height/2-5, x+sprite_width/2, y+sprite_height/2-1, ch, c_black, c_lime, c_lime, 0, true, true)
}
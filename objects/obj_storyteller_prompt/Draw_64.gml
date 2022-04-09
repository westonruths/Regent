/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_lt_box
image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
image_blend = c_white

draw_self();

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x + sprite_width/2, y+8, title);


draw_set_font(fnt_btn)
draw_text_ext(x + sprite_width/2, y+40, detail, 20, global.view_width/2-20);

if prompt_sprite != noone {
	draw_sprite_ext(prompt_sprite, image_index, x + sprite_width/2, y+ 130, 2, 2, image_angle, image_blend, image_alpha)
}

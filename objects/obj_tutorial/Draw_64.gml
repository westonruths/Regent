/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x + sprite_width/2, y+8, title);


draw_set_font(fnt_btn)
draw_text_ext(x + sprite_width/2, y+40, detail, 20, sprite_width-20);

if prompt_sprite != noone {
	draw_sprite_ext(prompt_sprite, image_index, x + sprite_width/2, y+ 130, 2, 2, image_angle, image_blend, image_alpha)
}
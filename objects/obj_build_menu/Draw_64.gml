/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

draw_self()

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_black);
//draw_sprite_ext(spr_w_box, image_index, x+5, y+2, global.view_width/3.2/9, 3, image_angle, image_blend, image_alpha)
draw_line(x+2, y+28, x+sprite_width-5, y+28)

draw_set_color(c_white);
draw_text(x + sprite_width / 2, y+7, text);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
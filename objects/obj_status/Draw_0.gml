/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
//draw_set_color(image_blend);
draw_set_alpha(image_alpha)

draw_text_outline(x, y, c_white, image_blend, text)



y -= 0.2 + log10(image_alpha*35)
image_alpha -= 0.01

if image_alpha <= 0 { instance_destroy() }

draw_set_alpha(1)
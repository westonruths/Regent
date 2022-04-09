/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_lt_box,0,x-30,y-60,21,22,image_angle,c_white,image_alpha)

draw_self()

image_alpha = 1
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_black);
draw_text(x + sprite_width/0.8, y - sprite_height/2, "Are you sure? \n This will delete your old save.");
draw_text(x + sprite_width/2, y + sprite_height/2, "Yes");

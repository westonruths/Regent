/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_lt_box,0,x-30,y-30,16,18,image_angle,c_white,image_alpha)

draw_self()

image_alpha = 1
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_black);
draw_text(x + sprite_width/2, y + sprite_height/2, "New Game");

draw_set_font(fnt_big_btn);
draw_text(x + sprite_width/2, y - 15, "Welcome!");

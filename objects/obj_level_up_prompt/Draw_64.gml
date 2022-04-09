/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_lt_box
image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)

draw_self();

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x + sprite_width/2, y+7, "Renown Level Up!");
	
draw_text(x + sprite_width/2, y+45, "Level " + string(level));

draw_sprite_ext(spr_tech_point, image_index, x+sprite_width/2, y + sprite_height/2, 3, 3, image_angle, image_blend, image_alpha)
draw_text(x + sprite_width/2, y + sprite_height - 70, string(tech_reward) + " Technology Point");

draw_set_font(fnt_big_btn)
draw_text(x + sprite_width/2, y + sprite_height - 30, "Tap to Claim!");

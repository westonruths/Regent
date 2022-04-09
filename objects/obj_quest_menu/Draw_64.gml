/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

draw_self()

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_white);
draw_text(x + sprite_width / 2, y+7, text);

var pc = (global.renown / global.renown_next_level) * 100;
draw_healthbar(x+5,y+33, x+sprite_width-5, y+44, pc, c_black, c_blue, c_blue, 0, true, true)
	
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_white);
draw_text(x + 10, y+39, "Renown Level " + string(global.renown_level));
draw_set_halign(fa_right);
draw_text(x + sprite_width-5, y+39, string(global.renown) + "/" + string(global.renown_next_level));

//draw_set_color(c_black);
//draw_line(x+2, y+45, x+sprite_width-5, y+45)

draw_set_halign(fa_left);
draw_set_valign(fa_top);
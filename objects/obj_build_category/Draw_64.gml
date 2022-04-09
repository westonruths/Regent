/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_lt_box
image_xscale = global.view_width/3.2/sprite_get_width(spr_lt_box)
image_yscale = 5

draw_self()

draw_set_font(fnt_text)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_text(x+sprite_width/2, y+25, text);

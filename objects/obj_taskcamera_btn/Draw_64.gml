/// @description Insert description here
// You can write your code in this editor
if toggle_on { 
	sprite_index = spr_dt_box 
} else {
	sprite_index = spr_lt_box
}

draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_black);
draw_text(x + sprite_width/2, y + sprite_height/2, "Move Camera");
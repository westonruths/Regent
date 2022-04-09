/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_self()

if (num_stored > 0) {
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	if global.zoom_level > 1.1 {
		draw_set_font(fnt_big_btn);
	} else {
		draw_set_font(fnt_btn);
	}
	draw_text(x+10, y+10, string(num_stored));
}


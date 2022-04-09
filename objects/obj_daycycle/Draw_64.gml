//var c = c_white;
//draw_text_color(10, 10, string(global.seconds), c,c,c,c, 1);
//draw_text_color(10, 30, string(global.minutes), c,c,c,c, 1);
//draw_text_color(10, 50, string(global.hours), c,c,c,c, 1);
//draw_text_color(10, 70, string(global.day), c,c,c,c, 1);
//draw_text_color(10, 90, string(global.season), c,c,c,c, 1);
//draw_text_color(10,110, string(global.year), c,c,c,c, 1);

draw_set_font(fnt_big_btn)
draw_set_valign(fa_bottom)
draw_set_halign(fa_middle)

var _hour = ""

if floor(global.hours) > 12 {
	_hour = string(floor(global.hours)-12) + " pm"
} else if floor(global.hours) == 12 {
	_hour = string(floor(global.hours)) + " pm"
} else if floor(global.hours) == 0 {
	_hour = string(12) + " am"
} else {
	_hour = string(floor(global.hours)) + " am"
}

draw_text_outline(global.view_width/2,global.view_height-10, c_black, c_white, "Day " + string(global.day) + ": " + _hour)
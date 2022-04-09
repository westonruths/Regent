/// @description Insert description here
// You can write your code in this editor
draw_self()

var x_offset = 13
var y_offset = 20
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
if pawn.crowned {
	draw_sprite_ext(spr_crown,0,x+x_offset,y+y_offset-7, .7, .7, image_angle, image_blend, image_alpha)	
}

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_text(x+25, y + 10, pawn.name)
draw_text_ext(x+28, y + 27, pawn.current_task, 9999, 100)

var ch = (pawn.hp / pawn.hp_max) * 100;
var cf = (pawn.char_food / pawn.char_food_max) * 100;
var ce = (pawn.char_energy / pawn.char_energy_max) * 100;
var cm = (pawn.mood.mood / pawn.mood.mood_max) * 100;

// Draw thoughts & mood modifiers
if cm >= 80 {
	draw_sprite_ext(happiness_01, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 50 {
	draw_sprite_ext(happiness_02, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 20 {
	draw_sprite_ext(happiness_03, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else {
	draw_sprite_ext(happiness_04, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
}


draw_set_color(c_black);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);

var x_bar = 130

var y_top = 5
var y_btm = y_top+5
draw_healthbar(x+x_bar,y+y_top, global.view_width-25, y+y_btm, ch, c_black, c_red, c_red, 0, true, true)
//draw_text(x+x_bar, y + y_top, "H: ")

var y_top = y_btm+4
var y_btm = y_top+5
draw_healthbar(x+x_bar,y+y_top, global.view_width-25, y+y_btm, cf, c_black, c_green, c_green, 0, true, true)
//draw_text(x+x_bar, y + y_top, "F: ")

var y_top = y_btm+4
var y_btm = y_top+5
draw_healthbar(x+x_bar,y+y_top, global.view_width-25, y+y_btm, ce, c_black, make_color_rgb(255,215,0), make_color_rgb(255,215,0), 0, true, true)
//draw_text(x+x_bar, y + y_top, "E: ")

var y_top = y_btm+4
var y_btm = y_top+5
draw_healthbar(x+x_bar,y+y_top, global.view_width-25, y+y_btm, cm, c_black, c_blue, c_blue, 0, true, true)
//draw_text(x+x_bar, y + y_top, "M: ")
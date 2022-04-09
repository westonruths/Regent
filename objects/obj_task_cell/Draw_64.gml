/// @description Insert description here
// You can write your code in this editor
draw_self()

var y_mod = 4
if (script_get_name(job) != "Haul" && script_get_name(job) != "Patient") {
	var ch = (skill_exp / skill_next_level) * 100;
	draw_healthbar(x+30,y+15, x+90, y+24, ch, c_black, c_blue, c_blue, 0, true, true)
	draw_set_color(c_white);
	draw_text(x + 30, y+12, "Level: " + string(skill_level));
	y_mod = 0
}

draw_set_color(c_black);
draw_set_font(fnt_btn);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x + 30, y+y_mod, script_get_name(job));

if (enabled) {
	draw_sprite_ext(spr_confirm, image_index, x+sprite_width/2, y+sprite_height/2, 1.5, 1.5, image_angle, image_blend, image_alpha)
} 
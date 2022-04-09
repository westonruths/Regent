/// @description Insert description here
// You can write your code in this editor
if (!global.menu_open) {
	draw_sprite_ext(spr_itemdisc_01, image_index, x, y, 2, 2, image_angle, image_blend, image_alpha)
	
	if new_quest {
		draw_sprite_ext(spr_radiance, image_index, x, y, 1.7, 1.7, radiance_rotation, image_blend, image_alpha)
		radiance_rotation -= 1
	}
	
	draw_self()
	
	var pc = (global.renown / global.renown_next_level) * 100;
	draw_healthbar(x-140,y-10, x-25, y+10, pc, c_black, c_blue, c_blue, 0, true, true)
	
	// Draw text
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_btn);

	draw_set_color(c_white);
	draw_text(x - 130, y, "Renown Level " + string(global.renown_level));
	draw_set_color(c_white);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}


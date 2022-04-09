/// @description Insert description here
// You can write your code in this editor

if !selected {
	image_xscale = 6
	image_yscale = 3

	var _text = "Move"
	if instance_exists(pawn) {
		if !pawn.drafted {
			image_blend = c_dkgrey
			sprite_index = spr_w_box
		} else {
			image_blend = c_white
			sprite_index = spr_w_box
		}
	}

	draw_self()

	//draw_sprite_ext(indicator,0,x+15,y+sprite_height/2,1,1,image_angle, image_blend, image_alpha)

	draw_set_font(fnt_btn)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_color(c_black);
	draw_text(x+sprite_width/2,y+sprite_height/2,_text)
} else {
	visible = true
	sprite_index = spr_lt_box
	image_xscale = global.view_width/3.1/sprite_get_width(spr_lt_box)
	image_yscale = 13
	image_blend = c_white
	
	draw_sprite_ext(spr_w_box, image_index, global.view_width/2-110, 5, 25, 3, image_angle, image_blend, image_alpha)
	draw_set_color(c_black)
	draw_set_font(fnt_big_btn)
	draw_set_valign(fa_top)
	draw_set_halign(fa_middle)
	draw_text(global.view_width/2, 7, help_text);
	
	draw_self();

	draw_sprite_ext(obj_sprite, image_index, x+25, y + 25, 2, 2, image_angle, image_blend, image_alpha)

	draw_set_font(fnt_text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_color(c_black);
	draw_text(x + 48, y+5, name);
	
	draw_set_font(fnt_btn)
	draw_text_ext(x+48, y+30, detail, 12, sprite_width-50);
}
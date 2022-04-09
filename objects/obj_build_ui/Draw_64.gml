/// @description Insert description here
// You can write your code in this editor
if !techenabled {
	image_blend = c_dkgray	
} else {
	image_blend = noone
}

if !selected {
	sprite_index = spr_lt_box

	
	image_xscale = global.view_width/3.2/sprite_get_width(spr_lt_box)
	image_yscale = 7
} else {
	sprite_index = spr_lt_box
	image_xscale = global.view_width/3.1/sprite_get_width(spr_lt_box)
	image_yscale = 14
	
	draw_sprite_ext(spr_w_box, image_index, global.view_width/2-110, 5, 25, 3, image_angle, image_blend, image_alpha)
	draw_set_color(c_black)
	draw_set_font(fnt_text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_middle)
	draw_text(global.view_width/2, 10, help_text);
}
draw_self();

draw_sprite_ext(obj_sprite, image_number - 1, x+25, y + 25, 1, 1, image_angle, image_blend, image_alpha)

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_black);
draw_text(x + 48, y+7, name);
	
draw_set_font(fnt_btn)
draw_text(x+48, y+28, detail);

var resource_x = 55
var resource_y = 50
draw_set_valign(fa_middle)
if build_cost.costs[0] > 0 {
		
	draw_sprite_ext(spr_wood, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
	draw_text(x + resource_x + 5, y + resource_y, " x" + string(build_cost.costs[0]));
	resource_x += 40
}

if build_cost.costs[1] > 0 {
	draw_sprite_ext(spr_stone, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
	draw_text(x + resource_x + 5, y + resource_y, " x" + string(build_cost.costs[1]));
	resource_x += 40
}

if resource_x == 55 {
	draw_text(x + 48, y + resource_y, "No resource cost");
}

if !techenabled {
	var tech_name = ""
	with (techs) {
		tech_name = techname[other.techid]
	}
	draw_set_font(fnt_big_btn)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_color(c_white);
	draw_text(x + sprite_width/2, y+sprite_height/2, "Requires Tech:\n" + tech_name);
}

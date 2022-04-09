/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_lt_box
image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)

draw_self();

var x_offset = 50
var y_offset = 75
if instance_exists(pawn) {
	draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 3, 3, image_angle, image_blend, image_alpha)
	draw_sprite_ext(pawn.hair.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 3, 3, image_angle, image_blend, image_alpha)
	draw_sprite_ext(pawn.tool.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 3, 3, image_angle, image_blend, image_alpha)
}

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x + sprite_width/2, y+7, string(pawn_name) + " is throwing a tantrum!");
	
var menu_x = x + sprite_width/2
var menu_y = y
with (pawn.mood) {
	draw_set_font(fnt_btn);
	draw_text(menu_x, menu_y + 25, "This occurred because of...");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_btn);
	draw_set_color(c_black);
	
	var y_buff = 40
	
	var counter = 0
	for(var i=0; i<array_length(thought); i++) {
		if thoughtactive[i] && counter < 7 {
			if thoughteffect[i] > 0 {
				//draw_set_color(make_color_rgb(0, 100, 0));
			} else {
				counter += 1
				draw_set_color(make_color_rgb(136, 8, 8));
				draw_set_halign(fa_left);
				draw_text_ext(menu_x - 70, menu_y + y_buff, thought[i], 10, 120);
				draw_set_halign(fa_right);
				draw_text(menu_x + 80, menu_y + y_buff, string(thoughteffect[i]));
				y_buff += 14
			}
		}
	}
}

draw_set_font(fnt_big_btn)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x + sprite_width/2, y + sprite_height - 60, "The tantrum will end in " + string(round(pawn.moody_end-pawn.moody_counter)) + " hours");

draw_set_font(fnt_text)
draw_text(x + sprite_width/2, y + sprite_height - 30, "Tap to Dismiss");

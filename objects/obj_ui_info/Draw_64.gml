/// @description Insert description here
// You can write your code in this editor
if instance_exists(selection) && instance_exists (obj_close_info) {	
	
	image_blend = c_white
	
	// draw ui
	draw_self();

	var selection_image = selection.sprite_index
	
	if selection.object_index == obj_stockpile {
		selection_image = stockpile_zone_icon
	}

	draw_sprite_ext(selection_image, image_index, x+25, y + 25, 1, 1, image_angle, image_blend, image_alpha)

	draw_set_font(fnt_text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_color(c_black);
	draw_text(x + 48, y+10, selection.title);
	
	draw_set_font(fnt_btn)
	var detail = selection.detail
	if variable_instance_exists(selection, "hp") && variable_instance_exists(selection, "hp_max") {
		detail += "\nHP: " + string(selection.hp) + "/" + string(selection.hp_max)
	}
	draw_text_ext(x+48, y+30, detail, 15, sprite_width-50);
	
	if selection.object_index == obj_construction {
		draw_text(x + 48, y+55, "Resources Required:");
		
		var resource_x = 60
		var resource_y = 75
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		if selection.build_cost.original_costs[0] > 0 {
		
			draw_sprite_ext(spr_wood, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
			draw_text(x + resource_x + 8, y + resource_y, string(selection.build_cost.original_costs[0]-selection.build_cost.costs[0]) + "/" + string(selection.build_cost.original_costs[0]));
			resource_x += 50
		}

		if selection.build_cost.original_costs[1] > 0 {
			draw_sprite_ext(spr_stone, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
			draw_text(x + resource_x + 8, y + resource_y, string(selection.build_cost.original_costs[1]-selection.build_cost.costs[1]) + "/" + string(selection.build_cost.original_costs[1]));
			resource_x += 50
		}

		if resource_x == 60 {
			draw_text(x + 48, y + resource_y, "All materials present");
		}	
	}
}
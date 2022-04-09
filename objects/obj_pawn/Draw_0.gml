/// @description Insert description here
// You can write your code in this editor

image_index = tool.image_index
if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

with(tool){
	x = other.x;
	y = other.y;
}

with (hair) {
	x = other.x
	y = other.y
}

if menu_open || drafted{
	//draw_ellipse_colour(x-10, y+1, x+10, y+10, c_green, c_green, true);
	if drafted {
		draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, c_red, image_alpha)
		draw_sprite_ext(selectbox_bottom, image_index, x, y-5, 1, 1, image_angle, c_red, image_alpha)	
	} else {
		draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
		draw_sprite_ext(selectbox_bottom, image_index, x, y-5, 1, 1, image_angle, image_blend, image_alpha)		
	}
	
	draw_sprite_ext(select_dots_large, image_index, targetX, targetY, 1, 1, image_angle, image_blend, image_alpha)
	
	if path_index != -1 {
		draw_set_color(c_white)
		draw_path(path, x, y, 1);
	}
}

draw_self();

if hp <= 0 { exit }

var ch = round((hp / hp_max) * 100);
//var cf = (char_food / char_food_max) * 100;
//var ce = (char_energy / char_energy_max) * 100;

if (hp < hp_max) {
	draw_healthbar(x-7,y+23, x+12, y+25, ch, c_black, c_red, c_red, 0, true, true)
	//draw_healthbar(x-10,y+13, x+10, y+15, cf, c_black, c_green, c_green, 0, true, true)
	//draw_healthbar(x-10,y+15, x+10, y+17, ce, c_black, c_blue, c_blue, 0, true, true)
}

//if (instance_exists(sleep_target)) {
//	draw_sprite_ext(spr_home, image_index, sleep_target.x, sleep_target.y, 1, 1, image_angle, image_blend, image_alpha)
//}


draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);

// Draw thoughts & mood modifiers
if global.zoom_level < 1.1 {
	draw_set_color(c_white);
	var _name_color = c_black
	var cm = (mood.mood / mood.mood_max) * 100;
	if cm >= 80 {
		draw_sprite_ext(happiness_01, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
	} else if cm >= 50 {
		draw_sprite_ext(happiness_02, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
	} else if cm >= 20 {
		draw_sprite_ext(happiness_03, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
	} else {
		//draw_set_color(c_red);
		//draw_text(x+5, y-15, "I'm upset!")
		_name_color = c_red
		draw_sprite_ext(happiness_04, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
	}

	draw_text_outline(x, y +15, c_white, _name_color, name)
}

//draw_set_color(c_aqua);
//draw_text(x+15, y-15, mood.caption)

//draw_ellipse_colour(targetX-5, targetY-3, targetX+5, targetY+5, c_red, c_red, false);
//if instance_exists(construct_target) {
//	draw_ellipse_colour(construct_target.x-5, construct_target.y-3, 
//		construct_target.x+5, construct_target.y+5, c_blue, c_blue, false);
//}

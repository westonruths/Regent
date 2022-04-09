/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

draw_self()

if !instance_exists(pawn) {
	unpause()
	exit	
}

// Draw pawn
var x_offset = 50
var y_offset = 72
var xscale = 2
var yscale = 2
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
if pawn.crowned {
	draw_sprite_ext(spr_crown,0,x+x_offset,y+y_offset-12, xscale*.7, yscale*.7, image_angle, image_blend, image_alpha)	
}

// Draw current task
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fnt_btn);
draw_text_ext(x + 80, y+60, pawn.current_task, 12, 80);

// Draw status bars
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_set_halign(fa_right);

draw_text(x + 52, y+88, "Health:");
var ch = (pawn.hp / pawn.hp_max) * 100;
draw_healthbar(x+55,y+90, x+140, y+100, ch, c_black, c_red, c_red, 0, true, true)

draw_text(x + 52, y+103, "Food:");
var cf = (pawn.char_food / pawn.char_food_max) * 100;
draw_healthbar(x+55,y+105, x+140, y+115, cf, c_black, c_green, c_green, 0, true, true)

draw_text(x + 52, y+118, "Energy:");
var ce = (pawn.char_energy / pawn.char_energy_max) * 100;
draw_healthbar(x+55,y+120, x+140, y+130, ce, c_black, make_color_rgb(255,215,0), make_color_rgb(255,215,0), 0, true, true)

draw_text(x + 52, y+132, "Mood:");
var cm = (pawn.mood.mood / pawn.mood.mood_max) * 100;
draw_healthbar(x+55,y+135, x+140, y+145, cm, c_black, c_blue, c_blue, 0, true, true)

draw_sprite_ext(indicator, image_index, x+55+(140-55)*(pawn.mood.mood_goal/pawn.mood.mood_max), y+137, 1, 1, image_angle, image_blend, image_alpha)
var line_x = x+55+(140-55)*(20/pawn.mood.mood_max)
draw_line_color(line_x,140,line_x,145,c_white, c_white)
line_x = x+55+(140-55)*(50/pawn.mood.mood_max)
draw_line_color(line_x,140,line_x,145,c_white, c_white)
line_x = x+55+(140-55)*(80/pawn.mood.mood_max)
draw_line_color(line_x,140,line_x,145,c_white, c_white)


// Draw thoughts & mood modifiers
if cm >= 80 {
	draw_sprite_ext(happiness_01, image_index, x+100, y+152, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 50 {
	draw_sprite_ext(happiness_02, image_index, x+100, y+152, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 20 {
	draw_sprite_ext(happiness_03, image_index, x+100, y+152, 2, 2, image_angle, image_blend, image_alpha)
} else {
	draw_sprite_ext(happiness_04, image_index, x+100, y+152, 2, 2, image_angle, image_blend, image_alpha)
}

var menu_x = x
var menu_y = y
with (pawn.mood) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_btn);
	draw_set_color(c_black);
	draw_text(menu_x + 5, menu_y + 152, "Mood Modifiers");
	
	var y_buff = 170
	for(var i=0; i<array_length(thought); i++) {
		if thoughtactive[i] && y_buff < global.view_height-90{
			if thoughteffect[i] > 0 {
				draw_set_color(make_color_rgb(0, 100, 0));
			} else {
				draw_set_color(make_color_rgb(136, 8, 8));
			}
			draw_set_halign(fa_left);
			draw_text_ext(menu_x + 7, menu_y + y_buff, thought[i], 10, 120);
			draw_set_halign(fa_right);
			draw_text(menu_x + 140, menu_y + y_buff, string(thoughteffect[i]));
			y_buff += 14
		}
	}
}

// Draw header text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_black);
//draw_sprite_ext(spr_lt_box, image_index, x+5, y+2, global.view_width/3.2/9, 3, image_angle, image_blend, image_alpha)
draw_line(x+2, y+28, x+sprite_width-5, y+28)
draw_text(x + sprite_width / 2, y+7, pawn.name);
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


// Draw task info
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_text_transformed(global.view_width - 122, global.view_height/2, "Order of Work", 1, 1, 90);
draw_arrow(global.view_width - 107, global.build_y, global.view_width - 107, global.view_height - 5, 12)
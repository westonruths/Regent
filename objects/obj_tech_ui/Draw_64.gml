/// @description Insert description here
// You can write your code in this editor

//draw dependencies
if (techstatus != 0) { // set the colour of the line (black means they can unlock it, gray is still locked)
	draw_set_colour(c_black)
} else {
	draw_set_colour(c_gray)
}

for (var d=0; d<needcount; d++) // loop around all of the lines we have already cached and draw them
{
    draw_line_width(x+sprite_width/2,y+sprite_height/2,
					linetox[d]+sprite_width/2,linetoy[d]+sprite_height/2,2)
};

switch(techstatus) {
	case 0:
		sprite_index = spr_w_box
		if image_blend == c_gray {
			image_blend = c_dkgray
		} else {
			image_blend = c_gray
		}
	break;
	
	case 1:
		sprite_index = spr_lt_box
		if image_blend == c_gray {
			image_blend = c_gray
		} else {
			image_blend = c_white
		}
	break;
	
	case 2:
		sprite_index = spr_lt_box
		if image_blend == c_gray {
			image_blend = c_green
		} else {
			image_blend = c_lime
		}
	break;
}

image_xscale = 5
image_yscale = 5

draw_self();

draw_sprite_ext(techsprite, image_index, x+sprite_width/2, y+sprite_height/2, 1, 1, image_angle, image_blend, image_alpha)

draw_set_font(fnt_btn)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)
draw_set_color(c_white);
draw_text(x+sprite_width/2,y,techname)

var resource_x = 10
var resource_y = 37

if (techstatus != 2) {
	for (var p=0; p<techpoints; p++) {
		draw_sprite_ext(spr_tech_point, image_index, x+resource_x+p*7, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
	}
}

if selected {
	draw_sprite_ext(spr_lt_box, image_index, menux, menuy, 25, 12, image_angle, image_blend, image_alpha)
	
	draw_sprite_ext(techsprite, image_index, menux+25, menuy + 25, 1, 1, image_angle, image_blend, image_alpha)
	draw_set_font(fnt_text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_color(c_black);
	draw_text(menux + 48, menuy+7, techname);
	
	draw_set_font(fnt_btn)
	draw_text_ext(menux+48, menuy+28, techdetail, 12, detail_width);
	
	var resource_x = 10
	var resource_y = 100
	draw_set_valign(fa_middle)
	if (techstatus != 2) {
		draw_text(menux + resource_x, menuy + resource_y, "Cost: ");
		draw_sprite_ext(spr_tech_point, image_index, menux+resource_x+40, menuy + resource_y-2, 1, 1, image_angle, image_blend, image_alpha)
		if global.tech_points >= techpoints {
			draw_set_color(c_black);
		} else {
			draw_set_color(c_red);
		}
		draw_text(menux + resource_x + 50, menuy + resource_y, " x" + string(techpoints));
		
		if techstatus == 0 {
			draw_set_font(fnt_btn)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
			draw_set_color(c_white);
			draw_text(menux + 115, menuy+ 70, "Requires Previous Tech");
		}
	} else {
		draw_text(menux + resource_x, menuy + resource_y, "Purchased");
	}

}




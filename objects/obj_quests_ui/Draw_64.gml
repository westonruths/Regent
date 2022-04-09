/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_lt_box
image_xscale = global.view_width/3.2/sprite_get_width(spr_lt_box)
image_yscale = 7

draw_self();

draw_sprite_ext(obj_sprite, image_index, x+25, y + 25, 1, 1, image_angle, image_blend, image_alpha)

draw_set_font(fnt_text)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_black);
draw_text(x + 48, y+7, name);
	
draw_set_font(fnt_btn)
draw_text(x+48, y+26, detail);

var resource_x = 48
var resource_y = 50
draw_set_valign(fa_middle)

draw_text(x + resource_x, y + resource_y, "Reward: ");

if renown_reward = "The Regent Crown" {
	draw_sprite_ext(spr_crown, image_index, x+resource_x+65, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
	draw_text(x + resource_x + 75, y + resource_y, renown_reward);
} else {
	draw_sprite_ext(spr_renown_crystal, image_index, x+resource_x+65, y + resource_y-2, 1.5, 1.5, image_angle, image_blend, image_alpha)
	draw_text(x + resource_x + 75, y + resource_y, " x" + string(renown_reward) + " Renown");
}


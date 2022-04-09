/// @description Insert description here
// You can write your code in this editor

image_xscale = 10
image_yscale = 3

draw_self()

var _text = ""
if instance_exists(pawn) {
	if pawn.melee {
		sprite_index = spr_w_box
		_text = "Melee"
		draw_sprite_ext(spr_sword_btn,0,x+15,y+sprite_height/2,1,1,image_angle, image_blend, image_alpha)
	} else {
		sprite_index = spr_w_box
		_text = "Ranged"
		draw_sprite_ext(spr_bow,0,x+15,y+sprite_height/2,1,1,image_angle, image_blend, image_alpha)
	}
}


draw_set_font(fnt_btn)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x+sprite_width/2+10,y+sprite_height/2,_text)
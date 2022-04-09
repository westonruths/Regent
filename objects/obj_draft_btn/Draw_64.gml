/// @description Insert description here
// You can write your code in this editor

image_xscale = 10
image_yscale = 3

var _text = "Draft"
if instance_exists(pawn) {
	if pawn.drafted {
		sprite_index = spr_w_box
		_text = "Undraft"
	} else {
		sprite_index = spr_w_box
	}
}

draw_self()

draw_sprite_ext(spr_shield,0,x+15,y+sprite_height/2,1,1,image_angle, image_blend, image_alpha)

draw_set_font(fnt_btn)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_black);
draw_text(x+sprite_width/2+10,y+sprite_height/2,_text)
/// @description Insert description here
// You can write your code in this editor

if instance_exists(pawn) {
	image_index = pawn.image_index
	x = pawn.x
	y = pawn.y
	
	draw_self()
	
	if pawn.crowned {
		draw_sprite_ext(spr_crown,0,x,y-7, 0.7, 0.7, image_angle, c_white, 1)	
	}
}
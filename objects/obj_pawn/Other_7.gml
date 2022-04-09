/// @description Insert description here
// You can write your code in this editor

if sprite_index == spr_pawn_hurt {
	sprite_index = spr_pawn_idle
}

if sprite_index == spr_pawn_dead {
	with (instance_create_layer(x, y, "Items", obj_skull)) {
		title = other.name
	}
	instance_destroy()
}
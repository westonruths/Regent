/// @description Insert description here
// You can write your code in this editor

if (global.game_speed == 0) {
	sprite_index = spr_fast_off 
} else if (global.game_speed == 1) {
	sprite_index = spr_fast_off
} else {
	sprite_index = spr_fast
}

draw_sprite_ext(spr_itemdisc_01, 0, x, y, 2, 2, image_angle, image_blend, image_alpha)
draw_self()
/// @description Insert description here
// You can write your code in this editor


if selected {
	draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
} else {
	draw_self();
}


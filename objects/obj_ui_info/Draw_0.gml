/// @description Insert description here
// You can write your code in this editor
if instance_exists(selection) && instance_exists (obj_close_info) {
	draw_sprite_ext(selectbox_top, image_index, selection.x, selection.y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, selection.x, selection.y, 1, 1, image_angle, image_blend, image_alpha)
}
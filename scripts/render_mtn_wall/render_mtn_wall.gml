// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function render_mtn_wall(){
	var object_neighbor = obj_mtn_wall
	var top = instance_position(x, y - sprite_height, object_neighbor)
	var bottom = instance_position(x, y + sprite_height, object_neighbor)
	var left = instance_position(x - sprite_width, y, object_neighbor)
	var right = instance_position(x + sprite_width, y, object_neighbor)

	// Logic to check neighbors
	if (top == noone && bottom == noone && left == noone && right == noone) {
		sprite_index = gw_alone
	}

	if (top != noone && bottom == noone && left == noone && right != noone) {
		sprite_index = gw_corner_bottom_left
	}

	if (top != noone && bottom == noone && left != noone && right == noone) {
		sprite_index = gw_corner_bottom_right
	}

	if (top == noone && bottom != noone && left == noone && right != noone) {
		sprite_index = gw_corner_top_left
	}

	if (top == noone && bottom != noone && left != noone && right == noone) {
		sprite_index = gw_corner_top_right
	}

	if (top == noone && bottom == noone && left == noone && right != noone) {
		sprite_index = gw_horizontal_left
	}

	if (top == noone && bottom == noone && left != noone && right != noone) {
		sprite_index = gw_horizontal_middle
	}

	if (top == noone && bottom == noone && left != noone && right == noone) {
		sprite_index = gw_horizontal_right
	}

	if (top != noone && bottom != noone && left != noone && right != noone) {
		sprite_index = gw_middle_center
	}

	if (top != noone && bottom == noone && left == noone && right == noone) {
		sprite_index = gw_vertical_bottom
	}

	if (top != noone && bottom != noone && left == noone && right == noone) {
		sprite_index = gw_vertical_middle
	}

	if (top == noone && bottom != noone && left == noone && right == noone) {
		sprite_index = gw_vertical_top
	}
	
	if (top != noone && bottom == noone && left != noone && right != noone) {
		sprite_index = gw_t_bottom
	}
	
	if (top == noone && bottom != noone && left != noone && right != noone) {
		sprite_index = gw_t_top
	}

	if (top != noone && bottom != noone && left != noone && right == noone) {
		sprite_index = gw_t_right
	}

	if (top != noone && bottom != noone && left == noone && right != noone) {
		sprite_index = gw_t_left
	}
}
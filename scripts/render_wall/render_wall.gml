// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function render_wall(){
	var object_neighbor = obj_room_wall
	var top = instance_position(x, y - sprite_height, object_neighbor)
	var bottom = instance_position(x, y + sprite_height, object_neighbor)
	var left = instance_position(x - sprite_width, y, object_neighbor)
	var right = instance_position(x + sprite_width, y, object_neighbor)
	
	// Logic to check to see if the neighbor is a wall
	if instance_exists(top) if top.obj_building_type != obj_wall && top.object_index != obj_wall {
		top = noone
	}
	if instance_exists(bottom) if bottom.obj_building_type != obj_wall && bottom.object_index != obj_wall {
		bottom = noone
	}
	if instance_exists(left) if left.obj_building_type != obj_wall && left.object_index != obj_wall {
		left = noone
	}
	if instance_exists(right) if right.obj_building_type != obj_wall && right.object_index != obj_wall {
		right = noone
	}

	// Logic to check neighbors
	if (top == noone && bottom == noone && left == noone && right == noone) {
		sprite_index = alone
	}

	if (top != noone && bottom == noone && left == noone && right != noone) {
		sprite_index = corner_bottom_left
	}

	if (top != noone && bottom == noone && left != noone && right == noone) {
		sprite_index = corner_bottom_right
	}

	if (top == noone && bottom != noone && left == noone && right != noone) {
		sprite_index = corner_top_left
	}

	if (top == noone && bottom != noone && left != noone && right == noone) {
		sprite_index = corner_top_right
	}

	if (top == noone && bottom == noone && left == noone && right != noone) {
		sprite_index = horizontal_left
	}

	if (top == noone && bottom == noone && left != noone && right != noone) {
		sprite_index = horizontal_middle
	}

	if (top == noone && bottom == noone && left != noone && right == noone) {
		sprite_index = horizontal_right
	}

	if (top != noone && bottom != noone && left != noone && right != noone) {
		sprite_index = middle_center
	}

	if (top != noone && bottom == noone && left == noone && right == noone) {
		sprite_index = vertical_bottom
	}

	if (top != noone && bottom != noone && left == noone && right == noone) {
		sprite_index = vertical_middle
	}

	if (top == noone && bottom != noone && left == noone && right == noone) {
		sprite_index = vertical_top
	}
	
	if (top != noone && bottom == noone && left != noone && right != noone) {
		sprite_index = t_bottom
	}
	
	if (top == noone && bottom != noone && left != noone && right != noone) {
		sprite_index = t_top
	}

	if (top != noone && bottom != noone && left != noone && right == noone) {
		sprite_index = t_right
	}

	if (top != noone && bottom != noone && left == noone && right != noone) {
		sprite_index = t_left
	}
}
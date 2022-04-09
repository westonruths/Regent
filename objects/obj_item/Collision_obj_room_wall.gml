/// @description Insert description here
// You can write your code in this editor

with (obj_pawn) {
	if instance_exists(item_holding) {
		if item_holding.id == other.id {
			exit
		}
	}
}

var max_dist = 9999
var cell = noone
with (obj_cell) {
	var dist = distance_to_point(other.x, other.y)
	if  dist < max_dist && !instance_exists(build_obj) {
		max_dist = dist
		cell = id
	}
}
		
x = cell.x
y = cell.y
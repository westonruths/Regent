// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_settler(){
	with (obj_storyteller) { counter_hrs[story.raid] = irandom_range(2, 4) }
	
	var _x = irandom_range(0,global.room_y_size)
	var _y = 32
	
	var max_dist = 9999
	var cell = noone
	with (obj_cell) {
		var dist = distance_to_point(_x, _y)
		if  dist < max_dist && !instance_exists(build_obj) {
			max_dist = dist
			cell = id
		}
	}

	var settler = instance_create_layer(cell.x, cell.y, "Instances", obj_pawn)

	if instance_exists(settler) {
		with (obj_camera) {
			xPanTo = settler.x
			yPanTo = settler.y
		}
	}
}
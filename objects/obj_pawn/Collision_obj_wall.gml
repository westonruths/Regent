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

//move_to_random_point()
//if !mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
//	x += sprite_width
//}

//if mp_grid_path(global.grid, path, x, y, targetX, targetY, false)  {
//	path_start(path, spd, path_action_stop, true)
//} else {
//	move_to_random_point()	
//}

//if place_empty(x+global.grid_resolution) {
//	x=x+1
//} else if place_empty(x-global.grid_resolution) {
//	x=x-1
//}

//if place_empty(y+global.grid_resolution) {
//	y=y+1
//} else if place_empty(y-global.grid_resolution) {
//	y=y-1
//}

//x = xprevious
//y = yprevious




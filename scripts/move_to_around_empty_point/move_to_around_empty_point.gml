// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_around_empty_point(pointX, pointY){
	var object_avoid = obj_wall
	if place_empty(pointX + global.grid_resolution, pointY, object_avoid) {
		targetX = pointX + global.grid_resolution
		targetY = pointY
	} else if place_empty(pointX - global.grid_resolution, pointY, object_avoid) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_empty(pointX, pointY - global.grid_resolution, object_avoid) {
		targetX = pointX
		targetY = pointY - global.grid_resolution
	} else if place_empty(pointX, pointY + global.grid_resolution, object_avoid) {
		targetX = pointX
		targetY = pointY + global.grid_resolution
	} else if place_empty(pointX + global.grid_resolution, pointY + global.grid_resolution, object_avoid) {
		targetX = pointX + global.grid_resolution
		targetY = pointY + global.grid_resolution
	} else if place_empty(pointX + global.grid_resolution, pointY - global.grid_resolution, object_avoid) {
		targetX = pointX + global.grid_resolution
		targetY = pointY - global.grid_resolution
	} else if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, object_avoid) {
		targetX = pointX - global.grid_resolution
		targetY = pointY + global.grid_resolution
	} else if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, object_avoid) {
		targetX = pointX - global.grid_resolution
		targetY = pointY + global.grid_resolution
	} else {
		return false
	}
	return true
}
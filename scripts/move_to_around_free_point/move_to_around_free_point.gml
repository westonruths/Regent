// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_around_free_point(pointX, pointY){
	var max_distance = 9999
	var dist = max_distance - 1
		
	if place_empty_list(pointX - global.grid_resolution, pointY) || place_empty_list(pointX + global.grid_resolution, pointY) {
		dist = distance_to_point(pointX - global.grid_resolution, pointY)
		if place_empty_list(pointX - global.grid_resolution, pointY) && (dist < max_distance) {
			targetX = pointX - global.grid_resolution
			targetY = pointY
			max_distance = dist
		}
	
		dist = distance_to_point(pointX + global.grid_resolution, pointY)
		if place_empty_list(pointX + global.grid_resolution, pointY) && (dist < max_distance) {
			targetX = pointX + global.grid_resolution
			targetY = pointY
			max_distance = dist
		}
	} else {
		dist = distance_to_point(pointX, pointY - global.grid_resolution)
		if place_empty_list(pointX, pointY - global.grid_resolution) && (dist < max_distance) {
			targetX = pointX
			targetY = pointY - global.grid_resolution
			max_distance = dist
		} 
	
		dist = distance_to_point(pointX, pointY + global.grid_resolution)
		if place_empty_list(pointX, pointY + global.grid_resolution) && (dist < max_distance) {
			targetX = pointX
			targetY = pointY + global.grid_resolution
			max_distance = dist
		} 
	
		dist = distance_to_point(pointX + global.grid_resolution, pointY + global.grid_resolution)
		if place_empty_list(pointX + global.grid_resolution, pointY + global.grid_resolution) && (dist < max_distance) {
			targetX = pointX + global.grid_resolution
			targetY = pointY + global.grid_resolution
			max_distance = dist
		} 
	
		dist = distance_to_point(pointX + global.grid_resolution, pointY - global.grid_resolution)
		if place_empty_list(pointX + global.grid_resolution, pointY - global.grid_resolution) && (dist < max_distance) {
			targetX = pointX + global.grid_resolution
			targetY = pointY - global.grid_resolution
			max_distance = dist
		} 
	
		dist = distance_to_point(pointX - global.grid_resolution, pointY + global.grid_resolution)
		if place_empty_list(pointX - global.grid_resolution, pointY + global.grid_resolution) && (dist < max_distance) {
			targetX = pointX - global.grid_resolution
			targetY = pointY + global.grid_resolution
			max_distance = dist
		} 
	
		dist = distance_to_point(pointX - global.grid_resolution, pointY + global.grid_resolution)
		if place_empty_list(pointX - global.grid_resolution, pointY + global.grid_resolution) && (dist < max_distance) {
			targetX = pointX - global.grid_resolution
			targetY = pointY + global.grid_resolution
			max_distance = dist
		} 
	}
	
	return true
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_around_free_point(pointX, pointY){

	if place_empty_list(pointX + global.grid_resolution, pointY) {
		return true
	} else if place_empty_list(pointX - global.grid_resolution, pointY) {
		return true
	} else if place_empty_list(pointX, pointY - global.grid_resolution) {
		return true
	} else if place_empty_list(pointX, pointY + global.grid_resolution) {
		return true
	} else if place_empty_list(pointX + global.grid_resolution, pointY + global.grid_resolution) {
		return true
	} else if place_empty_list(pointX + global.grid_resolution, pointY - global.grid_resolution) {
		return true
	} else if place_empty_list(pointX - global.grid_resolution, pointY + global.grid_resolution) {
		return true
	} else if place_empty_list(pointX - global.grid_resolution, pointY + global.grid_resolution) {
		return true
	}

	//return false
	
	//mp_grid_clear_cell(global.grid, floor(pointX / global.grid_resolution), floor(pointY / global.grid_resolution));
	//var result = mp_grid_path(global.grid, test_path, x, y, pointX, pointY, false)
	//mp_grid_add_cell(global.grid, floor(pointX / global.grid_resolution), floor(pointY / global.grid_resolution));
	//return result
	
	//if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY - global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY - global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else {
	//	return false
	//}
	//return true
	
}
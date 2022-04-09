// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_empty_list(pointX, pointY){
	var _objects = [obj_wall, obj_mtn_wall, obj_tree]
	
	for (var i = 0; i < array_length(_objects); i++) {
		var _object = _objects[i]
		
		if !place_empty(pointX, pointY, _object) {
			return false
		}
	}
	
	return true

}
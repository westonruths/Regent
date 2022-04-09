// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_room(_x, _y){
	
	with (obj_rooms) {
		for(var i=0;i<array_length(rooms);i++) {
			for(var j=0;j<array_length(rooms[i]);j++) {
				var cell = rooms[i][j]
		
				if point_distance(_x, _y, cell.x, cell.y) < global.grid_resolution {
					return true	
				}
			}
		}
	}
	
	return false
}
/// @description Just check existing rooms
// You can write your code in this editor
tmp_cells = []
inside_cells = []
rooms = []
room_colors = []

for(var i=0;i<array_length(rooms);i++) {
	for(var j=0;j<array_length(rooms[i]);j++) {
		var cell = rooms[i][j]
		array_push(tmp_cells, cell)
	}
}

with (obj_stone) {
	array_push(other.tmp_cells, instance_position(x, y, obj_cell))
}

for(var i=0;i<array_length(tmp_cells);i++) {
	if instance_exists(tmp_cells[i]) {
		if !mp_grid_path(global.enemy_grid, path, tmp_cells[i].x, tmp_cells[i].y, 1, 1, false) {
			array_push(inside_cells, tmp_cells[i])
		}
	}
}

//repeat (1) {
//	extended_cells = []
//	for(var i=0;i<array_length(inside_cells);i++) {
//		with (inside_cells[i]) {
//			var cell = noone
//			cell = instance_position(x-global.grid_resolution, y-global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x-global.grid_resolution, y+global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x-global.grid_resolution, y, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x+global.grid_resolution, y-global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x+global.grid_resolution, y+global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x+global.grid_resolution, y, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x, y+global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}
//			cell = instance_position(x, y-global.grid_resolution, obj_cell)
//			if instance_exists(cell) {
//				var used = false
//				for(var j=0;j<array_length(other.extended_cells);j++) {
//					var other_cell = other.extended_cells[j]
//					if cell == other_cell {
//						used = true
//					}
//				}
//				if !used {
//					array_push(other.extended_cells, cell)
//				}
//			}	
//		}
//	}


//	for(var i=0;i<array_length(extended_cells);i++) {
//		var used = false
//		for(var j=0;j<array_length(inside_cells);j++) {
//			if extended_cells[i] == inside_cells[j] {
//				used = true
//				break
//			}
//		}
//		if used { continue }
		
//		if !mp_grid_path(global.enemy_grid, path, extended_cells[i].x, extended_cells[i].y, 1, 1, false) {
//			array_push(inside_cells, extended_cells[i])
//		}
//	}
//}

var used_cells = []
for(var i=0;i<array_length(inside_cells);i++) {
	var aroom = []
	var cell = inside_cells[i]
	for(var j=0;j<array_length(inside_cells);j++) {
		var used = false
		var other_cell = inside_cells[j]
		
		for(var p=0;p<array_length(used_cells);p++) {
			if used_cells[p] = other_cell { 
				used = true 
			}
		}
		
		if !used {
			if mp_grid_path(global.enemy_grid, path, cell.x, cell.y, other_cell.x, other_cell.y, false) {
				array_push(aroom, other_cell)
				array_push(used_cells, other_cell)
			}
		}
	}
	
	if (array_length(aroom) > 0) {
		array_push(rooms, aroom)
		array_push(room_colors, make_color_rgb(irandom(255),irandom(255),irandom(255)))
	}
}
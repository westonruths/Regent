// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_room_cell(cell){
	if instance_exists(cell) {
		var used = false
		for(var j=0;j<array_length(inside_cells);j++) {
			var other_cell = inside_cells[j]
			if cell == other_cell { 
				used = true 
			} else {
				//print("not used: ", cell)
			}
		}
			
		if !used && instance_exists(cell.build_obj) {
			if !cell.build_obj.solid {
				array_push(tmp_cells, cell)
			} else {
				cell = noone
			}
		} else {
			cell = noone
		}
	}
	
	return cell
}
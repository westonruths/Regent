/// @description Insert description here
// You can write your code in this editor


var lowest_y = 0
var highest_y = global.view_height
with (obj_pawn_btn) {
	var item_y = y + sprite_height
	if lowest_y < item_y {
		lowest_y = item_y
	}
	
	if highest_y > item_y {
		highest_y = item_y
	}
}

//if lowest_y > global.view_height ||  {
//	dragging = false	
//}

if dragging {
	with (obj_pawn_btn) {
		var yTo = other.drag_y - (device_mouse_y_to_gui(0) - y)
		other.delta = (yTo - y) / 10
		var delta = other.delta
		
		if highest_y < 70 && delta < 0 {
			y -= delta
		} else if lowest_y > global.view_height && delta > 0 {
			y -= delta
		}
	}
}


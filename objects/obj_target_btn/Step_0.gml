/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(pawn) { instance_destroy() }

if (global.menu_open == false || pawn.menu_open == false || global.building) && !selected{
	instance_destroy()
}

if !selected { exit }

global.menu_open = true

if instance_exists(pawn) { name = pawn.name + ": Set Target" }

with(obj_taskremove_btn) { instance_destroy() }

var place = false
var remove = false
var movecam = false
with (obj_taskplace_btn) { place = toggle_on }
with (obj_taskremove_btn) { remove = toggle_on }
with (obj_taskcamera_btn) { movecam = toggle_on }

if place { help_text = "Tap to Set Target" }
if remove { help_text = "N/A" }
if movecam { help_text = "Drag or Pinch to Move" }

if selected && mouse_check_button_pressed(mb_left) && !movecam {
	var ui = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_ui_interface)
	if ui {exit;}
}

if mouse_check_button_released(mb_left) {
	var ui = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_ui_interface)
	if ui {exit;}
	
	if !place {exit} 
	
	var _x = device_mouse_x(0)
	var _y = device_mouse_y(0)
	
	var max_dist = 16
	var cell = noone
	with (obj_cell) {
		var dist = distance_to_point(_x, _y)
		if  dist < max_dist && place_empty(x, y, obj_wall) && place_empty(x, y, obj_mtn_wall) && place_empty(x, y, obj_tree) {
			max_dist = dist
			cell = id
		}
	}
		
	if instance_exists(cell) {
		_x = cell.x
		_y = cell.y
	}
	
	//with(instance_nearest(_x, _y, obj_cell)) {
	//	if !place_empty_list(_x,_y) { exit }
		
	//	_x = x
	//	_y = y
	//}
	
	with (obj_target) {
		if pawn == other.pawn {
			instance_destroy()
		}
	}
	
	with (instance_create_layer(_x, _y, "Items", obj_target)) {
		pawn = other.pawn
	}
}
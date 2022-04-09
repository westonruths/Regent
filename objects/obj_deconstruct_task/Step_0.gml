/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var place = false
var remove = false
var movecam = false
with (obj_taskplace_btn) { place = toggle_on }
with (obj_taskremove_btn) { remove = toggle_on }
with (obj_taskcamera_btn) { movecam = toggle_on }

if place { help_text = "Tap or Drag to Select" }
if remove { help_text = "Tap or Drag to Undo" }
if movecam { help_text = "Drag or Pinch to Move" }

if selected && mouse_check_button_pressed(mb_left) && !movecam {
	var ui = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_ui_interface)
	if ui {exit;}
	
	rectx1 = device_mouse_x(0)
	recty1 = device_mouse_y(0)
	dragging = true
}

if dragging && mouse_check_button(mb_left) {
	rectx2 = device_mouse_x(0)
	recty2 = device_mouse_y(0)

	with (obj_building) { 
		tmp_selected = false
	}
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(rectx1, recty1, rectx2, recty2, obj_building, false, true, _list, false);
	if _num > 0 {
	    for (var i = 0; i < _num; ++i;) {
	        var building = _list[| i]
			with (building) {
				if variable_instance_exists(id, "build_cost") {
					if (object_index == obj_construction) || object_index == obj_stockpile || object_get_parent(object_index) == obj_crop {
						tmp_selected = true
					}
					
					if object_get_parent(object_index) == obj_building || object_get_parent(object_index) == obj_room_wall {
						tmp_selected = true
					}
				}
			}
		}
	}
	ds_list_destroy(_list);
}

if dragging && mouse_check_button_released(mb_left) {
	with (obj_cell) {
		visible = false
	}

	with (obj_mtn_wall) {
		tmp_selected = false
	}
	
	with (obj_animal) {
		tmp_selected = false
	}
	
	with (obj_building) { 
		tmp_selected = false
	}
	
	dragging = false
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(rectx1, recty1, rectx2, recty2, obj_building, false, true, _list, false);
	
	if _num > 0 {
	    for (var i = 0; i < _num; ++i;) {
	        var building = _list[| i]
			with(building){
				if variable_instance_exists(id, "build_cost") {
					if (object_index == obj_construction) || object_index == obj_stockpile || object_get_parent(object_index) == obj_crop {
						if place {
							if object_index == obj_construction {
								alarm[1] = 1
							} else {
								instance_destroy()
							}
						}
					}
				}

				if object_get_parent(object_index) == obj_building || object_get_parent(object_index) == obj_room_wall {
					if place {
						deconstruct = true
					} else if remove {
						deconstruct = false
					}
				}
			}
	    }
	}
	ds_list_destroy(_list);
}
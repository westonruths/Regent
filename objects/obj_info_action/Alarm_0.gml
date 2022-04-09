/// @description Insert description here
// You can write your code in this editor

switch selection.object_index {
	case obj_tree:
		if selection.selected == true { selection.selected = false }
		else if selection.selected == false { selection.selected = true }
	break;
	
	case obj_mtn_wall:
		if !selection.selected { 
			selection.selected = true 
			ds_list_add(global.selected_mtns, selection.id)
		} else if selection.selected {
			selection.selected = false
			ds_list_delete(global.selected_mtns, ds_list_find_index(global.selected_mtns, selection.id));
		}
	break;
}

if object_is_ancestor(selection.object_index, obj_animal) {
	if selection.selected == true { selection.selected = false }
	else if selection.selected == false { selection.selected = true }
}

if object_is_ancestor(selection.object_index, obj_building) {
	if selection.deconstruct == true { selection.deconstruct = false }
	else if selection.deconstruct == false { selection.deconstruct = true }
}

if object_is_ancestor(selection.object_index, obj_harvestable) {
	if selection.selected == true { selection.selected = false }
	else if selection.selected == false { selection.selected = true }	
}

if (selection.object_index == obj_construction) || selection.object_index == obj_stockpile || object_get_parent(selection.object_index) == obj_crop {
	unpause()
	instance_destroy(selection)
}


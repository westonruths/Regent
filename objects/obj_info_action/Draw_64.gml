/// @description Insert description here
// You can write your code in this editor

text = ""

switch selection.object_index {
	case obj_tree:
		if selection.selected == true { text = "Cancel Chop" }
		else if selection.selected == false { text = "Chop" }		
	break;
	
	case obj_mtn_wall:
		if !selection.selected { 
			text = "Mine"
		} else if selection.selected {
			text = "Cancel Mine"
		}
	break;
}

if object_is_ancestor(selection.object_index, obj_animal) {
	if selection.selected == true { text = "Cancel Hunt" }
	else if selection.selected == false { text = "Hunt" }	
}

if object_is_ancestor(selection.object_index, obj_building) {
	if selection.deconstruct == true { text = "Cancel Deconstruct" }
	else if selection.deconstruct == false { text = "Deconstruct" }
}

if object_is_ancestor(selection.object_index, obj_harvestable) {
	if selection.selected == true { text = "Cancel Harvest" }
	else if selection.selected == false { text = "Harvest" }
}

if text == "" { exit }

draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_black);
draw_text_ext(x + sprite_width/2, y + sprite_height/2-4, text, 12, sprite_width-2);
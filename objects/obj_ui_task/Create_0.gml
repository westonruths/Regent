/// @description Insert description here
// You can write your code in this editor

selected = false
dragging = false

rectx1 = 0
recty1 = 0
rectx2 = 0
recty2 = 0

image_xscale = 2
image_yscale = 2

name = ""
detail = ""
help_text = ""

originalX = x
originalY = y

with (obj_menu_btn) {
	if variable_instance_exists(id, "hide_buttons") {
		if hide_buttons {
			other.x = x
			other.y = y
		}
	}
}
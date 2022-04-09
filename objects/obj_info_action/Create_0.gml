/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = 8.5
image_yscale = 4

selection = noone

text = ""

with (obj_info_action) { 
	if other.id != id {
		instance_destroy() 
	}
}
/// @description Insert description here
// You can write your code in this editor

event_inherited()

if grow_counter >= max_grow_counter && !instance_place(x, y, crop_drop) {
	instance_create_layer(x, y, "Buildings", crop_drop)
}

visible = true

if instance_place(x, y, crop_drop) {
	visible = false
	watered = true
}


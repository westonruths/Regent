/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (image_index <= 0) {
	image_index = 0
	image_speed = 0
	exit
}

if (image_index <= image_number - 1) {
	image_speed = -1
}

if instance_place(x,y+global.grid_resolution,obj_wall) || instance_place(x,y-global.grid_resolution,obj_wall) {
	image_angle = 90
} else {
	image_angle = 0
}
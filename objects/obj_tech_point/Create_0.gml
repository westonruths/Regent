/// @description Insert description here
// You can write your code in this editor

var targetX = 0
var targetY = 0

with (obj_tech_btn) {
	targetX = x
	targetY = y
}

direction = point_direction(x, y, targetX, targetY);

speed = 1

image_xscale = 3
image_yscale = 3
/// @description Insert description here
// You can write your code in this editor

var targetX = 0
var targetY = 0

with (obj_quest_btn) {
	targetX = x
	targetY = y
}

direction = point_direction(x, y, targetX, targetY);

speed = 0.5

image_xscale = 2
image_yscale = 2
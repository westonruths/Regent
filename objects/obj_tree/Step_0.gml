/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp <= 0) {
	alarm[0] = 1
}

if image_xscale >= 1 || image_yscale >= 1 {
	image_xscale = 1
	image_yscale = 1
} else {
	image_xscale += 0.01
	image_yscale += 0.01
}
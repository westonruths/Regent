/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(pawn) { instance_destroy() }

if (global.menu_open == false || pawn.menu_open == false || global.building) {
	instance_destroy()
}


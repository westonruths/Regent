/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.menu_open == false || global.building) {
	instance_destroy();
}

if !instance_exists(pawn) {
	instance_destroy()
}
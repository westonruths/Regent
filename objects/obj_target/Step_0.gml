/// @description Insert description here
// You can write your code in this editor

if !instance_exists(pawn) { instance_destroy() }

if !pawn.drafted {
	instance_destroy()
}
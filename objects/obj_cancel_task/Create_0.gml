/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

obj_sprite = spr_cancel_circle

name = "Cancel Task"
detail = "Cancel any task or set a building for deconstruction"

with(obj_taskremove_btn) { instance_destroy() }

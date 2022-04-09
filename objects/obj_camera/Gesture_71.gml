/// @description Insert description here
// You can write your code in this editor

var previous_zoom = global.zoom_level
//global.zoom_level = 1.0/event_data[? "absolutescale"];
global.zoom_level += 0.02
global.zoom_level = clamp(global.zoom_level, 0.5, 1.3)
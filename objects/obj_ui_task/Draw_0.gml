/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var movecam = false
with (obj_taskcamera_btn) { movecam = toggle_on }

if dragging && !movecam {
	draw_set_color(c_white)
	draw_rectangle(rectx1, recty1, rectx2, recty2, true)
}
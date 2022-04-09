/// @description Insert description here
// You can write your code in this editor
drag_x = 0
drag_y = 0
pinching = false
pinch_countdown = 0

//Debug
touch_x[0] = 0;
touch_y[0] = 0;
touch_x[1] = 0;
touch_y[1] = 0;
midpoint_x = 0;
midpoint_y = 0;

global.zoom_level = 1;

cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
xPanTo = -1
yPanTo = -1

xPrev = -1
yPrev = -1

default_zoom_width = camera_get_view_width(cam);
default_zoom_height = camera_get_view_height(cam);
currW = default_zoom_width;
currH = default_zoom_height;

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

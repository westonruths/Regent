/// @description Insert description here
// You can write your code in this editor
// Update zoom size
if keyboard_check_pressed(ord("I")) {
  global.zoom_level = 0.5;
} else if keyboard_check_pressed(ord("O")) {
  global.zoom_level = 1;
} else if keyboard_check_pressed(ord("P")) {
  global.zoom_level = 2;
}

var move_camera = true
with (obj_camera_btn) { move_camera = toggle_on }
with (obj_taskcamera_btn) { move_camera = toggle_on }
with (obj_tech_menu) { move_camera = false }
with (obj_quest_menu) { move_camera = false }
with (obj_pawns_menu) { move_camera = false }

if !move_camera { 
	pinch_countdown = 10
	exit 
}

// Pan to event
if xPanTo > 0 {
	x += (xPanTo - x) / 2;
	y += (yPanTo - y) / 2;
	
	xTo = x
	yTo = y

	if abs(xprevious - x) == xPrev && abs(yprevious - y) == yPrev {
		xPanTo = -1
		yPanTo = -1
	} 
	
	xPrev = abs(xprevious - x)
	yPrev = abs(yprevious - y)
} else {
	pinch_countdown -= 1
	if !device_mouse_check_button(1, mb_left) && pinch_countdown <= 0 {
		pinch_countdown = 0
	
		// start:
		if (mouse_check_button_pressed(mb_left)) {
		    drag_x = mouse_x
		    drag_y = mouse_y
		}
		// update:
		if (mouse_check_button(mb_left)) {
		    // actual dragging logic:
		    xTo = drag_x - (mouse_x - x)
		    yTo = drag_y - (mouse_y - y)
			
		}
	
		if abs((xTo - x) / 1) > 2 && abs((yTo - y) / 1) > 2 {
			with(obj_close_info) { alarm[0] = 1 }
			with (obj_menu_btn) { hide_buttons = true }
		}
	
		x += (xTo - x) / 2;
		y += (yTo - y) / 2;
	} 
}

// Update view size
zoomxTo = default_zoom_width * global.zoom_level;
zoomyTo = default_zoom_height * global.zoom_level;
currW += (zoomxTo - camera_get_view_width(cam)) / 1;
currH += (zoomyTo - camera_get_view_height(cam)) / 1;
camera_set_view_size(cam, currW, currH);

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

// Clamp camrea
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

audio_listener_position(x, y, 100*global.zoom_level);
audio_listener_orientation(0,-1,0,0,0,-1)
global.falloff_factor = global.zoom_level+0.1

// Update camera position
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

//global.view_width = camera_get_view_width(cam)
//global.view_height = camera_get_view_height(cam)

//global.build_x = global.view_width - (global.view_width/3) + 5
//global.build_y = 30;
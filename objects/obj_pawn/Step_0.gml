/// @description Core Pawn Logic
if (!global.menu_open) {
	menu_open = false;
}

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	with(tool) { image_speed = 0 }
	with(hair) { image_speed = 0 }
	exit;
} else {
	path_speed = spd * global.game_speed
	image_speed = 1 * global.game_speed
	with(tool) { image_speed = 1 * global.game_speed}
	with(hair) { image_speed = 1 * global.game_speed}
	//image_speed = 1 * work_spd * global.game_speed
	//with(tool) { image_speed = 1 * other.work_spd * global.game_speed}
	//with(hair) { image_speed = 1 * other.work_spd * global.game_speed}
}

// Check for character death
if (hp <= 0) {
	path_speed = 0;
	sprite_index = spr_pawn_dead
	image_index = tool.image_index
	with(hair) { image_index = other.image_index }
	
	current_target = 0
	_clear_previous_targets()
	
	exit
}

//detect loss in health
if (hp < old_hp) {
	sprite_index = spr_pawn_hurt
	image_index = 0
	old_hp = hp
	mood.thoughtactive[mood_thoughts.pain] = 1
}
if (sprite_index == spr_pawn_hurt && image_index < image_number - 1) {
	path_speed = 0;
	with(tool) { image_index = other.image_index }
	with(hair) { image_index = other.image_index }
	exit
}
old_hp = hp

// Update weapon location
with(active_wpn){
	x = other.x + other.image_xscale*10;
	y = other.y;
	depth = other.depth-2;
}

with(tool){
	depth = other.depth-2;
	image_xscale = other.image_xscale
}

// Update item_holding location
with(item_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}
with(food_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}
with(medicine_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}

// Update hair
with(hair){
	image_index = other.image_index
	depth = other.depth-2;
	image_xscale = other.image_xscale
}

// Update position of selector
with(selector) {
	x = other.x;
	y = other.y;
}

#region OLD CODE
//if (old_targetX != targetX || old_targetY != targetY) {
//	if name == "Temy" {
//		print(name, "target has changed", path, path_position)
//	}	
	
//	//move towards point
//	if mp_grid_path(global.grid, path, x, y, targetX, targetY, true)  {
//		path_start(path, spd * global.game_speed, path_action_stop, true)
		
//		if name == "Temy" {
//			print(name, "starting path", path, path_position)
//		}
	
//	} else {
//		print(name, "has no path")
		
//		var max_dist = 9999
//		var cell = noone
//		with (obj_cell) {
//			var dist = distance_to_point(other.x, other.y)
//			if  dist < max_dist && place_empty(x, y, obj_wall) && place_empty(x, y, obj_mtn_wall) && place_empty(x, y, obj_tree) {
//				max_dist = dist
//				cell = id
//			}
//		}
		
//		if instance_exists(cell) {
//			x = cell.x
//			y = cell.y
//		}
//	}
//}
		
//	var _tmpx = targetX+global.grid_resolution*irandom_range(-1,1)
//	var _tmpy = targetY+global.grid_resolution*irandom_range(-1,1)
		
//	print(name, "--", _tmpx, _tmpy)
//	if mp_grid_path(global.grid, path, x, y, _tmpx, _tmpy, false) {
//		print(name, "--trying new path")
//		path_start(path, spd, path_action_stop, true)
//	}
//}
//old_targetX = targetX
//old_targetY = targetY
#endregion


//if moving then just be idle
if path_position > 0.85 && (sprite_index == spr_pawn_idle || sprite_index == spr_pawn_walk) {
	sprite_index = spr_pawn_idle
}

//if path_position < 0.1 && x == targetX && y == targetY {
//	path_position = 1	
//}

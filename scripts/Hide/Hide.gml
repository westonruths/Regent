// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hide(){
	if instance_exists(defend_target) {
		_clear_previous_targets()
		
		if defend_target.object_index == obj_hide_position {
			if instance_number(obj_goblin) == 0 {
				defend_target = noone
				exit
			}
			
			var max_dist  = 9999
			var _enemy = noone
			with(obj_goblin) {	
				if (hp > 0) {
					var dist = distance_to_object(other)
					if (dist < max_dist) {
						_enemy = id
						max_dist = dist
					}
				}
			}
			
			if instance_exists(_enemy) {
				if distance_to_object(_enemy) < global.grid_resolution {
					defend_target = _enemy
				} else {
					if x == defend_target.x && y == defend_target.y {
						sprite_index = spr_pawn_idle	
						current_task = "Waiting at Hiding Position"	
						targetX = x
						targetY = y
					} else {
						targetX = defend_target.x
						targetY = defend_target.y
						sprite_index = spr_pawn_run
						current_task = "Moving to Hiding Position"	
					}
				}
			} else {
				defend_target = noone
			}
		} else {
			if defend_target.hp <= 0 {
				defend_target = noone
				exit
			}
			
			if melee && distance_to_object(defend_target) < global.grid_resolution {
				direction = point_direction(x, y, defend_target.x, defend_target.y)
				sprite_index = spr_pawn_defend
				current_task = "Fighting"
				path_speed = 0
			} else if !melee && distance_to_object(defend_target) < global.grid_resolution*6 {
				direction = point_direction(x, y, defend_target.x, defend_target.y)
				sprite_index = spr_pawn_archery
				current_task = "Shooting"
				path_speed = 0
			}else {
				move_to_around_free_point(defend_target.x, defend_target.y)
				sprite_index = spr_pawn_run
				current_task = "Moving to attack"
			}
		}
	} else {
		var max_dist  = global.grid_resolution
		
		if !melee {
			max_dist = global.grid_resolution*3
		}
		
		with(obj_goblin) {	
			if (hp > 0) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.defend_target = id
					max_dist = dist
				}
			}
		}
		
		//If goblin exists go to defensive position
		var max_dist  = 9999
		var _enemy = noone
		with(obj_goblin) {	
			if (hp > 0) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					_enemy = id
					max_dist = dist
				}
			}
		}
		
		if instance_exists(_enemy) {
			var max_dist  = 9999
			with(obj_hide_position) {
				var tmp_target = id
				var chosen = false
				
				with(obj_pawn) {
					if (defend_target == tmp_target) {
						chosen = true;
					}
				}
				
				if chosen { continue }
				
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.defend_target = id
					max_dist = dist
				}	
			}
		}
	}
}
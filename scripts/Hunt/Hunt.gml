// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hunt(){
	var main_pawn = self
	with (hunt_target) {
		if selected == false {
			other.hunt_target = noone
		}
	}
		
	if (instance_exists(hunt_target)) {
		_clear_previous_targets()
		
		if melee && distance_to_object(hunt_target) < global.grid_resolution {
			direction = point_direction(x, y, hunt_target.x, hunt_target.y)
			sprite_index = spr_pawn_hunt
			current_task = "Hunting"
		} else if !melee && distance_to_object(hunt_target) < global.grid_resolution*6 {
			direction = point_direction(x, y, hunt_target.x, hunt_target.y)
			sprite_index = spr_pawn_archery
			current_task = "Hunting"
		}else {
			move_to_around_free_point(hunt_target.x, hunt_target.y)
			sprite_index = spr_pawn_run
			current_task = "On the hunt"
		}
	} else {
		var max_dist  = 9999
			
		with(obj_animal) {
			var tmp_target = id
			var chosen = false
			var spot_free = true
			
			if !selected continue
			
			with(obj_pawn) {
				if (hunt_target == tmp_target) {
					chosen = true;
				}
			}
			
			//with(main_pawn) {
			//	spot_free = check_around_free_point(other.x, other.y)
			//}
				
			if (!chosen && spot_free) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.hunt_target = id
					max_dist = dist
				}
			}
		}
	}
	
	#region Old Code
	//var max_dist  = 9999
	//var animal = noone
	
	//with(obj_animal) {
	//	if selected {
	//		var dist = distance_to_object(other)
	//		if (dist < max_dist) {
	//			animal = id
	//			max_dist = dist
	//		}
	//	}
	//}
	
	//// Fire at closest enemy
	//if instance_exists(animal) {
	//	_clear_previous_targets()
	//	direction = point_direction(x, y, animal.x, animal.y)
	//	sprite_index = spr_pawn_run
		
	//	with(tool){
	//		x = other.active_wpn.x
	//		y = other.active_wpn.y
	//	}
		
	//	// Move towards closest enemy to engage
	//	move_to_around_free_point(animal.x, animal.y)
		
	//	hunt_target = animal
	
	//	// Equip our primary weapon
	//	active_wpn_index = equipped_wpn
		
	//	with(active_wpn){
	//		target = other.hunt_target
	//		weapon = other.active_wpn_index
	//	}
		
	//	if (distance_to_point(animal.x,animal.y) < active_wpn.range) {
	//		sprite_index = spr_pawn_idle
	//		targetX = x
	//		targetY = y
	//	}
	//}
	#endregion
}
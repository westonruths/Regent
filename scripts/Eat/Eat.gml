// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Eat(){
	if (char_food/char_food_max > 0.2) && !instance_exists(eat_target) {
		exit
	}
	
	var main_pawn = self
		
	if (instance_exists(eat_target)) {
		_clear_previous_targets()
		
		move_to_around_free_point(eat_target.x, eat_target.y)
		if distance_to_object(eat_target) < global.grid_resolution {
			direction = point_direction(x, y, eat_target.x, eat_target.y)
			sprite_index = spr_pawn_eat
			current_task = "Eating"
			
			with(eat_target) { 
				stored = false 
				with (stored_stockpile) {
					num_stored -= 1
				}
				stored_stockpile = noone
			}
			
			mood.thoughtactive[mood_thoughts.ate] = 1
			if random_range(-50, 1) > 0 {
				with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
					text = "Yum!"
					image_blend = c_green
				}
			}
			
		} else {
			sprite_index = spr_pawn_run
			//targetX = eat_target.x
			//targetY = eat_target.y
		
			current_task = "Eating"
		}
	} else {
		var max_dist  = 9999
			
		with(obj_meal) {
			var tmp_target = id
			var chosen = false
			var spot_free = false
			
			with(obj_pawn) {
				if eat_target == tmp_target {
					chosen = true
					break
				}
				
				if item_holding == tmp_target {
					chosen = true
					break
				}
			}
			
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
				
			if (!chosen && spot_free) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.eat_target = id
					max_dist = dist
				}
			}
		}
	}
}
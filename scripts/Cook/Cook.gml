// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Cook(){
	//find a stockpile or construction site that has an open spot
	var main_pawn = self
	//cooking_target = noone
	//hunt_target = noone
	
	
	var holding_food = false
	if instance_exists(food_holding) {
		holding_food = true
	}

	//Identify targets
	with(obj_stove) {
		var max_dist_stove = 9999
		var tmp_stove = self.id
		if !holding_food && item_cooking == noone {
			//If stove doesn't have a food item and we aren't holding food, then target food to carry there
			var max_dist  = 9999
			with(obj_raw_food) {
				var spot_free = false
				var chosen = false
				
				with(main_pawn) {
					spot_free = check_around_free_point(other.x, other.y)
				}
				
				//check if both going for same food item
				with(obj_pawn) {
					if id != main_pawn.id {
						if (cook_haul_target == other.id) {
							chosen = true;
						}
				
						if (food_holding == other.id) {
							chosen = true;
						}

						if (item_holding == other.id) {
							chosen = true;
						}
					}
				}
				
				//check if both hauling to same stove
				with(obj_pawn) {
					if (cooking_target == tmp_stove) && id != main_pawn.id {
						chosen = true;
					}
				}
				
				with(main_pawn) {
					var dist = distance_to_object(other)
					if spot_free && (dist < max_dist) && !chosen{
						sprite_index = spr_pawn_run
						cook_haul_target = other.id
						max_dist = dist
						targetX = other.x
						targetY = other.y
						//_clear_previous_targets()
					}
				
					// Go to food and pick it up
					if instance_exists(cook_haul_target) {
						if (distance_to_object(cook_haul_target) < global.grid_resolution) { 
							// Pick up item
							food_holding = cook_haul_target
							with(cook_haul_target) { 
								stored = false 
								with (stored_stockpile) {
									num_stored -= 1
								}
								stored_stockpile = noone
							}
							cook_haul_target = noone
						}
					}
				}
			}
		} else if holding_food && item_cooking == noone {
			//If holding food then take to closest empty stove
			var spot_free = false
			var chosen = false
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
			
			with(obj_pawn) {
				if (cooking_target == other.id) && id != main_pawn.id {
					chosen = true;
				}
			}
			
			with(main_pawn) {
				var dist = distance_to_object(other)
				if spot_free && (dist < max_dist_stove) && !chosen{
					sprite_index = spr_pawn_carry
					current_task = "Hauling to cook"
					cooking_target = other.id
					max_dist_stove = dist
					move_to_around_free_point(other.x, other.y)
					//_clear_previous_targets()
				}
			
				if instance_exists(cooking_target) {
					if (distance_to_object(cooking_target) < global.grid_resolution) { 
						other.food_item = food_holding
						food_holding = noone
					}
				} 
			}
		} else if item_cooking != noone {
			//if stove has food then move to that location and cook!
			var spot_free = false
			var chosen = false
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
			
			with(obj_pawn) {
				if (cooking_target == other.id) && id != main_pawn.id {
					chosen = true;
				}
			}
			
			with(main_pawn) {
				var dist = distance_to_object(other)
				
				if spot_free && (dist < max_dist_stove) && !chosen {
					sprite_index = spr_pawn_run
					cooking_target = other.id
					max_dist_stove = dist
					move_to_around_free_point(other.x, other.y)
					if path_position > 0.85 {
						direction = point_direction(x, y, cooking_target.x, cooking_target.y)
						sprite_index = spr_pawn_cooking
						current_task = "Cooking"
					} else {
						sprite_index = spr_pawn_run
						current_task = "Cooking"
					}
					_clear_previous_targets()
				}
			}
		}
	}
}
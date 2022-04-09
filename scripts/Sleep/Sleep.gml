// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sleep(){	
	var main_pawn = self
	
	if char_energy/char_energy_max >= 1.0 || mood.mood < 20 { 
		sleep_target = noone 
		exit
	}
		
	if (instance_exists(sleep_target) && char_energy/char_energy_max < 1.0) {
		_clear_previous_targets()
		
		targetX = sleep_target.x
		targetY = sleep_target.y
		if distance_to_object(sleep_target) < global.grid_resolution {
			direction = point_direction(x, y, sleep_target.x, sleep_target.y)
			sprite_index = spr_pawn_sleep
			current_task = "Sleeping"
			
			if random_range(-80, 1) > 0 {
				with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
					text = "zzz"
					image_blend = c_navy
				}
			}
			
			if sleep_target.object_index != obj_bed {
				mood.thoughtactive[mood_thoughts.slept_ground] = 1	
				if random_range(-100, 1) > 0 {
					with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
						text = "I want a bed"
						image_blend = c_red
					}
				}
			} else {
				mood.thoughtactive[mood_thoughts.slept_ground] = 0
			}
			
			if !in_room(x, y) {
				mood.thoughtactive[mood_thoughts.slept_outside] = 1	
				if random_range(-200, 1) > 0 {
					with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
						text = "I want to sleep inside"
						image_blend = c_red
					}
				}
			} else {
				mood.thoughtactive[mood_thoughts.slept_outside] = 0
			}
			
			var room_name = get_room_name(x,y)
			if room_name != "Bedroom" {
				if random_range(-200, 1) > 0 {
					with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
						text = "I want my own bedroom"
						image_blend = c_red
					}
				}
				
				mood.thoughtactive[mood_thoughts.wants_own_room] = 1
			} else {
				mood.thoughtactive[mood_thoughts.wants_own_room] = 0
				mood.thoughtactive[mood_thoughts.likes_room] = 1
			}
			
		} else {
			sprite_index = spr_pawn_run
			current_task = "Heading to bed"
		}
		
	} else if (char_energy/char_energy_max < 0.2) {
		var max_dist  = 9999
			
		with(obj_bed) {
			if !build_cost.built {
				continue
			}
			
			var tmp_target = id
			var chosen = false
			//var spot_free = false
			
			with(obj_pawn) {
				if sleep_target == tmp_target {
					chosen = true
					break
				}
				
				if patient_target == tmp_target {
					chosen = true
					break
				}
			}
			
			//with(main_pawn) {
			//	spot_free = check_around_free_point(other.x, other.y)
			//}
				
			//if (!chosen && spot_free) {
			if (!chosen) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.sleep_target = id
					max_dist = dist
				}
			}
		}
		
		// if can't find bed, sleep inside at least
		max_dist  = 9999
		if !instance_exists(sleep_target) {
			with (obj_rooms) {
				for(var i=0;i<array_length(rooms);i++) {
					for(var j=0;j<array_length(rooms[i]);j++) {
						var cell = rooms[i][j]
						var chosen = false
						
						with(obj_pawn) {
							if instance_exists(sleep_target) {
								if sleep_target.x == cell.x && sleep_target.y == cell.y {
									chosen = true
									break
								}
							}
							
							if instance_exists(patient_target) {
								if patient_target.x == cell.x && patient_target.y == cell.y {
									chosen = true
									break
								}
							}
						}
		
						
						dist = point_distance(other.x, other.y, cell.x, cell.y)
						if !chosen && (dist < max_dist) {
							other.sleep_target = cell.id
							max_dist = dist
						}
					}
				}
			}
		}
		
		if (char_energy/char_energy_max <= 0) {
			sleep_target = instance_nearest(x, y, obj_cell)
		}
	} 
	

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Doctor(){
	var main_pawn = self

	var holding_medicine = false
	if instance_exists(medicine_holding) {
		holding_medicine = true
	}
	
	var tmp_patient = noone
	//Identify targets
	with(obj_pawn) {
		if sprite_index != spr_pawn_patient { continue }
		
		var max_dist_patient = 9999
		tmp_patient = self.id
		if !holding_medicine && !instance_place(x, y, obj_healing_herb) {
			//If pawn is injured and we aren't holding medicine, then target medicine to carry there
			var max_dist  = 9999
			with(obj_healing_herb) {
				var spot_free = false
				var chosen = false
				
				with(main_pawn) {
					spot_free = check_around_free_point(other.x, other.y)
				}
				
				//check if both going for same medicine item
				with(obj_pawn) {
					if id != main_pawn.id {
						if (doctor_haul_target == other.id) {
							chosen = true;
						}
				
						if (medicine_holding == other.id) {
							chosen = true;
						}
					}
				}
				
				//check if both hauling to same patient
				with(obj_pawn) {
					if (doctor_target == tmp_patient) && id != main_pawn.id {
						chosen = true;
					}
				}
				
				if chosen { continue }
				
				with(main_pawn) {
					var dist = distance_to_object(other)
					if spot_free && (dist < max_dist) && !chosen{
						sprite_index = spr_pawn_run
						doctor_haul_target = other.id
						doctor_target = tmp_patient
						max_dist = dist
						targetX = other.x
						targetY = other.y
						//_clear_previous_targets()
					}
				
					// Go to medicine and pick it up
					if instance_exists(doctor_haul_target) {
						if (distance_to_object(doctor_haul_target) < global.grid_resolution) { 
							// Pick up item
							medicine_holding = doctor_haul_target
							with(doctor_haul_target) { 
								stored = false 
								with (stored_stockpile) {
									num_stored -= 1
								}
								stored_stockpile = noone
							}
							doctor_haul_target = noone
						}
					}
				}
			}
		} else {
			//If holding medicine then take to closest hurt patient
			var spot_free = false
			var chosen = false
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
			
			with(obj_pawn) {
				if (doctor_target == other.id) && id != main_pawn.id {
					chosen = true;
				}
			}
			
			with(main_pawn) {
				var dist = distance_to_object(other)
				if spot_free && (dist < max_dist_patient) && !chosen{
					if instance_exists(medicine_holding) {
						sprite_index = spr_pawn_carry
						current_task = "Hauling to patient"
					} else {
						sprite_index = spr_pawn_run
						current_task = "Heading to patient"
					}
					doctor_target = tmp_patient
					max_dist_patient = dist
					move_to_around_free_point(other.x, other.y)
					//_clear_previous_targets()
				}
			
				if instance_exists(doctor_target) {
					if (distance_to_object(doctor_target) < global.grid_resolution) { 
						if instance_exists(medicine_holding) {
								medicine_holding.x = other.x
								medicine_holding.y = other.y
								medicine_holding = noone	
						}
							
						if path_position > 0.85 {
							direction = point_direction(x, y, doctor_target.x, doctor_target.y)
							sprite_index = spr_pawn_doctor
							current_task = "Doctoring"
						} else {
							sprite_index = spr_pawn_run
							current_task = "Doctoring"
						}
					}
				} 
				_clear_previous_targets()
			}
		} 
	}

	if !instance_exists(tmp_patient) {
		medicine_holding = noone
	}

}
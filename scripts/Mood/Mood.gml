// Logic to cut down trees
function Mood() {
	//check proximity to skull
	if distance_to_object(instance_nearest(x,y,obj_skull)) < global.grid_resolution*2 {
		mood.thoughtactive[mood_thoughts.dead_body] = 1		
		if random_range(-100, 1) > 0 {
			with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
				text = "A dead body!"
				image_blend = c_red
			}
		}
	}
	
	if crowned {
		mood.thoughtactive[mood_thoughts.im_king] = 1	
		mood.thoughtactive[mood_thoughts.near_king] = 0
	} else {
		mood.thoughtactive[mood_thoughts.im_king] = 0	
		
		with(obj_pawn) {
			if crowned {
				if distance_to_object(other) < global.grid_resolution*2 {
					other.mood.thoughtactive[mood_thoughts.near_king] = 1
					if random_range(-200, 1) > 0 {
						with(instance_create_layer(other.x,other.y-10,"Cover",obj_status)) { 
							text = "All Hail the Regent!"
							image_blend = c_green
						}
					}
				}
			}
		}
	}

	if (mood.mood >= 20) || mood.thoughtactive[mood_thoughts.catharsis] == 1 || instance_exists(defend_target) {
		exit
	}
	
	_clear_previous_targets()
	
	if first_break {
		//begin moodiness and choose duration
		mood.thoughtactive[mood_thoughts.mental_break] = 1
		moody_end = irandom_range(12, 24)
		moody_counter += 1
		first_break = false
		
		var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_tantrum_prompt);
		with (prompt) {
			pawn_name = other.name
			pawn = other
		}
	}
	
	if moody_counter >= moody_end {
		//end moodiness
		mood.thoughtactive[mood_thoughts.catharsis] = 1
		mood.mood = mood.mood_base
		moody_counter = 0
		first_break = true
	}
	
	targetX = x
	targetY = y
	
	sprite_index = spr_pawn_moody
	current_task = "Moody Tantrum Ends in " + string(round(moody_end-moody_counter)) + " hours";
}
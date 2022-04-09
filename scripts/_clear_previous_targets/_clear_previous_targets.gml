// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _clear_previous_targets(){
	for(var i = targets_listsize - 1; i > current_target; i--) {
		targets[i] = noone
		
		//drop if on haul
		if i == 12 {
			drop_item()
			target_construct = noone
		}
		
		//drop food item for cooking
		if i == 6 {
			food_holding = noone
		}

		//drop food item for cooking
		if i == 5 {
			medicine_holding = noone
		}
	}
	
	//update targets
	mood_target = targets[0] 
	defend_target = targets[1] 
	eat_target = targets[2] 
	sleep_target = targets[3] 
	patient_target = targets[4] 
	doctor_target = targets[5] 
	cooking_target = targets[6] 
	hunt_target = targets[7] 
	construct_target = targets[8] 
	grow_target = targets[9] 
	mine_target = targets[10] 
	fell_target = targets[11] 
	haul_target = targets[12] 
}
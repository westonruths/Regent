/// @description Insert description here
// You can write your code in this editor

var tech_id = noone
with (obj_tech_ui) {
	if selected {
		tech_id = techid 
		global.tech_points -= techpoints
		
		//enable quests
		with (quests) {
			for (var i=0; i<array_length(other.techquest); i++)	{
					quest_array[other.techquest[i]][1] = 0
			}
		}
		with (obj_quest_btn) { new_quest = true }
	}
}

with (techs) { // go through all skills and see if they should now be set to available
	techstatus[tech_id] = 2 //purchased status
	
	for (i=0; i<array_length(techneeds); i++) // loop around for each tech
	{
		// Set skills I link to as available 
		for (j=0; j<array_length(techneeds[i]); j++) {
			if (techneeds[i][j] == tech_id) {
				if (techstatus[i] == 0) { // dont overwrite if they have already bought upgrade
					techstatus[i] = 1 // This skill is next to me on the tree and is unavailable so make it available. 
				}
			}
		};
		
		// Set skills that link to me as available  
		for (j=0; j<array_length(techneeds[tech_id]); j++) { // go backwards down the tree
			if (techneeds[tech_id] == i) {
				if (techstatus[i] == 0) { // dont overwrite if they have already bought upgrade
					techstatus[i] = 1 // This skill is next to me on the tree and is unavailable so make it available. 
				}
			}
		}
	}
}

with (obj_tech_ui) { instance_destroy() }
with (techs) {
	alarm[0] = 1
}

with (obj_close_tech_detail) { alarm[0] = 1 }

audio_play_sound(Fantasy_Game_Action_Rune_A, 10, false);
/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_storyteller_prompt) exit

#region Goblin Raid
counter_hrs[story.raid] -= 1

if (counter_hrs[story.raid] <= 0) {
	num_goblins = 1 + irandom_range(global.day/4, global.day)

	if instance_number(obj_pawn) < 7 {
		counter_hrs[story.raid] = 72 + irandom_range(12,72)
	} else {
		counter_hrs[story.raid] = 12 + irandom_range(12,24)
	}
	
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Goblin Raid!"
		detail = "A horde of " + string(other.num_goblins) + " goblins are attacking! \nPrepare the defenses."
		prompt_sprite = spr_goblin_attack
		storyteller_script = goblin_raid
	}
	
	
	exit
}
#endregion

#region Save Settler
counter_hrs[story.save_settler] -= 1

if (counter_hrs[story.save_settler] <= 0) {

	counter_hrs[story.save_settler] = (24 * instance_number(obj_pawn)) + irandom_range(0,15 * instance_number(obj_pawn))
	
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(370-70, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		instance_create_layer(370+70, 256, "Menu_Prompt_Btns",obj_decline_storyteller);
		
		title = "A Call for Help"
		detail = "A traveler is being pursued by goblins! They offer to join your town if you fend off their pursuers. Do you accept?"
		storyteller_script = save_settler
	}
	exit
}
#endregion

#region End Game
if instance_number(obj_pawn) == 0 {
	counter_hrs[story.game_over] -= 1
}

if (counter_hrs[story.game_over] <= 0) {
	
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Game Over"
		detail = "Your settlement no longer has any settlers. This ends your kingdom's story."
		storyteller_script = game_over
	}
	exit
}
#endregion

#region End Game

counter_hrs[story.reforest] -= 1

if (counter_hrs[story.reforest] <= 0) {
	
	var cell = instance_find(obj_cell, irandom(instance_number(obj_cell) - 1));
	
	//place objects helper code
	var place_object = irandom_range(0,400)

	//place trees
	if (place_object > 0 && place_object < 100) {
		with (cell) {
			if !instance_exists(build_obj) {
				if instance_position(x, y, obj_pawn) == noone {
					build_obj = instance_create_layer(x,y,"Buildings",obj_tree);
				}
			}
		}
	} 
			
	//place animals
	if (place_object > 100 && place_object < 110) {
		with (cell) {
			if !instance_exists(build_obj) {
				instance_create_layer(x, y, "Instances", obj_bunny)
			}
		}
	}

	//place healing herbs
	if (place_object > 110 && place_object < 150) {
		with (cell) {
			if !instance_exists(build_obj) {
				if instance_position(x, y, obj_pawn) == noone {
					build_obj = instance_create_layer(x,y,"Buildings",obj_herb_plant);
				}
			}
		}
	} 
	
	//place berry bushes
	if (place_object > 150 && place_object < 200) {
		with (cell) {
			if !instance_exists(build_obj) {
				if instance_position(x, y, obj_pawn) == noone {
					build_obj = instance_create_layer(x,y,"Buildings",obj_berry_bush);
				}
			}
		}
	} 		

	counter_hrs[story.reforest] = 1

	exit
}
#endregion
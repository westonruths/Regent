/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_level_up_prompt) { exit }

// Renown Leveling
if (global.renown > global.renown_next_level) {
	global.renown_level += 1
	global.renown -= global.renown_next_level
	global.renown_next_level = round(0.04 * (global.renown_level ^ 3) + 0.8 * (global.renown_level ^ 2) + 2 * global.renown_level) * 50
	var level_up = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_level_up_prompt);
	with (level_up) {
		level = global.renown_level
		tech_reward = 1
	}
}

// Quest Logic
var i = 0; repeat(quests_number) {
	switch(i) {
		#region Gather Renown
		case quest.gather_renown:
			if quest_array[i][1] != -1 {
				if global.renown_level >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion

		#region Build stockpile
		case quest.build_stockpile:
			if quest_array[i][1] != -1 {
				if instance_exists(obj_stockpile) {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Collect Wood
		case quest.collect_wood:
			if quest_array[i][1] != -1 {
				if instance_number(obj_wood) >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Build room
		case quest.build_room:
			if quest_array[i][1] != -1 {
				//room check logic
				var built_room = false
				with(obj_rooms) {
					if array_length(rooms) > 0 {
						built_room = true
					}
				}
				
				if built_room {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Build beds
		case quest.build_beds:
			if quest_array[i][1] != -1 {
				if instance_number(obj_bed) >= instance_number(obj_pawn) {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Mine ore
		case quest.mine_ore:
			if quest_array[i][1] != -1 {
				if instance_number(obj_stone) >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion

		#region Build stove
		case quest.build_stove:
			if quest_array[i][1] != -1 {
				if instance_exists(obj_stove) {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Collect meat
		case quest.collect_meat:
			if quest_array[i][1] != -1 {
				if instance_number(obj_meat) >= 4 {
					complete_quest(i)
				}
			}
		break;
		#endregion

		#region Cook meals
		case quest.cook_meals:
			if quest_array[i][1] != -1 {
				if instance_number(obj_meal) >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion

		#region Plant crops
		case quest.harvest_wheat:
			if quest_array[i][1] != -1 {
				if instance_number(obj_wheat_item) >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Plant crops
		case quest.defeat_goblins:
			if quest_array[i][1] != -1 {
				if instance_number(obj_goblin) == 0 {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
	}
	
	i++;
}
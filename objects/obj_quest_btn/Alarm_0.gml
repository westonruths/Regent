/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	//unpause();
	exit;
} else {
	unpause()
}

new_quest = false

global.menu_open = true;

instance_create_layer(global.view_width-(global.view_width/3),0,"Menu_Background",obj_quest_menu_back);

with (quests) {
	var y_spacer = 70
	var quests_array = quest_array
	var i = 0; var slot = 0; repeat(quests_number) {
		
		//continue if inactive
		if quests_array[i][1] != -1 {
			var quest = instance_create_layer(global.build_x, global.build_y+20+(y_spacer*slot),
						"Menu",obj_quests_ui);
		
			with (quest) {
				name = quests_array[i][0]
				detail = quests_array[i][2]
				renown_reward = quests_array[i][3]
				obj_sprite = quests_array[i][4]
			}
			
			slot++
		}
		
		i++
	}
}

instance_create_layer(global.view_width-30,15,"Menu_Btns",obj_close_menu);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu_Objects",obj_quest_menu);
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function H_quests(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Quests"
		detail = "In the top right corner you will see the quest button. Open this to see what you need to do to earn more renown. Earning more renown advances your town and increases your fame. It also earns you scrolls which unlocks new technologies."
		prompt_sprite = spr_trophy_blue
		storyteller_script = I_tech
	}		
}
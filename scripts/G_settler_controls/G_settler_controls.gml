// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function G_settler_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Settlers"
		detail = "Click this button to see a list of your settlers. Click on one of them to pull up their information and to assign them tasks."
		prompt_sprite = playercount
		storyteller_script = H_quests
	}		
}
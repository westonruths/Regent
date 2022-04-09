// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function A_stockpile(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		//instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Time Controls"
		detail = "In the bottom left corner you will find your time controls."
		prompt_sprite = spr_play
		storyteller_script = B_mine_controls
	}		
}
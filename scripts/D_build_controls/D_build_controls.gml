// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function D_build_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Building"
		detail = "The next control is the building control. Select what you want to build and decide where to place it. After placing a build command, your settlers will pick up the required resources and build it."
		prompt_sprite = hammer
		storyteller_script = E_cancel_controls
	}		
}
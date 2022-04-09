/// @description Insert description here
// You can write your code in this editor

with (obj_storyteller_prompt) {
	if storyteller_script != noone {
		script_execute(storyteller_script)
	}
	
	instance_destroy()
}

unpause()

with (obj_decline_storyteller) { instance_destroy() }

instance_destroy()
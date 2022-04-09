/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.menu_open == false || pawn.menu_open == false || global.building) {
	visible = false;
}

if (skill_exp > skill_next_level) {
	skill_level += 1
	skill_exp -= skill_next_level
	skill_next_level = round(0.04 * (skill_level ^ 3) + 0.8 * (skill_level ^ 2) + 2 * skill_level) * 75
	var level_up = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_char_level_up_prompt);
	with (level_up) {
		level = other.skill_level
		renown_reward = other.skill_level * 2
		job = script_get_name(other.job)
		pawn_name = other.pawn.name
		pawn = other.pawn
	}
}
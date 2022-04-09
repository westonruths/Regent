/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

job = noone;
pawn = noone;

enabled = false;

image_xscale = 3
image_yscale = 3

skill_level = 1

skill_exp = 0
skill_next_level = round(0.04 * (skill_level ^ 3) + 0.8 * (skill_level ^ 2) + 2 * skill_level) * 75
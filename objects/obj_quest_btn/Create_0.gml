/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = 2
image_yscale = 2

radiance_rotation = 0

new_quest = true

global.renown = 0
global.renown_level = 1
global.renown_next_level =  round(0.04 * (global.renown_level ^ 3) + 0.8 * (global.renown_level ^ 2) + 2 * global.renown_level) * 10
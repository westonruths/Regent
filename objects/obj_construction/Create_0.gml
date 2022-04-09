/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 0;
image_index = 0;

dmg = 0

title = "Construction Site"
detail = "Something will soon be constructed here"
name = ""

var _snd = choose(snd_construct_1, snd_construct_2, snd_construct_3, snd_construct_4, snd_construct_5)
audio_stop_sound(_snd)
audio_sound_pitch(_snd, random_range(0.8, 1))
audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
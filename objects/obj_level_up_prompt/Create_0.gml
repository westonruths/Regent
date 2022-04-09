/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//unpause()

level = 0
tech_reward = 0
skip_counter = 0

//pause()

if(audio_is_playing(snd_level_up)){
	audio_stop_sound(snd_level_up);
}
	
audio_play_sound(snd_level_up, 1, false);
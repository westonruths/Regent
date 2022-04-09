/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//unpause()

level = 0
renown_reward = 0
job = ""
pawn_name = ""
pawn = noone

pause()

if(audio_is_playing(snd_level_up)){
	audio_stop_sound(snd_level_up);
}
	
audio_play_sound(snd_level_up, 1, false);
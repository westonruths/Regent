/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//unpause()

title = ""
detail = ""

prompt_sprite = noone
storyteller_script = noone

pause()

if(audio_is_playing(snd_level_up)){
	audio_stop_sound(snd_level_up);
}
	
audio_play_sound(snd_level_up, 1, false);
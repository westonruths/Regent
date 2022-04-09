/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
y = -3
image_xscale = global.view_width/3/sprite_width
image_yscale = 35/sprite_height

if(audio_is_playing(snd_book_page)){
	audio_stop_sound(snd_book_page);
}
	
audio_play_sound(snd_book_page, 1, false);
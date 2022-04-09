/// @description Insert description here
// You can write your code in this editor
event_inherited();
//image_alpha = image_alpha * (0.75)

image_xscale = global.view_width/1.4/sprite_width
image_yscale = global.view_height/sprite_height

x = global.view_width - sprite_width

text = "Technologies"

instance_create_layer(x+sprite_width-25,15,"Menu_Btns",obj_close_menu);

if(audio_is_playing(snd_book_page)){
	audio_stop_sound(snd_book_page);
}
	
audio_play_sound(snd_book_page, 1, false);
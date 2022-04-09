/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){

	//if(audio_is_playing(msc_song)){
	//	audio_stop_sound(msc_song);
	//}
	
	audio_sound_gain(_07_IMAscore_DustyTavern_LOOP, 0,1000)
	audio_sound_gain(_02_IMAscore_PeacefulKingdom_LOOP, 0,0)
	audio_sound_gain(_02_IMAscore_PeacefulKingdom_LOOP, 0.5,10000)
	if(audio_is_playing(_02_IMAscore_PeacefulKingdom_LOOP)){
		audio_stop_sound(_02_IMAscore_PeacefulKingdom_LOOP);
	}
	if(audio_is_playing(_07_IMAscore_DustyTavern_LOOP)){
		audio_stop_sound(_07_IMAscore_DustyTavern_LOOP);
	}
	audio_play_sound(_02_IMAscore_PeacefulKingdom_LOOP, 1, true);
	

	
	//setup map
	global.top_game = global.grid_resolution * 3;
	global.bottom_game = room_height - global.grid_resolution*5;
	global.left_limit = global.grid_resolution * 3;
	global.right_limit = room_width - global.grid_resolution*5;

	if global.start_new_game {
		make_new_game()
	} else {
		continue_game()
	}
	
	//render mountains
	with (obj_mtn_wall) {
		render_mtn_wall()
	}
} else {
	with instance_create_depth(0,0, -9999, obj_fade) { image_blend = c_black }
	audio_sound_gain(_07_IMAscore_DustyTavern_LOOP, 0,0)
	audio_sound_gain(_07_IMAscore_DustyTavern_LOOP, 0.7,5000)
	if(audio_is_playing(_07_IMAscore_DustyTavern_LOOP)){
		audio_stop_sound(_07_IMAscore_DustyTavern_LOOP);
	}
	if(audio_is_playing(_02_IMAscore_PeacefulKingdom_LOOP)){
		audio_stop_sound(_02_IMAscore_PeacefulKingdom_LOOP);
	}
	audio_play_sound(_07_IMAscore_DustyTavern_LOOP, 1, true);
}
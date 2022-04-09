// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_over(){
	instance_create_depth(0,0, -9999, obj_fade)
	room_goto(rm_start);
	if(audio_is_playing(Fantasy_Game_Distant_Soft_Rumble_1)){
		audio_stop_sound(Fantasy_Game_Distant_Soft_Rumble_1);
	}
	
	audio_play_sound(Fantasy_Game_Distant_Soft_Rumble_1, 1, false);
}
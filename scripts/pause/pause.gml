// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause(){
	global.time_pause = true
	global.saved_game_speed = global.game_speed
	global.game_speed = 0
}
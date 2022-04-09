//if(keyboard_check_pressed(ord("T"))){ global.time_pause = !global.time_pause; }
//global.building || global.menu_open ||
if (global.time_pause || global.saved_game_speed == 0) {
	global.time_pause = true
	global.game_speed = 0
} else {
	global.time_pause = false
	global.game_speed = global.saved_game_speed
}

if(global.time_pause){ exit; }

//Increment Time
time_increment = room_speed/5*global.game_speed;	//global.seconds per step
global.seconds += time_increment;
global.minutes = global.seconds/60;

if(draw_daylight){
	#region Phases and Variables
	var darks, colours, pstart, pend;
	
	if (global.hours > phase.sunrise and global.hours <= phase.daytime){			//Sunrise
		darks	= [max_darkness, 0.2];
		colours	= [merge_color(c_black,c_navy,0.3), c_orange];
		pstart	= phase.sunrise;
		pend	= phase.daytime;
	} else if (global.hours > phase.daytime and global.hours <= phase.sunset) {	//global.day
		darks	= [0.2, 0, 0, 0, 0.2];
		colours	= [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart	= phase.daytime;
		pend	= phase.sunset;
	} else if (global.hours > phase.sunset and global.hours <= phase.nighttime) {	//Sunset
		darks	= [0.2, max_darkness];
		colours	= [c_orange, c_navy, merge_color(c_black,c_navy,0.3)];
		pstart	= phase.sunset;
		pend	= phase.nighttime;
	} else {														//Night
		darks	= [max_darkness];
		colours	= [merge_color(c_black,c_navy,0.3)];	
		pstart	= phase.nighttime;
		pend	= phase.sunrise;
	}
	#endregion
	//----------------------------
	#region Alter Darkness and Colours Depending on Time
	//Colours
	if (pstart == phase.nighttime){ light_colour = colours[0]; }
	else {
		var cc = ((global.hours - pstart) / (pend - pstart))*(array_length_1d(colours)-1);
		var c1 = colours[floor(cc)];
		var c2 = colours[ceil(cc)];
	
		light_colour = merge_color(c1, c2, cc-floor(cc));
	}
	
	//Darkness
	if (pstart == phase.nighttime){ darkness = darks[0]; }
	else {
		var dd = ((global.hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = merge_number(d1, d2, dd-floor(dd));
	}
	#endregion

}


#region Cycle Check
if(global.seconds mod 60 == 0) {
	// Pawns lose food and energy and update moody timer
	with(obj_pawn) {
		alarm[1] = 1;
	}
	
	// Pawn mood adjusts
	with(obj_mood) {
		alarm[0] = 1	
	}
}

if(global.minutes >= 60){
	global.seconds = 0;
	global.hours += 1;
	
	// Auto save game every 2 hours
	if(global.hours mod 2 == 0) {
		with(obj_save_load) { 
			alarm[0] = 1
		}
	}
	
	// Update storyteller counters
	with(obj_storyteller) { 
		alarm[0] = 1
	}
	
	if(global.hours >= 24) {
		global.hours = 0;
		global.day += 1;
		
		// Crops grow
		with(obj_crop){ 
			alarm[1] = 1; 
		}
		
		// Check rooms
		with (obj_rooms) { alarm[2] = 100 }
		
		if(global.day > 30){
			global.day = 1;
			global.season += 1;
			if(global.season > 4){
				global.season = 1;
				global.year += 1;
			}
		}
	}
}
#endregion
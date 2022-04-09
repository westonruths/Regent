global.seconds = 80000;
global.minutes = 0;
global.hours = 8;

global.day = 1;
global.season = 1;
global.year = 1;

global.game_speed = 1;
global.time_pause = false;
global.saved_game_speed = global.game_speed;

max_darkness = 0.5;
darkness = 0;
light_colour = c_black;

//turn on or off drawing of daylight
draw_daylight = false;

guiWidth = room_width
guiHeight = room_height

enum phase {
	sunrise = 6,
	daytime = 8.5,
	sunset = 18,
	nighttime = 22,
}
/// @description Insert description here
// You can write your code in this editor

event_inherited();

image_speed = 0 //Just to stop the tech trying to animate 

// Initialise some things we will overwrite in techs 
techname = 0	// We don’t use this but this could be drawn next to or on mouse over to show the player the name of the tech
techid = 0		// this is the unique id of this tech 
techneeds = -1 // this will be an array holding the unique id of any tech requiered before getting this one
needcount = 0	// this will basically hold array_length_1d(techneeds) so we dont have to do it every frame

linetox[0] = 0	// this will be an array of where to draw every line coming out of this tech 
linetoy[0] = 0

techstatus = 0 // 0 = unavailable, 1 = available, purchased = 2

techsprite = spr_tech_point
techpoints = 1
techdetail = ""
techquest = []

image_xscale = 2
image_yscale = 2

selected = false

menux = 5
menuy = 100

detail_width = 175
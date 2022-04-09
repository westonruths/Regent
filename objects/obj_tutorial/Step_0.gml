/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

x = 50
y = 50
x_indicator = -100
y_indicator = -100

switch status {
	case 0:
		image_xscale = global.view_width/3/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		x = global.view_width/2 - sprite_width/2
		y = global.view_height/4
		
		title = "Welcome"
		detail = "Let's run through a quick tutorial."
		
		//if(mouse_check_button_released(mb_left)){
		//    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		//        status += 1
		//    }
		//}
	break;

	case 1:
		x = global.view_width/3
		y = global.view_height/4
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/10/sprite_get_height(spr_lt_box)
		
		title = "Camera Movement"
		detail = "Drag to pan the camera around."
		
		with (obj_camera) {
			if x != xprevious || y != yprevious {
				other.status += 1
				exit
			}
		}
		
	break;

	case 2:
		x = global.view_width/3
		y = global.view_height/4
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Camera Zoom"
		detail = "Good! Now pinch to zoom in and out."
		
		if global.zoom_level != 1 {
			status += 1
		}
		
	break;
	
	case 3:
	
		with (obj_build_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y - other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Build a Stockpile"
		detail = "Wonderful, let's now build a stockpile so we can store items. Tap on the build button."
		
		if instance_exists(obj_build_menu){
		    status += 1
		}
	
	break;

	case 4:
	
		status += 1

	break;

	case 5:
	
		with (obj_category_buildings) {
			other.x = x - other.sprite_width*1.5
			other.y = y + other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Stockpile"
		detail = "Tap on the Stockpiles/Buildings button"
		
		if instance_exists(obj_build_stockpile){
		    status += 1
		}
	
	break;
	
	case 6:
	
		with (obj_build_stockpile) {
			other.x = x - other.sprite_width*1.5
			other.y = y + other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Stockpile"
		detail = "Tap on the Stockpile Zone button"
		
		if instance_exists(obj_close_construction){
		    status += 1
		}
	
	break;

	case 7:
		with (obj_construct_ui) {
			other.x = x
			other.y = y - (other.sprite_height + 100)	
		}
		
		x_indicator = -100
		y_indicator = -100
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Stockpile"
		detail = "Tap and Drag to place a Stockpile Zone"
		
		if instance_exists(obj_stockpile){
		    status += 1
		}
	
	break;

	case 8:
		x = 25
		y = 100
	
		with (obj_quest_complete) {
			other.x_indicator = x+sprite_width/2
			other.y_indicator = y
		}
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Good Job!"
		detail = "You just completed a quest and recieved renown. Tap to accept it."
		
		if !instance_exists(obj_quest_complete){
		    status += 1
		}
	
	break;

	case 9:
	
		with (obj_quest_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y
		}
	
		if instance_exists(obj_close_construction) {
			with (obj_close_construction) {
				other.x_indicator = x
				other.y_indicator = y-sprite_height/2
			}
		} else {
			with (obj_quest_btn) {
				other.x = x - other.sprite_width*1.5
				other.y = y
				other.x_indicator = x
				other.y_indicator = y-sprite_height/2
			}
		}
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
		
		title = "Quests"
		detail = "Exit out of construction mode. \n\nLet's see if there are more quests to complete. Click on the quest button."
		
		if instance_exists(obj_quest_menu){
		    status += 1
		}
	
	break;

	case 10:
	
		with (obj_quest_menu) {
			other.x = x - other.sprite_width*1.5
			other.y = y + 50
		}
		
		with (obj_close_btn) {
			other.x_indicator = x
			other.y_indicator = y-16			
		}
		
		image_xscale = global.view_width/3/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Quests"
		detail = "This is your quest menu. Completing quests earns renown and leveling up renown earns tech scrolls. \nLet's close out of this menu."
		
		if !instance_exists(obj_quest_menu){
		    status += 1
		}
	
	break;

	case 11:
	
		with (obj_pawns_menu_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y
			other.x_indicator = x+sprite_width/2
			other.y_indicator = y-16	
		}
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Settlers"
		detail = "Before we can chop or mine we need to assign settlers to jobs. Tap on the Settler button."
		
		if instance_exists(obj_pawns_menu){
		    status += 1
		}
	
	break;

	case 12:
	
		with (obj_pawn_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y
			other.x_indicator = x+sprite_width/2
			other.y_indicator = y-16	
		}
		
		image_xscale = global.view_width/3/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
		
		title = "Settlers"
		detail = "This is an overview of your settlers. You can see what each is doing, their mood, and statuses. \n\nTap on one of your settlers."
		
		if instance_exists(obj_task_menu){
		    status += 1
		}
	
	break;

	case 13:
	
		with (obj_task_cell) {
			if visible && job == Mine {
				other.x = 50
				other.y = 100
				other.x_indicator = x+sprite_width/2
				other.y_indicator = y-5
			}
		}
		
		image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
		
		title = "Settlers"
		detail = "Here you can see a detailed view. Each job with a check mark is done from top to bottom. \n\nLet's assign this settler to Mine and PlantCut. \n\nTap those jobs so that you see a green check mark. Then close out of this menu."
		
		if !instance_exists(obj_task_menu){
		    status += 1
		}
	
	break;

	case 14:
	
		var _hiding = true
		with (obj_menu_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y - other.sprite_height
			other.x_indicator = x
			other.y_indicator = y-16
			
			_hiding = hide_buttons
		}
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Collect Wood"
		detail = "Let's now select some trees to chop down. Tap the tasks button."
		
		if !_hiding{
		    status += 1
		}
	
	break;
	
	case 15:
	
		with (obj_chop_task) {
			other.x = x - other.sprite_width*1.5
			other.y = y - other.sprite_height
			other.x_indicator = x
			other.y_indicator = y-10
		}
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Collect Wood"
		detail = "Tap on the chop wood task."
		
		if instance_exists(obj_taskplace_btn){
		    status += 1
		}
	
	break;

	case 16:
		
		with (obj_chop_task) {
			other.x = x
			other.y = y - (other.sprite_height + 100)	
		}
		
		x_indicator = -100
		y_indicator = -100
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Collect Wood"
		detail = "Tap or drag to select trees to chop down. Close this menu once done."
		
		if !instance_exists(obj_close_task){
		    status += 1
		}
	
	break;

	case 17:
		
		with (obj_tech_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y
			other.x_indicator = x
			other.y_indicator = y-10
		}
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Research"
		detail = "To build a room we'll need to research new tech. Tap on the tech button."
		
		if instance_exists(obj_tech_menu){
		    status += 1
		}
	
	break;

	case 18:
		
		with (obj_tech_ui) {
			if techname == "Walls" {
				other.x = x + other.sprite_width
				other.y = y
				other.x_indicator = x+sprite_width/2
				other.y_indicator = y
			}
		}
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Research"
		detail = "Let's research walls. Purchase the tech and close this menu."
		
		if !instance_exists(obj_tech_menu){
		    status += 1
		}
	
	break;

	case 19:
	
		with (obj_build_btn) {
			other.x = x - other.sprite_width*1.5
			other.y = y - other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Great, let's now build a room. Tap on the build button."
		
		if instance_exists(obj_build_menu){
		    status += 1
		}
	
	break;

	case 20:
	
		with (obj_category_buildings) {
			other.x = x - other.sprite_width*1.5
			other.y = y + other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Tap on the Stockpiles/Buildings button"
		
		if instance_exists(obj_build_stockpile){
		    status += 1
		}
	
	break;
	
	case 21:
	
		with (obj_build_wall) {
			other.x = x - other.sprite_width*1.5
			other.y = y + other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Tap on the Wall button"
		
		if instance_exists(obj_close_construction){
		    status += 1
		}
	
	break;

	case 22:
		with (obj_construct_ui) {
			other.x = x
			other.y = y - (other.sprite_height + 100)	
		}
		
		x_indicator = -100
		y_indicator = -100
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Tap and Drag to place a small room."
		
		if instance_exists(obj_construction){
		    status += 1
		}
	
	break;

	case 23:
		with (obj_construct_ui) {
			other.x = x 
			other.y = y - (other.sprite_height + 100)	
		}
			
		with (obj_back_construction) {
			other.x_indicator = x
			other.y_indicator = y-sprite_height/2
		}
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/8/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Go back and select a door to place"
		
		if instance_exists(obj_build_door){
		    status += 1
		}
	
	break;

	case 24:
	
		with (obj_build_door) {
			other.x = x - other.sprite_width*1.5
			other.y = y + other.sprite_height
			other.x_indicator = x + sprite_width/2
			other.y_indicator = y
		}
		
		
		image_xscale = global.view_width/5/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/10/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Tap on the Door button"
		
		if instance_exists(obj_close_construction){
		    status += 1
		}
	
	break;

	case 25:
		with (obj_construct_ui) {
			other.x = x
			other.y = y - (other.sprite_height + 100)	
		}
		
		x_indicator = -100
		y_indicator = -100
		
		image_xscale = global.view_width/4/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Build a Room"
		detail = "Tap on a wall construction site to replace it with a door. Close this menu once done."
		
		if !instance_exists(obj_construct_ui){
		    status += 1
		}
	
	break;

	case 26:
		
		x = 200
		y = 100
		
		x_indicator = -100
		y_indicator = -100
		
		image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/6/sprite_get_height(spr_lt_box)
		
		title = "Go Forth"
		detail = "This concludes the tutorial. Continue growing and expanding. \n\nThere is also word that goblins are about, prepare your defenses... \n\nTap to Dismiss"
		
		if(mouse_check_button_released(mb_left)){
		    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		        status += 1
		    }
		}
		
		with (obj_storyteller) { counter_hrs[story.raid] = irandom_range(2, 4) }
	
	break;

	case 27:
		visible = false
		x = -1000
		y = -1000
		
		x_indicator = -100
		y_indicator = -100
	
	break;

}

with (tutorial_indicator) {
	x = other.x_indicator
	y = other.y_indicator
}
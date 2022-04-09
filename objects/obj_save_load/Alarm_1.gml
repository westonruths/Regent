/// @description LOAD GAME
// You can write your code in this editor

//unpause()

//with (obj_info_item) instance_destroy()
//with (obj_pawn) instance_destroy()
with (techs) instance_destroy()
with (quests) instance_destroy()
with (obj_storyteller) instance_destroy()

#region Load info items
if (file_exists("info_items.save")) {
	
	var _buffer = buffer_load("info_items.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, asset_get_index(_loadEntity.obj))) {
			hp = _loadEntity.hp
			hp_max = _loadEntity.hp_max
			title = _loadEntity.title
			detail = _loadEntity.detail
			
			if variable_instance_exists(id, "selected") {
				selected = _loadEntity.selected 
			}
			
			if variable_instance_exists(id, "obj_building_type") {
				obj_building_type = _loadEntity.obj_building_type	
			}
			
			if variable_instance_exists(id, "build_cost") {
				build_cost.original_costs = _loadEntity.build_cost.original_costs
				build_cost.costs = _loadEntity.build_cost.costs
				build_cost.original_construction_health = _loadEntity.build_cost.original_construction_health
				build_cost.construction_health = _loadEntity.build_cost.construction_health
				build_cost.built = _loadEntity.build_cost.built
			}
			
			if variable_instance_exists(id, "filled") {
				filled = _loadEntity.filled
			}
			
			if variable_instance_exists(id, "start_num_pawns") {
				start_num_pawns = _loadEntity.start_num_pawns
			}

			if variable_instance_exists(id, "watered") {
				watered = _loadEntity.watered
			}
			if variable_instance_exists(id, "max_grow_counter") {
				max_grow_counter = _loadEntity.max_grow_counter
			}
			if variable_instance_exists(id, "grow_counter") {
				grow_counter = _loadEntity.grow_counter
			}
			if variable_instance_exists(id, "max_build_counter") {
				max_build_counter = _loadEntity.max_build_counter
			}
			if variable_instance_exists(id, "build_counter") {
				build_counter = _loadEntity.build_counter
			}	
			
			if object_is_ancestor(object_index, obj_building) || object_is_ancestor(object_index, obj_resource) {
				with(instance_position(x, y, obj_cell)) { build_obj = other }	
			}
		}
	}
	//print("Loaded info items! ", _string)
}
#endregion 

#region Load settler info
if (file_exists("settler.save")) {
	
	var _buffer = buffer_load("settler.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, asset_get_index(_loadEntity.obj))) {

			hp = _loadEntity.hp
			old_hp = _loadEntity.old_hp
			char_food= _loadEntity.char_food
			char_energy= _loadEntity.char_energy
			hair.hair_type= _loadEntity.hair_type
			name = _loadEntity.name
			spd = _loadEntity.spd
			crowned = _loadEntity.crowned
			drafted = _loadEntity.drafted
			melee = _loadEntity.melee
			
			with (mood) {
				mood = _loadEntity.mood.mood
				mood_base = _loadEntity.mood.mood_base
				mood_goal = _loadEntity.mood.mood_goal
				thought = _loadEntity.mood.thought
				thoughtcaption = _loadEntity.mood.thoughtcaption
				thoughteffect = _loadEntity.mood.thoughteffect
				thoughtactive = _loadEntity.mood.thoughtactive
				thoughttimer = _loadEntity.mood.thoughttimer
				thoughttimero = _loadEntity.mood.thoughttimero
			}
	
			var listSize = array_length(jobs);
			for(var i = 0; i < listSize; i++) {
				task_cells[i].skill_level = _loadEntity.task_cells[i].skill_level
				task_cells[i].enabled = _loadEntity.task_cells[i].enabled
				task_cells[i].skill_exp = _loadEntity.task_cells[i].skill_exp
				task_cells[i].skill_next_level = _loadEntity.task_cells[i].skill_next_level
			}
		}
	}
	//print("Loaded settlers! ", _string)
}
#endregion

#region Load techs
if (file_exists("techs.save")) {
	
	var _buffer = buffer_load("techs.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, techs)) {

			techname = _loadEntity.techname
			techdetail = _loadEntity.techdetail
			techsprite = _loadEntity.techsprite
			techpoints = _loadEntity.techpoints
			techstatus = _loadEntity.techstatus
			techneeds = _loadEntity.techneeds
			techquest = _loadEntity.techquest
			techx = _loadEntity.techx
			techy = _loadEntity.techy
		
		}
	}
	//print("Loaded techs! ", _string)
}
#endregion

#region Load quests
if (file_exists("quests.save")) {
	
	var _buffer = buffer_load("quests.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, quests)) {

			quest_array = _loadEntity.quest_array
		
		}
	}
	//print("Loaded quests! ", _string)
}
#endregion

#region Load story
if (file_exists("story.save")) {
	
	var _buffer = buffer_load("story.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, obj_storyteller)) {

			counter_hrs = _loadEntity.counter_hrs
		
		}
	}
	print("Loaded story! ", _string)
}
#endregion

#region Load targets
if (file_exists("targets.save")) {
	
	var _buffer = buffer_load("targets.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, obj_storyteller)) {

			pawn = _loadEntity.pawn
		
		}
	}
	print("Loaded story! ", _string)
}
#endregion

#region Load global variables
if (file_exists("global.save")) {
	
	var _buffer = buffer_load("global.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		global.renown = _loadEntity.renown
		global.renown_level = _loadEntity.renown_level
		global.renown_next_level = _loadEntity.renown_next_level
		global.tech_points = _loadEntity.tech_points

		global.seconds = _loadEntity.seconds
		global.minutes = _loadEntity.minutes
		global.hours = _loadEntity.hours

		global.day = _loadEntity.day
		global.season = _loadEntity.season
		global.year = _loadEntity.year

		global.game_speed = _loadEntity.game_speed
		global.time_pause = _loadEntity.time_pause
		global.saved_game_speed = _loadEntity.saved_game_speed
		

		global.selected_mtns = ds_list_create()
		var size = array_length(_loadEntity.selected_mtns);
		for(var i=0; i<size; i++){
			if _loadEntity.selected_mtns[i] == 0 { continue }
			var mtn = instance_position(_loadEntity.selected_mtns[i].x, _loadEntity.selected_mtns[i].y, obj_mtn_wall)
			if instance_exists(mtn) {
				ds_list_add(global.selected_mtns, mtn)	
			}
		}

	}
	//print("Loaded global variables! ", _string)
}
#endregion

print("Game Loaded")
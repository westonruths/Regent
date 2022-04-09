/// @description SAVE GAME
// You can write your code in this editor

instance_create_layer(global.view_width/2, 32, "Menu_Prompts", obj_save_icon)

#region Save info items
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_info_item) {
	
	var _saveEntity = 
	{
		obj: object_get_name(object_index),
		layer: layer,
		x: x,
		y: y,
		hp: hp,
		hp_max: hp_max,
		title: title,
		detail: detail,
	}
	
	if variable_instance_exists(id, "selected") {
		_saveEntity.selected = selected
	}
	
	if variable_instance_exists(id, "obj_building_type") {
		_saveEntity.obj_building_type = obj_building_type	
	}
	
	if variable_instance_exists(id, "build_cost") {
		_saveEntity.build_cost = {
			original_costs: build_cost.original_costs,
			costs: build_cost.costs,
			original_construction_health: build_cost.original_construction_health,
			construction_health: build_cost.construction_health,
			built: build_cost.built,
		}
	}
	
	if variable_instance_exists(id, "filled") {
		_saveEntity.filled = filled
	}
	
	if variable_instance_exists(id, "start_num_pawns") {
		_saveEntity.start_num_pawns = start_num_pawns
	}

	if variable_instance_exists(id, "watered") {
		_saveEntity.watered = watered
	}
	if variable_instance_exists(id, "max_grow_counter") {
		_saveEntity.max_grow_counter = max_grow_counter
	}
	if variable_instance_exists(id, "grow_counter") {
		_saveEntity.grow_counter = grow_counter
	}
	if variable_instance_exists(id, "max_build_counter") {
		_saveEntity.max_build_counter = max_build_counter
	}
	if variable_instance_exists(id, "build_counter") {
		_saveEntity.build_counter = build_counter
	}	
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "info_items.save")
buffer_delete( _buffer)
#endregion

#region Save pawns
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_pawn) {
	
	var _saveEntity = 
	{
		obj: object_get_name(object_index),
		layer: layer,
		x: x,
		y: y,
		hp: hp,
		char_food: char_food,
		char_energy: char_energy,
		hair_type: hair.hair_type,
		name: name,
		spd: spd,
		old_hp: old_hp,
		crowned: crowned,
		drafted: drafted,
		melee: melee,
	}
	
	with (mood) {
		_saveEntity.mood = {
			mood: mood,
			mood_base: mood_base,
			mood_goal: mood_goal,
			thought: thought,
			thoughtcaption: thoughtcaption,
			thoughteffect: thoughteffect,
			thoughtactive: thoughtactive,
			thoughttimer: thoughttimer,
			thoughttimero: thoughttimero,
		}
	}
	
	_saveEntity.task_cells = []
	var listSize = array_length(jobs);
	for(var i = 0; i < listSize; i++) {
		_saveEntity.task_cells[i] = {
			skill_level: task_cells[i].skill_level,
			enabled: task_cells[i].enabled,
			skill_exp: task_cells[i].skill_exp,
			skill_next_level: task_cells[i].skill_next_level,
		}
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "settler.save")
buffer_delete( _buffer)
#endregion

#region Save techs
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (techs) {
	
	var _saveEntity = 
	{
		x: x,
		y: y,
		layer: layer,
		
		techname: techname,
		techdetail: techdetail,
		techsprite: techsprite,
		techpoints: techpoints,
		techstatus: techstatus,
		techneeds: techneeds,
		techquest: techquest,
		techx: techx,
		techy: techy,
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "techs.save")
buffer_delete( _buffer)
#endregion

#region Save quests
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (quests) {
	
	var _saveEntity = 
	{
		x: x,
		y: y,
		layer: layer,
		
		quest_array: quest_array,
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "quests.save")
buffer_delete( _buffer)

//print("Game saved! ", _string)
#endregion

#region Save targets
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_storyteller) {
	
	var _saveEntity = 
	{
		x: x,
		y: y,
		layer: layer,
		
		counter_hrs: counter_hrs,
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "story.save")
buffer_delete( _buffer)

//print("Game saved! ", _string)
#endregion

#region Save story
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_target) {
	
	var _saveEntity = 
	{
		x: x,
		y: y,
		layer: layer,
		
		pawn: pawn,
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "targets.save")
buffer_delete( _buffer)

//print("Game saved! ", _string)
#endregion

#region Save global variables
//make save array
var _saveData = array_create(0)

var _saveEntity = 
{
	renown: global.renown,
	renown_level: global.renown_level,
	renown_next_level: global.renown_next_level,
	tech_points: global.tech_points,
	
	seconds: global.seconds,
	minutes: global.minutes,
	hours: global.hours,

	day: global.day,
	season: global.season,
	year: global.year,

	game_speed: global.game_speed,
	time_pause: global.time_pause,
	saved_game_speed: global.saved_game_speed,
}

var tmp_selected_mtns = []
var size = ds_list_size(global.selected_mtns);
for(var i=0; i<size; i++){
	var mtn = ds_list_find_value(global.selected_mtns,i);
	if instance_exists(mtn) {
		tmp_selected_mtns[i] = { x: mtn.x, y: mtn.y }
	}
}
_saveEntity.selected_mtns = tmp_selected_mtns
	
array_push(_saveData, _saveEntity)	

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "global.save")
buffer_delete( _buffer)
#endregion


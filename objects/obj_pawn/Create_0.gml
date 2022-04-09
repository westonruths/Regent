/// @description Insert description here
// You can write your code in this editor
hp = 100
old_hp = hp
hp_max = 100

char_food = 100
char_food_max = 100

char_energy = 100
char_energy_max = 100

mood = instance_create_layer(x, y, "Instances", obj_mood)

current_task = ""

crowned = false
drafted = false

work_spd = 1
spd = 1;
path = path_add();
test_path = path_add();

// Randomly select name
var gender = irandom(1)
name = Name(gender);

// Create selector object
selector = instance_create_layer(x, y, "Instances", obj_pawn_selector)
with (selector) { pawn = other }

// Setup tool
tool = instance_create_layer(x,y,"Items",obj_tool)
with (tool) { pawn = other }

// Setup hair
hair = instance_create_layer(x,y,"Items",obj_hair)
var hair_types = ["bowlhair_", "curlyhair_", "mophair_", "shorthair_", "spikeyhair_"]
if gender == 0 {
	var hair_types = ["longhair_"]
}
var i = irandom_range(0, array_length(hair_types)-1)

with (hair) { 
	pawn = other 
	hair_type = hair_types[i]
}

// The active weapon being employed
active_wpn = noone
//active_wpn = instance_create_layer(x,y,"Items",obj_wpn)

// The primary enemy engagement weapon
equipped_wpn = 1;

// The weapon index that is active
active_wpn_index = 0;

melee = choose(true, false)

// Action targets
mood_target = noone
defend_target = noone
eat_target = noone
sleep_target = noone
patient_target = noone
doctor_target = noone
cooking_target = noone
hunt_target = noone
construct_target = noone
grow_target = noone
mine_target = noone
fell_target = noone
haul_target = noone

targets[0] = mood_target
targets[1] = defend_target
targets[2] = eat_target
targets[3] = sleep_target
targets[4] = patient_target
targets[5] = doctor_target
targets[6] = cooking_target
targets[7] = hunt_target
targets[8] = construct_target
targets[9] = grow_target
targets[10] = mine_target
targets[11] = fell_target
targets[12] = haul_target
targets_listsize = array_length(targets);
current_target = targets_listsize-1

// Idle target
idle_counter = 0
targetX = x + irandom_range(-50,50)
targetY = y + irandom_range(-50,50)
old_targetX = targetX
old_targetY = targetY
alarm[2] = 1

// Moody counter
moody_counter = 0
moody_end = irandom_range(12, 24)
first_break = true

// Item we are holding
item_holding = noone
food_holding = noone
medicine_holding = noone
// Construct target
target_construct = noone
// Cook haul target
cook_haul_target = noone
doctor_haul_target = noone

jobs[0] = Defend
jobs[1] = Patient
jobs[2] = Doctor
jobs[3] = Cook
jobs[4] = Hunt
jobs[5] = Construct
jobs[6] = Grow
jobs[7] = Mine
jobs[8] = PlantCut
jobs[9] = Haul
//jobs[10] = Research

// Create job cells
menu_open = false;
var listSize = array_length(jobs);
for(var i = 0; i < listSize; i++) {
	task_cells[i] = instance_create_layer(global.view_width - 100,global.build_y + i*35,"Menu_Objects",obj_task_cell);
	with(task_cells[i]) {
		job = other.jobs[i]
		pawn = other
		visible = false
		skill_level = irandom_range(1, 10)
		
		if skill_level >= 3 {
			enabled = true
		}
	}
}

enum jobid {
	defend,
	patient,
	doctor,
	cook,
	hunt,
	construct,
	grow,
	mine,
	plantcut,
	haul
}
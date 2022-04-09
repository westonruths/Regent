/// @description Insert description here
// You can write your code in this editor
event_inherited()

hp = 100
old_hp = hp
hp_max = hp

targetX = x + irandom_range(-50,50)
targetY = y + irandom_range(-50,50)
old_targetX = targetX
old_targetY = targetY

spd = 1;
path = path_add();
alarm[2] = 1

hunt_target = noone

strength = 10
accuracy = 55

title = "Goblin"
detail = "A nefarious foe. Prepare your defenses."

start_num_pawns = instance_number(obj_pawn)


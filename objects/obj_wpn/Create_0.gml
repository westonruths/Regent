/// @description 
target = noone;

//unarmed
weapons[0] = ds_map_create();
ds_map_add(weapons[0],"sprite",-1);
ds_map_add(weapons[0],"recoil",0);
ds_map_add(weapons[0],"damage",0);
ds_map_add(weapons[0],"projectile",-1);
ds_map_add(weapons[0],"startup",0);
ds_map_add(weapons[0],"length",0);
ds_map_add(weapons[0],"cooldown",0);
ds_map_add(weapons[0],"bulletspeed",0);
ds_map_add(weapons[0],"range",0);
ds_map_add(weapons[0],"num_bullets",0);

//Pistol
weapons[1] = ds_map_create();
ds_map_add(weapons[1],"sprite",spr_pistol);
ds_map_add(weapons[1],"recoil",6);
ds_map_add(weapons[1],"damage",5);
ds_map_add(weapons[1],"projectile",obj_bullet);
ds_map_add(weapons[1],"startup",5);
ds_map_add(weapons[1],"length",7);
ds_map_add(weapons[1],"cooldown",150);
ds_map_add(weapons[1],"bulletspeed",7);
ds_map_add(weapons[1],"range",200);
ds_map_add(weapons[1],"num_bullets",1);

//Axe
weapons[2] = ds_map_create();
ds_map_add(weapons[2],"sprite",spr_axe);
ds_map_add(weapons[2],"recoil",6);
ds_map_add(weapons[2],"damage",2);
ds_map_add(weapons[2],"projectile",obj_axe_slash);
ds_map_add(weapons[2],"startup",0);
ds_map_add(weapons[2],"length",6);
ds_map_add(weapons[2],"cooldown",100);
ds_map_add(weapons[2],"bulletspeed",7);
ds_map_add(weapons[2],"range",45);
ds_map_add(weapons[2],"num_bullets",1);

//Hammer
weapons[3] = ds_map_create();
ds_map_add(weapons[3],"sprite",spr_hammer);
ds_map_add(weapons[3],"recoil",6);
ds_map_add(weapons[3],"damage",2);
ds_map_add(weapons[3],"projectile",obj_hammer_hit);
ds_map_add(weapons[3],"startup",0);
ds_map_add(weapons[3],"length",6);
ds_map_add(weapons[3],"cooldown",100);
ds_map_add(weapons[3],"bulletspeed",7);
ds_map_add(weapons[3],"range",48);
ds_map_add(weapons[3],"num_bullets",1);


weapon = 1;

ChangeWeapon(weapon);

current_cd = 0;
current_delay = -1;
current_recoil = 0;

#region // DATA tree
var i = 0
techname[i] = "Stockpiles"
techdetail[i] = "Unlocks stockpiles to store items"
techsprite[i] = stockpile_zone_icon
techpoints[i] = 0
techstatus[i] = 2
techneeds[i,0] = -1  // -1 always available 
techquest[i] = []
techx[i] = 260
techy[i] = global.view_height/2

i = 1
techname[i] = "Walls"
techdetail[i] = "Unlocks walls & doors for making rooms"
techsprite[i] = spr_home
techpoints[i] = 1
techstatus[i] = 1
techneeds[i,0] = 0
techquest[i] = [quest.build_room]
techx[i] = techx[0]+lengthdir_x(80, 45)
techy[i] = techy[0]+lengthdir_y(80, 45)

i = 2
techname[i] = "Stoves"
techdetail[i] = "Unlocks stoves for cooking raw food"
techsprite[i] = spr_stove
techpoints[i] = 1
techstatus[i] = 1
techneeds[i,0] = 0
techquest[i] = [quest.build_stove, quest.collect_meat, quest.cook_meals]
techx[i] = techx[0]+lengthdir_x(80, 315)
techy[i] = techy[0]+lengthdir_y(80, 315)

i = 3
techname[i] = "Agriculture"
techdetail[i] = "Unlocks crops to plant"
techsprite[i] = spr_wheat_icon
techpoints[i] = 2
techstatus[i] = 0
techneeds[i,0] = 2
techquest[i] = [quest.harvest_wheat]
techx[i] = techx[2]+lengthdir_x(70, 0)
techy[i] = techy[2]+lengthdir_y(70, 0)

i = 4
techname[i] = "Beds"
techdetail[i] = "Unlocks beds to rest in"
techsprite[i] = spr_bed
techpoints[i] = 1
techstatus[i] = 0
techneeds[i,0] = 1
techquest[i] = [quest.build_beds]
techx[i] = techx[1]+lengthdir_x(85, 35)
techy[i] = techy[1]+lengthdir_y(85, 35)

i = 5
techname[i] = "Defenses"
techdetail[i] = "Unlocks defensive and hiding positions"
techsprite[i] = spr_shield
techpoints[i] = 2
techstatus[i] = 0
techneeds[i,0] = 1
techquest[i] = []
techx[i] = techx[1]+lengthdir_x(85, 325)
techy[i] = techy[1]+lengthdir_y(85, 325)

i = 6
techname[i] = "Graves"
techdetail[i] = "Unlocks burial spots"
techsprite[i] = spr_grave
techpoints[i] = 1
techstatus[i] = 0
techneeds[i,0] = 4
techquest[i] = []
techx[i] = techx[4]+lengthdir_x(70, 0)
techy[i] = techy[4]+lengthdir_y(70, 0)

i = 7
techname[i] = "Traps"
techdetail[i] = "Unlocks spike traps"
techsprite[i] = spr_spike_trap
techpoints[i] = 2
techstatus[i] = 0
techneeds[i,0] = 5
techquest[i] = []
techx[i] = techx[5]+lengthdir_x(70, 0)
techy[i] = techy[5]+lengthdir_y(70, 0)

//techname[3] = "tech1.1"
//techimage[3] = 2
//techneeds[3,0] = 0 
//techx[3] = 221
//techy[3] = 176

//techname[4] = "tech1.2"
//techimage[4] = 0
//techneeds[4,0] = 0 
//techx[4] = techs.x+lengthdir_x(130, 90-30)
//techy[4] = techs.x+lengthdir_y(130, 90-30)

//techname[5] = "tech2.1"
//techimage[5] = 5
//techneeds[5,0] = 1 
//techx[5] = 244
//techy[5] = 410

//techname[6] = "tech2.2"
//techimage[6] = 3
//techneeds[6,0] = 1 
//techx[6] = 162
//techy[6] = 311

//techname[7] = "tech3.1"
//techimage[7] = 8
//techneeds[7,0] = 2 
//techx[7] = techs.x+lengthdir_x(130, 330+30)
//techy[7] = techs.x+lengthdir_y(130, 330+30)

//techname[8] = "tech3.2"
//techimage[8] = 6
//techneeds[8,0] = 2 
//techx[8] = techs.x+lengthdir_x(130, 330-30)
//techy[8] = techs.x+lengthdir_y(130, 330-30)

//techname[9] = "tech between yellow and blue"
//techimage[9] = 9
//techneeds[9,0] = 4 
//techneeds[9,1] = 7 
//techx[9] = techs.x+lengthdir_x(150, 30)
//techy[9] = techs.x+lengthdir_y(150, 30)

//techname[10] = "tech2 grid"
//techimage[10] = 5
//techneeds[10,0] = 5 
//techx[10] = 244
//techy[10] = 480

//techname[11] = "tech2 grid"
//techimage[11] = 5
//techneeds[11,0] = 10 
//techx[11] = 244
//techy[11] = 550

//techname[12] = "tech2.1"
//techimage[12] = 5
//techneeds[12,0] = 5 
//techx[12] = 170
//techy[12] = 410

//techname[13] = "tech2 grid"
//techimage[13] = 5
//techneeds[13,0] = 10 
//techneeds[13,1] = 12 
//techx[13] = 170 
//techy[13] = 480

//techname[14] = "tech2 grid"
//techimage[14] = 5
//techneeds[14,0] = 11 
//techneeds[14,1] = 13 
//techx[14] = 170 
//techy[14] = 550

//techname[15] = "tech2 grid"
//techimage[15] = 5
//techneeds[15,0] = 12 
//techx[15] = 100 
//techy[15] = 410

//techname[16] = "tech2 grid"
//techimage[16] = 5
//techneeds[16,0] = 15 
//techneeds[16,1] = 13 
//techx[16] = 100 
//techy[16] = 480

//techname[17] = "tech2 grid"
//techimage[17] = 5
//techneeds[17,0] = 14 
//techneeds[17,1] = 16 
//techx[17] = 100 
//techy[17] = 550

//techname[18] = "tech Circle start"
//techimage[18] = 6
//techneeds[18,0] = 8 
//techx[18] = 479 
//techy[18] = 487

//techname[19] = "tech Circle"
//techimage[19] = 6
//techneeds[19,0] = 18 
//techx[19] = 479 + lengthdir_x(80,54)
//techy[19] = 487 + lengthdir_y(80,54)

//techname[20] = "tech Circle"
//techimage[20] = 6
//techneeds[20,0] = 18 
//techx[20] = 479 + lengthdir_x(80,114)
//techy[20] = 487 + lengthdir_y(80,114)

//techname[21] = "tech Circle"
//techimage[21] = 6
//techneeds[21,0] = 18 
//techx[21] = 479 + lengthdir_x(80,174)
//techy[21] = 487 + lengthdir_y(80,174)

//techname[22] = "tech Circle"
//techimage[22] = 6
//techneeds[22,0] = 18 
//techx[22] = 479 + lengthdir_x(80,234)
//techy[22] = 487 + lengthdir_y(80,234)

//techname[23] = "tech Circle"
//techimage[23] = 6
//techneeds[23,0] = 18 
//techx[23] = 479 + lengthdir_x(80,294)
//techy[23] = 487 + lengthdir_y(80,294)

//techname[24] = "tech Circle"
//techimage[24] = 6
//techneeds[24,0] = 18 
//techx[24] = 479 + lengthdir_x(80,354)
//techy[24] = 487 + lengthdir_y(80,354)

//techname[25] = "tech Full Circle"
//techimage[25] = 0
//techneeds[25,0] = 4 
//techx[25] = 460 + lengthdir_x(66,240)
//techy[25] = 85 + lengthdir_y(66,240)

//techname[26] = "tech Full Circle"
//techimage[26] = 0
//techneeds[26,0] = 25 
//techx[26] = 460 + lengthdir_x(66,300)
//techy[26] = 85 + lengthdir_y(66,300)

//techname[27] = "tech Full Circle"
//techimage[27] = 0
//techneeds[27,0] = 26 
//techx[27] = 460 + lengthdir_x(66,0)
//techy[27] = 85 + lengthdir_y(66,0)

//techname[28] = "tech Full Circle"
//techimage[28] = 0
//techneeds[28,0] = 27 
//techx[28] = 460 + lengthdir_x(66,60)
//techy[28] = 85 + lengthdir_y(66,60)

//techname[29] = "tech Full Circle"
//techimage[29] = 0
//techneeds[29,0] = 28 
//techx[29] = 460 + lengthdir_x(66,120)
//techy[29] = 85 + lengthdir_y(66,120)

//techname[30] = "tech Full Circle"
//techimage[30] = 0
//techneeds[30,0] = 29 
//techneeds[30,1] = 25
//techx[30] = 460 + lengthdir_x(66,180)
//techy[30] = 85 + lengthdir_y(66,180)

//techname[31] = "Diagonals"
//techimage[31] = 2
//techneeds[31,0] = 3 
//techx[31] = 221
//techy[31] = 106

//techname[32] = "Diagonals"
//techimage[32] = 2
//techneeds[32,0] = 3 
//techx[32] = 156
//techy[32] = 176

//techname[33] = "Diagonals"
//techimage[33] = 2
//techneeds[33,0] = 31 
//techneeds[33,1] = 32 
//techx[33] = 156
//techy[33] = 106

//techname[34] = "Diagonals"
//techimage[34] = 2
//techneeds[34,0] = 33 
//techx[34] = 86
//techy[34] = 106

//techname[35] = "Diagonals"
//techimage[35] = 2
//techneeds[35,0] = 33 
//techx[35] = 156
//techy[35] = 36

//techname[36] = "Diagonals"
//techimage[36] = 2
//techneeds[36,0] = 34 
//techneeds[36,1] = 35 
//techx[36] = 86
//techy[36] = 36

//techname[37] = "line"
//techimage[37] = 3
//techneeds[37,0] = 6 
//techx[37] = 162
//techy[37] = 251

//techname[38] = "line"
//techimage[38] = 3
//techneeds[38,0] = 6 
//techx[38] = 102
//techy[38] = 311

//techname[39] = "line"
//techimage[39] = 3
//techneeds[39,0] = 38 
//techx[39] = 102
//techy[39] = 251

//techname[40] = "line"
//techimage[40] = 3
//techneeds[40,0] = 38 
//techx[40] = 42
//techy[40] = 311

//techname[41] = "line"
//techimage[41] = 3
//techneeds[41,0] = 40 
//techx[41] = 42
//techy[41] = 251



#endregion

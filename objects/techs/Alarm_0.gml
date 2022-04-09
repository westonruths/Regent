/// @description Create tech tree
// You can write your code in this editor


for (i=0; i<array_length_1d(techname); i++) // loop around for each tech
{

	var newtech = instance_create_layer(techx[i], techy[i],"Menu_Objects",obj_tech_ui); // Create an object that will be this tech 
	newtech.techname = techname[i]
	newtech.techdetail = techdetail[i]
	newtech.techsprite = techsprite[i]
	newtech.techpoints = techpoints[i]
	newtech.techstatus = techstatus[i]
	newtech.techquest = techquest[i]
	newtech.techid = i

	// ASSERT – at this point the object tech has been made 
	
	with(newtech) { // we now want to pre record all the lines this tech is connected to so we dont have to work it out every time
	
		for (j=0; j<array_length_2d(other.techneeds,other.i); j+=1) // loop around all the techs I connect to 
		{
			techneeds[j] = other.techneeds[other.i,j]
			
			if (techneeds[j] == -1) { // This tech is always available so draw a line to the central object 
				
				//linetox[0] = techs.x
				//linetoy[0] = techs.y
				//needcount = 1
				
			} else { // on the new tech record where its lines should be drawn so we don’t need to look it up every frame
				
				linetox[j] = other.techx[techneeds[j]]
				linetoy[j] = other.techy[techneeds[j]]
				  
				needcount++
			};
		}
	}

};
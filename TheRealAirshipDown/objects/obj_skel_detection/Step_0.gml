if(place_meeting(x,y,obj_player)&&counter>=60) {
	instance_create_layer(x,y,"Instances",obj_skel_Arrow);
	counter=0;
}
counter++;


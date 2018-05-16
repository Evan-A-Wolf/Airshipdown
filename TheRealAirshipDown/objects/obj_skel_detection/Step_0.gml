if (object_exists(obj_Skeleton)) {
	if(place_meeting(x,y,obj_player)&&counter>=60) {
		instance_create_layer(x,y,"Instances",obj_skel_Arrow);
		counter=0;
	}
	counter++;
	if (obj_Skeleton.hp <= 0) instance_destroy();
}
if (delete) {
	instance_destroy();
}


if(place_meeting(x,y,obj_wall)){
	instance_destroy();
}
if(place_meeting(x,y,obj_player)) {
	obj_player.hp-=12;
	instance_destroy();
}

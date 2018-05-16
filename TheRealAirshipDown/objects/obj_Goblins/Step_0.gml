if(obj_player.x>x){
	hspd = 20;
} else if(obj_player.x<x){
	hspd = -20;
}

if(place_meeting(x,y,obj_player)){
	obj_player.hp-=dmg;
	instance_destroy();
}
if(place_meeting(x,y,obj_sword)){
	obj_player.exper++;
	instance_destroy();
}
if (place_meeting(x,y,obj_player_fire)) {
	obj_player.exper++;
	instance_destroy();
}
x+=hspd;
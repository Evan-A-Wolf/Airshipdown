//moving
if(instance_exists(obj_player)){
	if(obj_player.x>x){
		brdHspd += 0.5;
	}else if(obj_player.x<x){
		brdHspd -= 0.5;
	}
	if(obj_player.y<y){
		brdVspd -= 0.5;
	} else if(obj_player.y>y){
		brdVspd += 0.5;
	}
}

x+=brdHspd;
y+=brdVspd;

//death
if(brdHlth<=0){
	instance_destroy();
}

if (place_meeting(x,y,obj_player) && cooldown >= 10) {
	obj_player.hp -= brdDmg;
	cooldown = 0;
}
cooldown++;

image_angle = point_direction(x,y,obj_player.x,obj_player.y);
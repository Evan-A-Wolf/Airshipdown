/// @description Things to be done with each tick.

// Jumping 
slm_jumpDelay--;
if(slm_jumpDelay<=10){
	if(object_exists(obj_player)){
		yspd+=10;
		if(obj_player.x > x){
			xspd+=10;
		}else if(obj_player.x < x){
			xspd-=10;
		}
		sprite_index = spr_grnSlm_J;
	}
	
}
if(place_meeting(x,y,obj_player)){
	xspd=0;
	yspd=0;
	sprite_index = spr_grnSlm;
}

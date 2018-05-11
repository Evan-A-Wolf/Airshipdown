if (place_meeting(x,y,obj_player) && cooldown >= 10) {
	obj_player.hp -= 5 + (slvl*2);
	cooldown = 0;
}
cooldown++;

deathcool++;
if (place_meeting(x,y,obj_sword)&&deathcool>=12) {
	hp-=obj_player.str;
	deathcool=0;
}
if (hp<=0) {
	scr_plr_lvl();
	instance_destroy();
}
if (distance_to_object(obj_player) < 500) {
	if(counter>=60) {
		instance_create_layer(x,y,"Instances",obj_skel_Arrow);
		counter=0;
	}
}
counter++;
if (obj_player.x < x) image_xscale = 1;
else image_xscale = -1;

if (place_meeting(x,y,obj_player) && cooldown >= time) {
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
	obj_player.exper++;
	instance_destroy();
}
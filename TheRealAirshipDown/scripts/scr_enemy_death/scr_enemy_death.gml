
if (place_meeting(x,y,obj_player) && cooldown >= 10) {
	obj_player.hp -= 5 + (slvl*2);
	cooldown = 0;
}
cooldown++;

deathcool++;
if (place_meeting(x,y,obj_sword)&&deathcool>=12) {
	hp-=5;
	deathcool=0;
}
if (hp<=0) instance_destroy();
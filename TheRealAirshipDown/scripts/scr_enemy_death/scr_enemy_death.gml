
if (place_meeting(x,y,obj_player) && cooldown >= time) {
	obj_player.hp -= 5 + (slvl*2);
	cooldown = 0;
}
cooldown++;

deathcool++;
if (place_meeting(x,y,obj_sword)&&deathcool>=14) {
	hp-=obj_player.str;
	deathcool=0;
}
if (place_meeting(x,y,obj_player_fire)&&deathcool>=12) {
	hp-=obj_player.str*4;
	obj_player_fire.damage = true;
	deathcool=0;
}
if (hp<=0) {
	obj_player.exper++;
	instance_destroy();
}
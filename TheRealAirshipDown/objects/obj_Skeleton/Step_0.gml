/// @description Insert description here
// You can write your code in this editor
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
	instance_destroy(obj_skel_detection);
	instance_destroy();
	
}

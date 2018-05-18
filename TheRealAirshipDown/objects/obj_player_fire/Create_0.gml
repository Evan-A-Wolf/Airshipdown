/// @description Insert description here
// You can write your code in this editor
d = obj_player.dirc;
image_xscale = d;
if(d>0){
	direction = 1;
}else direction = 180;
if (place_meeting(x,y,obj_wall)) {
	instance_destroy();
}
damage = false;
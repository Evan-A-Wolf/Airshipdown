
if(place_meeting(x,y,obj_wall)){
	alarm[0] = 12;
	sprite_index = debug_sprite_arrwBreak;
	instance_destroy();
}
if(place_meeting(x,y,obj_player)) {
	obj_player.hp-=12;
	instance_destroy();
}

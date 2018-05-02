/// @description 
script_exists(scr_player_movment());
var skey = keyboard_check(vk_space);
if (hp <= 0){
	game_load("roomsave.txt");
	
}
// Sowrd swing
ison += 1;
limit = 11;
if (skey && ison >= limit) {
	instance_create_depth(x,y,-10, obj_sword);
	if (dirc == 1) obj_sword.image_xscale = 1;
	if (dirc == -1) obj_sword.image_xscale = -1;
	ison = 0;
}
if(keyboard_check(ord("X"))){
	game_save("MCPlatypus.dat");
}
if(keyboard_check(ord("Z"))){
	game_load("MCPlatypus.dat");
}
if (place_meeting(x,y,obj_health)&&healCool<=0) {
	healCool = 5;
	if (hp+25 <= hpMax)	hp+=25;
	else hp = hpMax;
	
}
//lvl up
if(exper>=(lvl*10)){
	lvl++;
	exper=0;
	hp+=10;
	hpMax+=10;
	str++;
}
healCool--;
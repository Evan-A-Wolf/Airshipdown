/// @description 
script_exists(scr_player_movment());
var skey = keyboard_check(vk_space);
var attack = mouse_check_button(mb_left);
var magic = mouse_check_button(mb_right);
if (hp <= 0){
	game_load("roomsave.txt");
	
}
if(mouse_check_button_pressed(mb_middle)){
	if(mp>=10){
		if(hp+(hpMax/4) < hpMax){
			hp+=hpMax/4;
		}else{
			hp=hpMax;	
		}
		mp-=20;
	}
}
// Sowrd swing
ison += 1;
limit = 11;
if (attack && ison >= limit) {
	instance_create_depth(x,y,-10, obj_sword);
	if (dirc == 1) obj_sword.image_xscale = 1;
	if (dirc == -1) obj_sword.image_xscale = -1;
	ison = 0;
}
if (magic && ison >= 60 && mp >= 0) {
	instance_create_depth(x,y,-10,obj_player_fire);
	mp -= 10;
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
if (place_meeting(x,y,obj_fullPot)&&healCool<=0) {
	healCool = 5;
	hp = hpMax;
	
}
if (place_meeting(x,y,obj_manaPot)&&healCool<=0) {
	healCool = 5;
	if (mp+50 <= maxMp)	mp+=50;
	else mp = maxMp;
}

image_speed = 0.2;
//lvl up
if(exper>=(lvl*10)&&class==0){
	lvl++;
	exper=0;
	hp+=10;
	hpMax+=10;
	str+=(5*lvl);
}else if(exper>=(lvl*5)&&class==1){
	lvl++;
	exper=0;
	hp+=1;
	hpMax+=5;
	str+=(4*lvl);
}else if(exper>=(lvl*11)&&class==2){
	lvl++;
	exper=0;
	hp+=10;
	hpMax+=10;
	str+=(3*lvl);
}
healCool--;
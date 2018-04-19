if(cooldown>=10){
	obj_player.hp -= brdDmg;
	cooldown = 0;
}
brdHlth-=brdDmg;
brdVspd = 0 - brdVspd;
brdHspd = 0 - brdHspd;
x+=brdHspd;
y+=brdVspd;
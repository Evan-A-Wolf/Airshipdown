if(mp>20){
	var toHeal = hp+(hpMax/2);
	if(toHeal<hpMax){
		hp+=(hpMax/2);
	}else{
		hp=hpMax;	
	}
	
	mp -= 20;
}
/// @description Visual code
draw_self();
pc = (hp/100) * 100;

if(class==0){
	xp = (exper/(lvl*10))*100
}else if(class==1){
	xp = (exper/(lvl*5))*100
}else{
	xp = (exper/(lvl*11))*100
}
draw_healthbar(x-50, y-50, x+50, y-70, pc, c_black, c_red, c_lime, 0, true, true);
draw_healthbar(x-25, y-25, x+25, y-35, xp, c_black, c_blue, c_aqua, 0, true, true);
draw_set_font(font0);
draw_text(x-25,y-50,"LVL:"+string(lvl));
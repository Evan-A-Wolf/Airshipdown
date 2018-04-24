/// @description Visual code
draw_self();
pc = (hp/maxhp)*100;
draw_healthbar(x-10, y-10, x+10, y-20, pc, c_black, c_gray, c_red, 0, true, true);
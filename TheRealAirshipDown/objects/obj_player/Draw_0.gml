/// @description Visual code
draw_self();
pc = (hp/100) * 100;
draw_healthbar(x-50, y-50, x+50, y-70, pc, c_black, c_red, c_lime, 0, true, true);
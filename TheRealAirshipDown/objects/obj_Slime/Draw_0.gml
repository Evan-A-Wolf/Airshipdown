/// @description Visual code
draw_self();
pc = (hp/(20+(slvl*2))) * (20+(slvl*2));
draw_healthbar(x+10, y-10, x+20, y-20, pc, c_black, c_orange, c_red, 0, true, true);
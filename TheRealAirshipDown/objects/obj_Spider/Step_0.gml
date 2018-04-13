/// @description Insert description here
// You can write your code in this editor
///players movement
// check for ground



if (!place_meeting(x+sign(32),y,obj_wall)) {
	dirc = irandom_range(-1,1);
	vspd = dirc*mspd;
}









if (place_meeting(x,y+1,obj_wall)) {
	airjump = 1;
	vspd = 0;
	// jumping
	if (jkey) {
		vspd = -jspd;
	}
} else {
	// gravity
	if (vspd < 10) {
		vspd += grav;
	}
	if (keyboard_check_released(vk_up) && vspd < -4) {
		vspd = -4;
	}
}
// Moveing right
if (rkey) {
	if (hspd < spd) {
		hspd += fric;
	} else {
		hspd = spd;
	}
	// left wall jump
}
// moving left
if (lkey) {
	if (hspd > -spd) {
		hspd -= fric;
	} else {
		hspd = -spd;
	}
	// right wall jump
	if (place_meeting(x+1, y, obj_wall) && !place_meeting(x, y+1, obj_wall) && !rkey)
	vspd = -jspd;
}
// check for idle
if ((!lkey && !rkey) || (lkey && rkey)) {
	if (hspd != 0) {
		if (hspd < 0) {
			hspd += fric;
		} else {
			hspd -= fric;
		}
	}
}
//Horizontal collisons
if (place_meeting(x+hspd, y, obj_wall)) {
	while (!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
}
// Move horizontally
x += hspd;
//     Vertical collisons
if (place_meeting(x, y+vspd, obj_wall)) {
	while (!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
}
// move vertically
y += vspd;
// flip direction
if hspd > 1 {
	dirc = 1;
} else if hspd < -1 {
	dirc = -1;
} else {
	image_xscale = 1;
}
image_xscale = dirc;
script_exists(scr_enemy_death());
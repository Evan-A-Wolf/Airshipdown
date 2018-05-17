///players movement
var rkey = keyboard_check(vk_right) || keyboard_check(ord("D"));
var lkey = keyboard_check(vk_left) || keyboard_check(ord("A"));
var jkey = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
var ekey = keyboard_check(ord("e"));
// check for ground
if (place_meeting(x,y+1,obj_wall)) {
	airjump = 1;
	vspd = 0;
	sprite_index = spr_player_temp;
	// jumping
	if (jkey) {
		vspd = -jspd;
		sprite_index = spr_player_jump;
	}
} else {
	// gravity
	if (vspd < 10) {
		vspd += grav;
	}
	if (keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) || keyboard_check_released(vk_space) && vspd < -4) {
		vspd = -4;
	}
	// check for air jump
	//if (airjump > 0) {
		//if (jkey) {
			//vspd = -jspd;
			//airjump -= 1;			
		//}
	//}
}
// Moveing right
if (rkey) {
	sprite_index = spr_player_run;
	if (hspd < spd) {
		hspd += fric;
	} else {
		hspd = spd;
	}
	// left wall jump
	if (place_meeting(x-1, y, obj_wall) && !place_meeting(x, y+1, obj_wall) && !lkey)
		vspd = -jspd;
}
// moving left
if (lkey) {
	sprite_index = spr_player_run;
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
	if (vspd == 0 && jkey) {
		sprite_index = spr_player_temp;
	}
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
}else if(place_meeting(x+hspd, y, obj_door_dirt)){
	while (!place_meeting(x+sign(hspd), y, obj_door_dirt)) {
		x += sign(hspd);
	}
	hspd = 0;
}else if(place_meeting(x+hspd, y, obj_wall_slime)){
	while (!place_meeting(x+sign(hspd), y, obj_wall_slime)) {
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
}else if (place_meeting(x, y+vspd, obj_door_dirt)) {
	while (!place_meeting(x, y+sign(vspd), obj_door_dirt)) {
		y += sign(vspd);
	}
	vspd = 0;
}else if (place_meeting(x, y+vspd, obj_wall_slime)) {
	while (!place_meeting(x, y+sign(vspd), obj_wall_slime)) {
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
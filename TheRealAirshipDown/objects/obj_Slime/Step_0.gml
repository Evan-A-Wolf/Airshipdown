/// @description Things to be done with each tick.
// Jumping sprite change


if(object_exists(obj_player)) {
	if (!canjump && count <= (70+irandom_range(-5,5))-slvl) {
		count++;
	}
	else {
		canjump = true;
	}
	if obj_player.x >= x {
		pdirc = 1;
	} else if obj_player.x < x {
		pdirc = -1;
	}
	if (place_meeting(x,y+1,obj_wall) && !place_meeting(x,y,obj_player)) {
	vspd = 0;
	hspd = 0;
	// jumping
	if (canjump == true) {
		sprite_index = spr_SlimeJ;
		vspd = -jspd;
		hspd = mspd*dirc;
		canjump = false;
		count = 0;
		y+=vspd;
	}
} else {
	// gravity
	if (vspd < 10) {
		vspd += grav;
		hspd = mspd*pdirc;
	}
	if (vspd < -7) {
		vspd = -7 ;
		hspd = mspd*pdirc;
	}
}
//Horizontal collisons
if (place_meeting(x+hspd, y, obj_wall)) {
	while (!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
	
	sprite_index = spr_Slime;
	
}
// Move horizontally
if (place_meeting(x,y,obj_player)) hspd = 0; canjump = 0;
x += hspd;
//     Vertical collisons
if (place_meeting(x, y+vspd, obj_wall)) {
	while (!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
	if(slvl>10){
		sprite_index = spr_SlimePurple;
	}else
		sprite_index = spr_Slime;
	
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
}

// player death
script_exists(scr_enemy_death());
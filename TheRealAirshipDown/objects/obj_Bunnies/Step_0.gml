/// @description Things to be done with each tick.
// Jumping sprite change
if (!canjump && count <= 30-slvl) count++;
else canjump = true;
if(object_exists(obj_player)) {
	
	if (place_meeting(x,y+1,obj_wall) && !place_meeting(x,y,obj_player)) {
	vspd = 0;
	hspd = 0;
	// jumping
	if (canjump == true) {
		pdirc = irandom_range(-1,1);
		if(pdirc == 0){
			pdirc = -1;
		}
		vspd = -jspd;
		hspd = mspd*dirc;
		canjump = false;
		count = 0;
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
}
// move vertically
y += vspd;
// flip direction
if hspd > 1 {
	dirc = 1;
} else if hspd < -1 {
	dirc = -1;
} else {
	image_xscale = 0.5;
}
image_xscale = 0.5*dirc;
}

deathcool++;
if (place_meeting(x,y,obj_sword)&&deathcool>=12) {
	hp-=5;
	deathcool=0;
}
if (hp<=0) {
	global.bunsKilled++;
	instance_destroy();
}
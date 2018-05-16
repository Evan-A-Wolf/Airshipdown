//if (!canjump && count <= 70-slvl) count++;
//else canjump = true;
if(object_exists(obj_player)) {
	if obj_player.x >= x {
		pdirc = 1;
	} else if obj_player.x < x {
		pdirc = -1;
	}
	if (place_meeting(x,y,obj_s_changedirc)) {
		dirc *= -1;
		vspd *= -1;
	}
	if (place_meeting(x,y+1,obj_wall)) {
	hspd = mspd*dirc;
	// jumping
} else {
	// gravity
	if (vspd < 10) {
		vspd += grav;
		hspd = mspd*dirc;
	}
	if (vspd < -7) {
		vspd = -7 ;
		hspd = mspd*dirc;
	}
}

//Horizontal collisons
if (place_meeting(x+hspd, y, obj_wall)) {
	while (!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
	vspd = -jspd;
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
} else instance_destroy();

// player death

if (place_meeting(x,y,obj_player) && cooldown >= time) {
	obj_player.hp -= 5 + (slvl*2);
	cooldown = 0;
}

cooldown++;
if (distance_to_object(obj_player) < 500) {
	if(count>=60) {
		instance_create_layer(x,y,"Instances",obj_s_shot);
		count=0;
	}
}
count++;
deathcool++;
if (place_meeting(x,y,obj_sword)&&deathcool>=12) {
	hp-=obj_player.str;
	deathcool=0;
}
if (place_meeting(x,y,obj_player_fire)&&deathcool>=12) {
	hp-=obj_player.str*2;
	deathcool=0;
}
if (hp<=0) {
	scr_plr_lvl();
	instance_destroy();
}
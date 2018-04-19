/// @description Insert description here
// You can write your code in this editor
///players movement
// check for ground



if (object_exists(obj_player)) {
	 
	hspd = dirc*mspd;
	
} if (!place_meeting(x+sign(32),y,obj_wall)) {
	vspd = -jspd;
	if (vspd < 10) {
		vspd += grav;
	}
}
x += hspd;
y += vspd;
script_exists(scr_enemy_death());
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
script_exists(scr_player_movment());
var skey = keyboard_check(vk_space);
if (hp <= 0) room_restart();
// Sowrd swing
ison += 1;
limit = 11;
if (skey && ison >= limit) {
	instance_create_depth(x,y,-10, obj_sword);
	if (dirc == 1) obj_sword.image_xscale = 1;
	if (dirc == -1) obj_sword.image_xscale = -1;
	ison = 0;
}

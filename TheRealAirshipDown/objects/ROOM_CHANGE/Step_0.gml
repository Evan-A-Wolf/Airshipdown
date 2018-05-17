/// @description Insert description here
// You can write your code in this editor
var ekey = keyboard_check(vk_enter);

if (ekey && (room==rm_title || room = rm_pick_class)) {
	room_goto_next();
}
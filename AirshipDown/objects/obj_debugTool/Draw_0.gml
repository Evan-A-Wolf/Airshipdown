/// @description Check Slime (grn) status.
if(object_exists(obj_grnSlime)){
	draw_text(100,100, "grnSlime Jump delay status: "+string(obj_grnSlime.slm_jumpDelay));
}else{
	draw_text(100,100, "grnSlime not in room");
}
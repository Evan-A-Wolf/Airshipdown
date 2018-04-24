/// @description Insert description here
// You can write your code in this editor
if (object_exists(obj_player)) {
if(place_meeting(x,y,obj_player)&&counter>=60) {
	instance_create_layer(x,y,"Instances",obj_s_shot);
	counter=0;
}
counter++;
x = obj_Spider.x;
y = obj_Spider.y;
}
else {
	instance_destroy();
}
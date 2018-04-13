/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_detection);
slvl = obj_player.lvl;
hp = 20 + (slvl*2);
dmg = 10 + (slvl*4);
cooldown = 0;
deathcool = 0;
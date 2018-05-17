
image_alpha = 0.7;

slvl = obj_player.lvl;

canjump = false;
count = 0;
grav = 1;
spd = 6;
jspd = 20;
mspd = 6;
hspd = 0;
vspd = 0;
airjump = 0;
fric = 1;
dirc = 1;
pdirc = 1;

time = 15;

deathcool = 0;
cooldown = 0;
maxhp = 15 + (slvl*5);
hp = 15 + (slvl*5);

if(slvl>10){
	sprite_index = spr_SlimePurple;
}
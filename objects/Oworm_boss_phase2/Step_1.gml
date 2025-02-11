/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
	instance_create_layer(x,y,"Enemies",Oicesuit);
	global.worm_boss_phase2 = 0;
}
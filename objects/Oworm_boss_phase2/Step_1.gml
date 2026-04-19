/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
	instance_create_layer(5008,3696,"Enemies",Oicesuit);
	global.worm_boss_phase2 = 0;
}

if global.worm_boss_phase2 == 0
{
	instance_destroy();
}
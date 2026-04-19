/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_change(Orobot_death_1,true);
	global.turret_boss = 0;
}

if global.turret_boss == 0
{
	instance_destroy();
}
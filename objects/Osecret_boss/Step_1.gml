/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
	instance_destroy(Osecret_boss_weapon);
	global.secret_boss = 0;
	
}
if global.secret_boss == 0
{
	instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy(Oworm_boss_phase3);
	instance_destroy(OLocked_Area);
	global.worm_boss_phase3 = 0;
}
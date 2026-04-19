/// @description Insert description here
// You can write your code in this editor
if hp <= 0
{
	global.final_boss_phase3 = 0;
	instance_destroy();
}
if global.final_boss_phase3 == 0
{
	instance_destroy();
}

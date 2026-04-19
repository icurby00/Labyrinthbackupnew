/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_phase1 = 0;
	instance_change(Oboss_phase2,true);
	
}

if global.Oboss_phase3 == 0
{
	instance_destroy();
}
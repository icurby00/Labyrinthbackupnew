/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_phase3 = 0;
	instance_destroy();
	
}
if (global.Oboss_phase3 = 0)
{
	instance_create_layer(x,y,"Player",Ohealthup);
	instance_create_layer(x,y,"Player",Oprosuit);
	
}
if (!instance_exists(Oboss_phase3) && global.Oboss_phase2 = 0)
{
	instance_destroy(Oenergyball);
}
/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_air = 0;
	instance_create_layer(1840,1968,"Player",Ohealthup);
}
if (global.Oboss_air == 0 )
{
	instance_destroy();
	
}
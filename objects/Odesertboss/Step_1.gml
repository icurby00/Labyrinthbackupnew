/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_desert = 0;
	instance_destroy();
	
}
if (global.Oboss_desert = 0)
{
	instance_create_layer(x,y,"Player",Oredbulletpickup);
	instance_create_layer(x,y,"Player",Ohealthup);
}


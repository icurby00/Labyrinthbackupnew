/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_horror = 0;
	instance_destroy();
	
}
if (global.Oboss_horror = 0)
{
	instance_create_layer(x,y,"Player",Ogreenbulletpickup);
	instance_create_layer(x,y,"Player",Ohealthup);
}










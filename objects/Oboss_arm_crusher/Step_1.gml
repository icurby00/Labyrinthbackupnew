/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.Oboss_crusher = 0;
	instance_destroy();
	instance_create_layer(x,y,"Enemies",Oboss_arm_air);
	
}
if (global.Oboss_crusher == 0)
{
	instance_destroy();
}
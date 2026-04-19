/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_create_layer(x,y,"Enemies",Ofloating_robot_unarmoured);
	instance_destroy();
}

if global.floating_robot == 0
{
	instance_destroy();
}
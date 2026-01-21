/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	instance_create_layer(x+720,y+240,"Enemies",Ogravity_bot);
	instance_destroy(Oboss_trigger7);
}
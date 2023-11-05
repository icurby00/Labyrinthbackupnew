/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	instance_create_layer(x+600,y-350,"Enemies",Odesertboss);
	instance_destroy(Oboss_trigger);
}

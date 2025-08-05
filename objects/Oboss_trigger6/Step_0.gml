/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	instance_create_layer(x+1408,y+144,"Enemies",Ohorror_creature_intro);
	instance_destroy(Oboss_trigger6);
}
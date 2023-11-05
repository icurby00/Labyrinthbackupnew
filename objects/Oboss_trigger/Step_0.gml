/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	instance_create_layer(x-80,y-70,"Enemies",Oboss_phase1);
	instance_destroy(Oboss_trigger);
}
if (global.Oboss_phase3 = 0) 
{
	instance_destroy(Oboss_trigger);
}
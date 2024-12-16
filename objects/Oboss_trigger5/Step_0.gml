/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	instance_create_layer(x + 2000,y - 1200,"Enemies",Oworm_boss_phase1);
	instance_destroy(Oboss_trigger5);
}
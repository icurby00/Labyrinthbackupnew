/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	if (instance_exists(Oboss_warp1))
	{
		with (Oboss_warp1)
		{
	instance_create_layer(x,y,"Enemies",Ohorror_boss_phase1);
		}
	}
}








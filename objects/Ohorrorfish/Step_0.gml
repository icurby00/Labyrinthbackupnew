/// @description Insert description here
// You can write your code in this editor
if (instance_exists(Oplayer))
{
	hsp += sign(Oplayer.x - x) * accel_force;
	vsp += sign(Oplayer.y - y) * accel_force;
}
if (limit_speed)
{
	hsp = clamp(hsp, -max_speed, max_speed);
	vsp = clamp(vsp, -max_speed, max_speed);
}
	// collide
if (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x+sign(hsp),y,[ground1, ground2, ground3, ground4, Ograss]))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;


//Vertical Collison
if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss]))
	{
		y = y + sign(vsp);
	}
	vsp = -vsp;
}
if (hsp != 0 )
{
image_xscale = sign(hsp);
}



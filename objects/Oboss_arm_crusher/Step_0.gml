/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case boss_crusher.waiting: {
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 3;
		}
		
		break;
		
	}
	case boss_crusher.seeking: {
		if (instance_exists(Oplayer))
{
	hsp += sign(Oplayer.x - x) * accel_force;
}
if (limit_speed)
{
	hsp = clamp(hsp, -max_speed, max_speed);
}
if (player_detected())
	hsp = 0;
{
	if (alarm[1] == -1) {
			alarm[1] = room_speed * 0.5;
		}
}
		
	}
	case boss_crusher.falling: {
		
		vsp += grv;
		
		if (alarm[2] == -1) {
			if (place_meeting(x,y +1, Ograss)){
				alarm[2] = room_speed;
				
			}
			
		}
		
		break;
		
	}
	case boss_crusher.rising: {
		vsp += -grv;
		vsp = clamp(vsp, -2, 0);
		
		if (place_meeting(x, y - 1, Ograss)) state = boss_crusher.waiting;
		
		break;
		
	}
	
	
	
}
if (place_meeting(x+hsp,y,Ograss))
{
	while (!place_meeting(x+sign(hsp),y,Ograss))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collison
if (place_meeting(x,y+vsp,Ograss))
{
	while (!place_meeting(x,y+sign(vsp),Ograss))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
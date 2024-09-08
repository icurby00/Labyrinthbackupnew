/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case boss_air.waiting: {
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 3;
		}
		
		break;
		
}
	case boss_air.movement: {
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
	if (player_detected())
	hsp = 0;
{
	if (alarm[1] == -1) {
			alarm[1] = room_speed * 0.5;
		}
}

}
	case boss_air.falling: {
		vsp += grv;
		
		if (alarm[2] == -1) {
			if (place_meeting(x,y +1, Ograss)){
				alarm[2] = room_speed;
				
			}
			
		}
		
		break;
		
}
	case boss_air.shooting: {
		if (energy == 0) energy = 10
        if (alarm[3] == -1)
        {
            alarm[3] = room_speed * 0.25;
            energy--;
        }
        if(energy == 0) state = boss_air.rising;
	}
	
	case boss_air.rising: {
		vsp += -grv;
		vsp = clamp(vsp, -2, 0);
		
		if (place_meeting(x, y - 1, [ground1, ground2, ground3, ground4, Ograss])) state = boss_air.waiting;
		
		break;
	}
	



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
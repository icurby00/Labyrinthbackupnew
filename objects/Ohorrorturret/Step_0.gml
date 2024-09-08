/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case horrorturret.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 2;
		}
	break;
	}
	case horrorturret.attack:
	{
		if (energy == 0) energy = 15
		
        if (alarm[1] == -1)
        {
			sprite_index = spr_horrorturret;
            alarm[1] = room_speed * 3;
            energy--;
        }
        if(energy == 0) state = horrorturret.idle;
		
	}
}

//Vertical Collison
if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss]))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
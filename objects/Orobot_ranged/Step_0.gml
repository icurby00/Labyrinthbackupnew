/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case ROBOT_RANGED.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed;
		}
		
	}break;
	case ROBOT_RANGED.movement:
	{
		walkspd = 3;
	
		if (hsp != 0 && place_meeting(x + hsp, y, [ground1, ground2, ground3, ground4, Ograss]) 
    || place_meeting(x + hsp, y, Oenemyblock))
{
    while (hsp != 0 && !place_meeting(x + sign(hsp), y, [ground1, ground2, ground3, ground4, Ograss]) 
           && !place_meeting(x + sign(hsp), y, Oenemyblock))
    {
        x += sign(hsp);
    }
    hsp = -hsp;
}
x += hsp;

		
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[2] == -1) {
			alarm[2] = room_speed;
		}
	}break;
	case ROBOT_RANGED.firing:
	{
		if (energy == 0) energy = 7;
		if (alarm[1] == -1)
        {
            alarm[1] = room_speed * 2;
            energy--;
        }
		if energy == 0 
		{
			state = ROBOT_RANGED.idle;
		}
		
		
	}
	
	
}

vsp = vsp + grv;


			


		//Vertical Collison
		if (vsp != 0 && place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss]))
{
    while (vsp != 0 
           && !place_meeting(x, y + sign(vsp), [ground1, ground2, ground3, ground4, Ograss]))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

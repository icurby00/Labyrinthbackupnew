/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case FLOATING_ROBOT.idle:
	{
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
		
	}break;
	
	case FLOATING_ROBOT.ranged_attack1:
	{
		if (energy == 0) energy = 10
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
			energy--;
		}
		if (energy == 0) state = FLOATING_ROBOT.recovery;
	}break;
	
	case FLOATING_ROBOT.ranged_attack2:
	{
		if (energy == 0) energy = 10
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 1.5;
			energy--;
		} 
		if (energy == 0) state = FLOATING_ROBOT.recovery;
	}break;
	
	case FLOATING_ROBOT.recovery:
	{
		if alarm[3] == -1
		{
			alarm[3] = room_speed * 3;
		}
		
		
	}break;
	
	case FLOATING_ROBOT.bombardment:
	{
		if (energy == 0) energy = 30
		if (alarm[4] == -1)
		{
			alarm[4] = room_speed * 1.5;
			energy--;
		}
		if (energy == 0) state = choose(FLOATING_ROBOT.idle, FLOATING_ROBOT.change);
	}break;
	case FLOATING_ROBOT.change:
	{
		global.enemyhp = hp;
		if (alarm[5] == -1)
		{
			alarm[5] = room_speed * 1.5;
		}
		
	}
	
	
	
}



// collide
// collide
if (hsp != 0 && (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss]) or (place_meeting(x+hsp,y,Oenemyblock))))
{
	while (hsp != 0 &&  (!place_meeting(x+sign(hsp),y,[ground1, ground2, ground3, ground4, Ograss]) and (!place_meeting(x+sign(hsp),y,Oenemyblock))))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;


//Vertical Collison
if (vsp != 0 && place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
{
	while (vsp != 0 &&(!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss])))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
if (hsp != 0 )
{
image_xscale = sign(hsp);
}

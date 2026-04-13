/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case FINAL_BOSS_PHASE3.idle:
	{
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
		
	}break;
	case FINAL_BOSS_PHASE3.attack1:
	{
		walkspd = 9;
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 4;
		}
		if (alarm[1] == 0)
		{
			state = choose(FINAL_BOSS_PHASE3.ranged_attack1, FINAL_BOSS_PHASE3.ranged_attack2, FINAL_BOSS_PHASE3.ranged_attack3);
		}
		
	}break;
	case FINAL_BOSS_PHASE3.attack2:
	{
		walkspd = 7;
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 4;
		}
		if (alarm[1] == 0)
		{
			state = choose(FINAL_BOSS_PHASE3.ranged_attack1, FINAL_BOSS_PHASE3.ranged_attack2, FINAL_BOSS_PHASE3.ranged_attack3);
		}
		
		
	}break;
	case FINAL_BOSS_PHASE3.ranged_attack1:
	{
		if (energy == 0) energy = 4;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 1.5;
			energy--;
		}
		if (energy == 0) state = FINAL_BOSS_PHASE3.bombardment; 
		
	}break;
	case FINAL_BOSS_PHASE3.ranged_attack2:
	{
		if (energy == 0) energy = 7;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 1;
			energy--;
		}
		if (energy == 0) state = FINAL_BOSS_PHASE3.bombardment; 
	}break;
	case FINAL_BOSS_PHASE3.ranged_attack3:
	{
		if (energy == 0) energy = 7;
		if (alarm[6] == -1)
		{
			alarm[6] = room_speed * 1;
			energy--;
		}
		if (energy == 0) state = FINAL_BOSS_PHASE3.bombardment; 
	}break;
	case FINAL_BOSS_PHASE3.bombardment:
	{
		if (energy == 0) energy = 12;
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed* 1.5;
			energy--;
		}
		if (energy == 0) state = FINAL_BOSS_PHASE3.charge;
	}break;
	case FINAL_BOSS_PHASE3.charge:
	{
		walkspd = 15;
		if place_meeting(x,y,Oplayer)
		{
			with Oplayer 
			{
				hp = hp -3;
			}
		}
		if (alarm[4] == -1)
		{
			alarm[4] = room_speed * 2;
		}
		if (alarm[4] == 0)
		{
			state = FINAL_BOSS_PHASE3.recovery;
		}
	}break;
	case FINAL_BOSS_PHASE3.recovery:
	{
		hp = hp + 5;
		if (alarm[5] == -1)
		{
			alarm[5] = room_speed * 2;
		}
		
	}break;
	
	
}// collide
if (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss]) or (place_meeting(x+hsp,y,Oenemyblock)))
{
	while (!place_meeting(x+sign(hsp),y,[ground1, ground2, ground3, ground4, Ograss]) and (!place_meeting(x+sign(hsp),y,Oenemyblock)))
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
	vsp = 0;
}
y = y + vsp;
if (hsp != 0 )
{
image_xscale = sign(hsp);
}
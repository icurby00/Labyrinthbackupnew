/// @description Insert description here
// You can write your code in this editor
switch(state) 
{
	case FINAL_BOSS_PHASE1.idle:
	{
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
		
	}break;
	case FINAL_BOSS_PHASE1.attack1:
	{
		walkspd = 8;
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
		}
	}break;
	case FINAL_BOSS_PHASE1.attack2:
	{
		walkspd = 10;
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
		}
	}break;
	case FINAL_BOSS_PHASE1.ranged_attack1:
	{
		if (energy == 0) energy = 4;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 1.5;
			energy--;
		} 
		if (energy == 0) state = FINAL_BOSS_PHASE1.bombardment;
	}break;
	case FINAL_BOSS_PHASE1.ranged_attack2:
	{
		if (energy == 0) energy = 4;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 1.5;
			energy--;
		} 
		if (energy == 0) state = FINAL_BOSS_PHASE1.bombardment;
		
	}break;
	case FINAL_BOSS_PHASE1.bombardment:
	{
		if (energy == 0) energy = 7;
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed * 1.5;
			energy--;
		} 
		if (energy == 0) state = FINAL_BOSS_PHASE1.recovery;
	}break;
	case FINAL_BOSS_PHASE1.recovery:
	{
		if (alarm[4] == -1)
		{
			alarm[4] = room_speed * 2;
		}
		
	}break;
}


vsp = vsp + grv;


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
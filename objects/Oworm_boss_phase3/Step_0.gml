/// @description Insert description here
// You can write your code in this editor
hsp = clamp(hsp, -8, 8);
vsp = clamp(vsp, -8, 8);

switch(state)
{
	case BOSS_ROBOT_WORM_PHASE3.idle:
	{
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.movement:
	{
			// collide
	if (hsp != 0 && (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss])))
		{
			var _limit = abs(hsp);
	repeat (_limit) {
	    if (!place_meeting(x+sign(hsp), y,[ground1, ground2, ground3, ground4, Ograss])) {
	        x += sign(hsp);
	    } else break;
	}

		hsp = -hsp;
	}
	x = x + hsp;


	//Vertical Collison
	if (vsp != 0 && place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
			var _limit = abs(vsp);
	repeat (_limit) {
	    if (!place_meeting(x, y+sign(vsp), [ground1, ground2, ground3, ground4, Ograss])) {
	        y += sign(vsp);
	    } else break;
	}

		vsp = 0;
	}
	y = y + vsp;

		if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.attack1:
	{
		if (energy == 0) energy = 3; 
		
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 5;
			energy--;
		}
		if (energy == 0) state = BOSS_ROBOT_WORM_PHASE3.recovery; 
		
	
	}break;
	case BOSS_ROBOT_WORM_PHASE3.recovery:
	{
		
		if (alarm[4] == -1)
		{
			alarm[4] = room_speed * 2;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.attack2:
	{
		if (energy == 0) energy = 3; 
		
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed * 3.5;
			energy--;
		}
		if (energy == 0) state = BOSS_ROBOT_WORM_PHASE3.buff;
		
	}break;
	case BOSS_ROBOT_WORM_PHASE3.buff:
	{
		
		if (alarm[5] == -1)
			{
				alarm[5] = room_speed * 2;
				
			}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.attack3:
	{
		if (energy == 0) energy = 3; 
		
		if (alarm[6] == -1)
			{
				alarm[6] = room_speed * 2;
				energy--;
			}
			if (energy == 0) state = BOSS_ROBOT_WORM_PHASE3.charge;
			// collide
	if (hsp != 0 && (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss])))
	{
			var _limit = abs(hsp);
	repeat (_limit) {
	    if (!place_meeting(x+sign(hsp), y, [ground1, ground2, ground3, ground4, Ograss])) {
	        x += sign(hsp);
	    } else break;
	}

		hsp = -hsp;
	}
	x = x + hsp;


	//Vertical Collison
	if (vsp != 0 && place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
			var _limit = abs(vsp);
	repeat (_limit) {
	    if (!place_meeting(x, y+sign(vsp), [ground1, ground2, ground3, ground4, Ograss])) {
	        y += sign(vsp);
	    } else break;
	}

		vsp = 0;
	}
	y = y + vsp;

		if (hsp != 0 ) image_xscale = sign(hsp);
		
	}break;
	case BOSS_ROBOT_WORM_PHASE3.charge:
	{
		if (energy == 0) energy = 3; 
		if (alarm[7] == -1)
			{
				alarm[7] = room_speed * 2.5;
				energy--;
			}
			if (energy == 0) state = BOSS_ROBOT_WORM_PHASE3.idle;
			// collide
	if (hsp != 0 && (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss])))
	{
			var _limit = abs(hsp);
	repeat (_limit) {
	    if (!place_meeting(x+sign(hsp), y, [ground1, ground2, ground3, ground4, Ograss])) {
	        x += sign(hsp);
	    } else break;
	}

		hsp = -hsp;
	}
	x = x + hsp;


	//Vertical Collison
	if (vsp != 0 && place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
			var _limit = abs(vsp);
	repeat (_limit) {
	    if (!place_meeting(x, y+sign(vsp), [ground1, ground2, ground3, ground4, Ograss])) {
	        y += sign(vsp);
	    } else break;
	}

		vsp = 0;
	}
	y = y + vsp;

		if (hsp != 0 ) image_xscale = sign(hsp);
		
	}break;
}
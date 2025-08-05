/// @description Insert description here
// You can write your code in this editor
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
		if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
		{
		while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
	}
		x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss]))
		{
			y = y + sign(vsp);
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
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		hp = hp + 80;
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		instance_create_layer(x+800,y,"Enemies",Olava_creature_unarmoured_boss)
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 5;
		}
		
	
	}break;
	case BOSS_ROBOT_WORM_PHASE3.recovery:
	{
		hp = hp + 100;
		if (alarm[4] == -1)
		{
			alarm[4] = room_speed * 2;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.attack2:
	{
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x,y-300,"Enemies",Oenergyball_worm)
		
	}break;
	case BOSS_ROBOT_WORM_PHASE3.buff:
	{
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		instance_create_layer(x+800,y,"Enemies",Oboss_flame)
		instance_create_layer(x+750,y,"Enemies",Oboss_flame)
		hsp = 20;
		if (alarm[5] == -1)
			{
				alarm[5] = room_speed * 2;
			}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.attack3:
	{
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		instance_create_layer(x+800,y,"Enemies",Oboss_flame)
		instance_create_layer(x+750,y,"Enemies",Oboss_flame)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x,y-300,"Enemies",Oenergyball_worm)
		if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
		{
		while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
	}
		x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss]))
		{
			y = y + sign(vsp);
		}
			vsp = 0;
		}
		y = y + vsp;
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[6] == -1)
			{
				alarm[6] = room_speed * 2;
			}
	}break;
	case BOSS_ROBOT_WORM_PHASE3.charge:
	{
		hsp = 12;
		instance_create_layer(x+704,y,"Enemies",Oboss_flame)
		instance_create_layer(x+800,y,"Enemies",Oboss_flame)
		instance_create_layer(x+750,y,"Enemies",Oboss_flame)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x+704,y,"Enemies",Oenergyball_worm)
		instance_create_layer(x,y-300,"Enemies",Oenergyball_worm)
		if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
		{
		while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
	}
		x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss]))
		{
			y = y + sign(vsp);
		}
			vsp = 0;
		}
		y = y + vsp;
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[7] == -1)
			{
				alarm[7] = room_speed * 2;
			}
	}break;
}
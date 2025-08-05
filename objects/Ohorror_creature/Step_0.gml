/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case HORROR_CREATURE_PHASE1.idle:
	{
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE1.movement:
	{
		vsp = vsp + grv;
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
		
		if place_meeting(x,y,Ojumpboss)
		{
			state = HORROR_CREATURE_PHASE1.jump;
		}
		
		if place_meeting(x,y,Oteleport)
		{
			state = HORROR_CREATURE_PHASE1.climb;
		}
	if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
		}
	
	}break;
	
	case HORROR_CREATURE_PHASE1.attack1:
	{
		while (energy > 0)
		{
			walkspd++;
			energy--;
		}
		if energy = 0
		{
			state = HORROR_CREATURE_PHASE1.recovery;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE1.attack2:
	{
		walkspd = 12;
		if place_meeting(x,y,Oplayer)
		{
			global.hp = global.hp -2;
		}
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed * 3;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE1.attack3:
	{
		if (energy == 0) energy = 4;
		if (alarm[4] == -1)
        {
            alarm[4] = room_speed * 2;
            energy--;
        }
		if (alarm[7] == -1)
		{
			alarm[7] = room_speed * 2;
		}

		
	}break;
	
	case HORROR_CREATURE_PHASE1.ranged_attack:
	{
		if (energy == 0) energy = 3;
		if (alarm[4] == -1)
        {
            alarm[4] = room_speed * 2;
            energy--;
        }
		if energy == 0 
		{
			state = HORROR_CREATURE_PHASE1.idle;
		}
		
		
	}break;
	
	case HORROR_CREATURE_PHASE1.heal:
	{
		hp = hp + 200;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 2;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE1.climb:
	{
		// Count how many teleport points exist
		var num_points = instance_number(Oboss_warp9);

			// Make sure there's at least one
			if (num_points > 0) {
			    // Pick a random index
			    var index = irandom(num_points - 1);
    
			    // Get that teleport point instance
			    var teleport_target = instance_find(Oboss_warp9, index);
    
			    // Move boss to its position
			    x = teleport_target.x;
			    y = teleport_target.y;
			}
			if (alarm[5] == -1)
			{
			alarm[5] = room_speed;
			}
		
		
		
	}break;
	
	case HORROR_CREATURE_PHASE1.jump:
	{
		vsp = -20;
		
		vsp = vsp + grv;
		if (alarm[6] == -1)
		{
			alarm[6] = room_speed ;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE1.recovery:
	{
		energy = 3;
		if energy = 3
		{
			state = HORROR_CREATURE_PHASE1.heal;
		}
		
	}break;
	
	
	
	
	
}
vsp = vsp + grv;
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
	
	show_debug_message(state);
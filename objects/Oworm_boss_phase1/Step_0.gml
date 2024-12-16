/// @description Insert description here
// You can write your code in this editor


switch(state)
{
	case BOSS_ROBOT_WORM_PHASE1.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 5;
		}
	}
	case BOSS_ROBOT_WORM_PHASE1.movement:
	{
	if path_index = -1 {	
		path_start(Path3,12,path_action_stop,true)
				if hp <= 700 
				{
				path_end()
				state = BOSS_ROBOT_WORM_PHASE1.attack1
				}				
	}
				
		
	
}
	
	case BOSS_ROBOT_WORM_PHASE1.attack1:
	{
		walkspd = 10; 
if (alarm[3] == -1) {
	alarm[3] = room_speed;
}
	if walkspd = 7 {
		if (alarm[2] == -1) {
			alarm[2] = room_speed * 5;
		}
	}
if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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
	}
	case BOSS_ROBOT_WORM_PHASE1.attack2:
	{
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	case BOSS_ROBOT_WORM_PHASE1.recovery:
	{
		
		if (alarm[4] == -1) {
			alarm[4] = room_speed * 5;
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

































//animation
if (!place_meeting(x,y+1, [ground1, ground2, ground3, ground4, Ograss]))
{
	sprite_index = spr_robot_worm_boss;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_robot_worm_boss;
	}
	else
	{
		sprite_index = spr_robot_worm_boss;
	}
	
}

if (hsp != 0 ) image_xscale = sign(hsp);

}
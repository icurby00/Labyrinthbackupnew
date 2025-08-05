/// @description Insert description here
// You can write your code in this editor


switch(state)
{
	case BOSS_ROBOT_WORM_PHASE2.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 5;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE2.movement:
	{ 	
		if (!place_meeting(x,y+1, [ground1, ground2, ground3, ground4, Ograss]))
{
	sprite_index = spr_robot_worm_boss_phase2;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_robot_worm_boss_phase2
	}
	else
	{
		sprite_index = spr_robot_worm_boss_phase2
	}
	
}
			if (alarm[1] == -1) {
				alarm[1] = room_speed * 6;
		}
		
		
		//animation


		if (hsp != 0 ) image_xscale = sign(hsp);


			
			
						
		

}break;
	
	case BOSS_ROBOT_WORM_PHASE2.attack1:
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
	if (alarm[2] == -1) {
			alarm[2] = room_speed * 2;
		}
	
	}break;
	case BOSS_ROBOT_WORM_PHASE2.attack2:
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
		
		if (alarm[6] == -1) {
			alarm[6] = room_speed * 3;
			}
		
		
		
	}break;
	case BOSS_ROBOT_WORM_PHASE2.recovery:
	{
		
		if (alarm[4] == -1) {
			alarm[4] = room_speed * 5;
		
		
		
		
	}break;
	
	
	
	
	
	
}



}
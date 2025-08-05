/// @description Insert description here
// You can write your code in this editor


switch(state)
{
	case BOSS_ROBOT_WORM_PHASE1.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed;
		}
	}break;
	case BOSS_ROBOT_WORM_PHASE1.movement:
	{ 	
		if path_position = path_action_stop
		{
		path_start(Path3,12,path_action_stop,true)
		}
		 else if path_position = 1
		{
			path_end()
			if (alarm[1] == -1) {
				alarm[1] = room_speed;
		}
		}
		
		//animation


		if (hsp != 0 ) image_xscale = sign(hsp);
		


			
			
						
		

}break;
	
case BOSS_ROBOT_WORM_PHASE1.attack1:
	{
vsp = vsp + grv;
if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Oenemyblock]))
{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Oenemyblock]))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Oenemyblock]))
{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Oenemyblock]))
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
	case BOSS_ROBOT_WORM_PHASE1.attack2:
	{
		vsp = vsp + grv;
		if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Oenemyblock]))
	{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Oenemyblock]))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
	}
	x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Oenemyblock]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Oenemyblock]))
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
	case BOSS_ROBOT_WORM_PHASE1.recovery:
	{
		
		if (alarm[4] == -1) {
			alarm[4] = room_speed * 3;
	}
	
	
	
	
	
	
	}break;
	case BOSS_ROBOT_WORM_PHASE1.movement2:
	{
		vsp = vsp + grv;

		if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Oenemyblock]))
	{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Oenemyblock]))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
	}
	x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Oenemyblock]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Oenemyblock]))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	}
	y = y + vsp;
	if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[5] == -1) {
			alarm[5] = room_speed * 3;
	}
		
	}



}
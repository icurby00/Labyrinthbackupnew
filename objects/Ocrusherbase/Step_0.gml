/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case crusherstate.waiting: {
		
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 3;
		}
		
		break;
		
	}
	
	case crusherstate.falling: {
		
		vsp += grv;
		
		if (alarm[1] == -1) {
			if (place_meeting(x,y +1, [ground1, ground2, ground3, ground4, Ograss])){
				alarm[1] = room_speed;
				
			}
			
		}
		
		break;
	}
	
	case crusherstate.rising: {
		
		vsp += -grv;
		vsp = clamp(vsp, -2, 0);
		
		if (place_meeting(x, y - 1, [ground1, ground2, ground3, ground4, Ograss])) state = crusherstate.waiting;
		
		break;
	}
	
	
	
	
}
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
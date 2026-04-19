/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case crusherstate.waiting: {
		
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 0.5;
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
		
		vsp -= grv;
		vsp = clamp(vsp, -2, 0);
		
		if (place_meeting(x, y - 1, [ground1, ground2, ground3, ground4, Ograss])) state = crusherstate.waiting;
		
		break;
	}
	
	
	
	
}

if (vsp > 0) 
{
 
    if (place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss]))
    {
       
        while (!place_meeting(x, y + 1, [ground1, ground2, ground3, ground4, Ograss]))
        {
            y += 1;
        }
        vsp = 0;
    }
}
else if (vsp < 0) 
{
   
    if (place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss]))
    {
      
        while (!place_meeting(x, y - 1, [ground1, ground2, ground3, ground4, Ograss]))
        {
            y -= 1;
        }
        vsp = 0;
    }
}

y += vsp;
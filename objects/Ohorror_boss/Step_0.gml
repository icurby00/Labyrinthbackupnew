/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case horrorboss.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 4;
		}
	
		break;
	}
	
	case horrorboss.attack:
	{
		if (energy == 0) energy = 12;
		
        if (alarm[2] == -1)
        {
            alarm[2] = room_speed * 2;
            energy--;
        }
        if(energy == 0) && (alarm[1] == -1) alarm[1] = room_speed;
		
		
		
		break;
	}
	
	case horrorboss.recovery:
	{
		if (alarm[3] == -1) {
			alarm[3] = room_speed * 3;
		
		
		
	break;	
	}
	
}




}




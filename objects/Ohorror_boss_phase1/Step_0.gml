/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case horrorboss_phase1.idle:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 4;
		}
	
		break;
	}
	
	case horrorboss_phase1.attack:
	{
		if (energy == 0) energy = 4;
		
        if (alarm[2] == -1)
        {
            alarm[2] = room_speed * 2;
            energy--;
        }
        if(energy == 0) && (alarm[1] == -1) alarm[1] = room_speed;
		
		
		
		break;
	}
	
	case horrorboss_phase1.recovery:
	{
		if (alarm[3] == -1) {
			alarm[3] = room_speed * 3;
		
		
		
	break;	
	}
	
}




}


if (250 < hp && hp <= 300)
{
	x = 1504;
	y = 3072;
} else if (200 < hp && hp <= 250)
{
	x = 800;
	y = 2464;
} else if (150 < hp && hp <= 200)
{
	x = 2848;
	y = 2016;
} else if (100 < hp && hp <= 150)
{
	x = 3456;
	y = 1024;
} else if (50 < hp && hp <= 100)
{
	x = 2464;
	y = 1120;
} else if (0 < hp && hp <= 50)
{
	x = 672;
	y = 1216;
} 







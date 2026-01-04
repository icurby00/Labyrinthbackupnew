/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case TURRET_BOSS.recovery:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 2;
		}
		
	}break;
	case TURRET_BOSS.firing:
	{
		if (energy == 0) energy = 7
		
        if (alarm[1] == -1)
        {
            alarm[1] = room_speed * 1.5;
            energy--;
        }
        if(energy == 0) state = choose(TURRET_BOSS.attack,TURRET_BOSS.beam);
		
		
	}break;
	case TURRET_BOSS.attack:
	{
		if (energy == 0) energy = 7
		if (alarm[2] == -1)
        {
            alarm[2] = room_speed * 0.5;
            energy--;
        }
        if(energy == 0) state = TURRET_BOSS.recovery;
		
	}break;
	case TURRET_BOSS.beam:
	{
		if (energy == 0) energy = 7
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed * 2;
			energy = energy -7;
		}
		 if(energy == 0) state = TURRET_BOSS.recovery;
		
		
	}break;
	
}
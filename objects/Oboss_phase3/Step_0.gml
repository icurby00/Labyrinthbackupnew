/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case boss_phase3.waiting:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed ;
		}
	
	}

	case boss_phase3.shooting:
	{
		if (energy == 0) energy = 20
		
        if (alarm[1] == -1)
        {
			sprite_index = spr_boss_phase3_firing;
            alarm[1] = room_speed * 0.25;
            energy--;
        }
        if(energy == 0) state = boss_phase3.waiting;
		
	}


}

if (hsp != 0 ) image_xscale = sign(hsp);
vsp = vsp + grv;
	// collide
if (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss]) or (place_meeting(x+hsp,y,Oenemyblock)))
{
	while (!place_meeting(x+sign(hsp),y,[ground1, ground2, ground3, ground4, Ograss]) and (!place_meeting(x+sign(hsp),y,Oenemyblock)))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;


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

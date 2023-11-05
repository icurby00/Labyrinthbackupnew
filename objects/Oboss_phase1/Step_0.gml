/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case boss_phase1.waiting: {
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 3;
		}
		
		break;
	}
	
	case boss_phase1.movement: {
		
		
	if (!place_meeting(x,y+1, Ograss))
{
	sprite_index = spr_boss_phase1_static;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_boss_phase1_static;
	}
	else
	{
		sprite_index = spr_boss_phase1_move;
	}
	
}
		if (alarm[1] == -1) {
			alarm[1] = room_speed;
		}
		
	}
	
	
	case boss_phase1.shooting: {
		if (energy == 0) energy = 10
		
        if (alarm[3] == -1)
        {
			sprite_index = spr_boss_phase1_firing;
            alarm[3] = room_speed * 0.25;
            energy--;
        }
        if(energy == 0) state = boss_phase1.waiting;
		
		
		
	}
	
	
	
	
}
if (hsp != 0 ) image_xscale = sign(hsp);
vsp = vsp + grv;
	// collide
if (place_meeting(x+hsp,y,Ograss) or (place_meeting(x+hsp,y,Oenemyblock)))
{
	while (!place_meeting(x+sign(hsp),y,Ograss) and (!place_meeting(x+sign(hsp),y,Oenemyblock)))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;


//Vertical Collison
if (place_meeting(x,y+vsp,Ograss))
{
	while (!place_meeting(x,y+sign(vsp),Ograss))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

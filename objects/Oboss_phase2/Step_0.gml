/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case boss_phase2.waiting:
	{
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 2;
		}
		
		break;
		
	}
	
	case boss_phase2.movement:
	{
			
	if (!place_meeting(x,y+1, Ograss))
{
	sprite_index = spr_boss_phase2_static;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_boss_phase2_static;
	}
	else
	{
		sprite_index = spr_boss_phase2;
	}
	
}
		if (alarm[1] == -1) {
			alarm[1] = room_speed;
		}
	
	}
	case boss_phase2.shooting:
	{
	if (energy == 0) energy = 15
		
        if (alarm[2] == -1)
        {
			sprite_index = spr_boss_phase2_firing;
            alarm[2] = room_speed * 0.25;
            energy--;
        }
        if(energy == 0) state = boss_phase2.movement;
		



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

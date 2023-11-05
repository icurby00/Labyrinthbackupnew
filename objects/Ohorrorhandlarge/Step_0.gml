/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	
	case horrorhand.move:
	{
		if (!place_meeting(x,y+1, Ograss))
{
	sprite_index = spr_hand;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_hand;
	}
	else
	{
		sprite_index = spr_hand;
	}
	
}
		if (alarm[1] == -1) {
			alarm[1] = room_speed;
		}
		
	}
	
	case horrorhand.attack:
	{
		sprite_index = spr_handattack;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 5;
		}
		
		
	}
	

}
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



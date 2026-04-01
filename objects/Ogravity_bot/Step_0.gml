/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case GRAVITY_BOT.idle:
	{
		sprite_index = spr_gravity_bot
		if (alarm[0] == -1) {
			alarm[0] = room_speed * 3;
		}

	}break;
	case GRAVITY_BOT.grav_incr:
	{
		sprite_index = spr_gravity_bot_gravity_on;
		with(Oplayer)
		{
			grv = 1.2;
			
		}
		if (alarm[1] == -1) {
			alarm[1] = room_speed * 3;
		}
		
	}break;
	
	case GRAVITY_BOT.attack1:
	{
		sprite_index = spr_gravity_bot_gravity_on;
		with(Oplayer)
		{
			grv = 0.0003;
		}
		if (alarm[2] == -1) {
			alarm[2] = room_speed * 7;
		}
		
	}break;
	
	case GRAVITY_BOT.attack2:
	{
		sprite_index = spr_gravity_bot_gravity_on;
		with(Oplayer)
		{
			walkspd = 0.5;
		}
		
	if (alarm[2] == -1) {
		alarm[2] = room_speed * 5;
		}	
		
	}break;
	
	case GRAVITY_BOT.recovery:
	{
		sprite_index = spr_gravity_bot
		walkspd = 3;
		hp = hp + 30;
		if (alarm[3] == -1) {
		alarm[3] = room_speed * 5;
		}	
	}break;
	
}
	// collide
if (place_meeting(x+hsp,y,[ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x+sign(hsp),y,[ground1, ground2, ground3, ground4, Ograss]))
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
	vsp = -vsp;
}
if (hsp != 0 )
{
image_xscale = sign(hsp);
}

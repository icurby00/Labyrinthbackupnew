/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Pbullets))
{
	image_speed = 0;
	image_index = 1;
	global.triple_shot_done++;
}

if (global.triple_shot_done < 3)
{
	if (alarm[0] == -1)
	{
		alarm[0] = room_speed / 20;
		image_speed = 0;
		image_index = 0;
	}
} else 
{
	alarm[0] = 0;
}

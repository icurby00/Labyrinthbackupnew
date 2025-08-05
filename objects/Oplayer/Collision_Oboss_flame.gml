/// @description Insert description here
// You can write your code in this editor
if ( not invincible ) 
{
	global.hp--;
	if global.hp > 0
	{
		force_jump = true;
		invincible = true;
		alarm[2] = room_speed * 1;
	}
	else
	{
			global.lose = true;
		if global.lose = true
		{
		instance_create_layer(x,y,"Bullets",Ogameover);
		}
	}
}
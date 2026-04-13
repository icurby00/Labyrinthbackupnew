/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(Osecret_boss))
{
	instance_destroy();
}
x = Osecret_boss.x-0.5;
y = Osecret_boss.y-2;
image_angle = point_direction(x,y,mouse_x, mouse_y);

firing_delay =- 1;
recoil = max(0,recoil - 1);
if (mouse_check_button_pressed(mb_left)) && (firing_delay < 0)
{
	recoil = 4;
	firing_delay = 5;
	with (instance_create_layer(x-3,y+1.5,"Bullets",Orobot_boss_flame_bullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
	
	if (global.triple_shot = true)
	{
		with (instance_create_layer(x-3,y+7.5,"Bullets",Orobot_boss_flame_bullet))
	{
		speed = 25;
		direction = other.image_angle - 5;
		image_angle = direction;
	}
		with (instance_create_layer(x-3,y-7.5,"Bullets",Orobot_boss_flame_bullet))
	{
		speed = 25;
		direction = other.image_angle + 5;
		image_angle = direction;
	}
	
	}
	
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}


/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
}
if (instance_exists(Oplayer))
{
	if (point_distance(Oplayer.x, Oplayer.y, x,y) < 600)
	{
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			with(instance_create_layer(x,y,"Bullets",Otankshell))
			{
				speed = 10;
				direction = point_direction(Oplayer.x,Oplayer.y,x,y);
				image_angle = direction;
			}
		}
	}
}
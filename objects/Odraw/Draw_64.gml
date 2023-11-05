/// @description Insert description here
// You can write your code in this editor
if(instance_exists(Oplayer))
{
	for( var i = 0; i < global.hp; i++)
	{
		draw_sprite_ext(spr_heart, -1, 10 + (40 * i), 50, 2, 2, 0, c_white, 1);
	}
	
}
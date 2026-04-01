/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
	instance_create_layer(x,y,"Enemies",Oice_small_fish);
}
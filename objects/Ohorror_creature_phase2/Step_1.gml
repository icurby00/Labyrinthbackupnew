/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy(Ohorror_creature_phase2);
	instance_create_layer(x,y,"Player",Oplasma_bullet_pickup);
	global.horror_creature_phase2 = 0;
}

if global.horror_creature_phase2 = 0
{
	instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	if global.mutate = true
	{
		instance_create_layer(x,y,"Enemies",Ohorror_creature_phase2);
		instance_destroy();
		global.horror_creature_phase1 = 0;
	}
	instance_destroy(Ohorror_creature);
	
	
}


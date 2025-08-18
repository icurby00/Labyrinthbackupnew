/// @description Insert description here
// You can write your code in this editor
var near = instance_nearest(other.x, other.y, Oboss_warp9);

other.x = near.x;
other.y  = near.y-20;
with (Ohorror_creature_phase2)
{
	state = HORROR_CREATURE_PHASE2.attack1;
}
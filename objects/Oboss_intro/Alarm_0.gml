/// @description Insert description here
// You can write your code in this editor
if !instance_exists(Ohorror_creature)
{
	global.mutate = true;
	instance_create_layer(464,2576, "Enemies", Ohorror_creature)
}
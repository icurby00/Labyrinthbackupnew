/// @description Insert description here
// You can write your code in this editor
if global.hp == 10
{
	instance_destroy();
}
else 
{
global.maxhp += 1;
global.hp = global.maxhp;
instance_destroy();
}
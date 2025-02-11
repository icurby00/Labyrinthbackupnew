/// @description Insert description here
// You can write your code in this editor
if instance_exists(Oicespawn)
{
	TTL--;
}

if TTL = 0 
{
	instance_destroy();
}

var count_no = instance_number(Oicespawn)
if(count_no < 3)
{
    instance_create_depth(x,y,depth,Oicespawn);
}
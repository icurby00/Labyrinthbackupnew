/// @description Insert description here
// You can write your code in this editor
if (global.maxhp >= 4) 
{
	if room_exists(target_room)
{
	other.x = target_x;
	other.y = target_y;
	other.dashing = false;
	other.already_dashing = false;
	room_goto(target_room);
}
	
}

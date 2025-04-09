/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,Oplayer))
{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_alpha(back_id,0.6)
	layer_background_blend(back_id, c_fuchsia);
	global.background_change = true;
}

if place_meeting(x,y,Oplayer) && global.background_change = true
{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_alpha(back_id,1)
	layer_background_blend(back_id, c_red);
	global.background_complete = true;
}
if place_meeting(x,y,Oplayer) && global.background_complete = true
{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_alpha(back_id,1)
	layer_background_blend(back_id, c_blue);
	global.background_complete = false;
	global.background_change = false;
}
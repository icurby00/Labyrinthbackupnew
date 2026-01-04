/// @description Insert description here
// You can write your code in this editor
paused = false;
layer_name = "Pause_Layer";

update_pause = function()
{
	if (paused)
	{
		instance_deactivate_all(true);
		layer_set_visible(layer_name, true);
	}
	else
	{
		instance_activate_all();
		layer_set_visible(layer_name, false);
	}
	
}update_pause();

layer_set_visible("MapScreen", false);
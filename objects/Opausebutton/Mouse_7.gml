/// @description Insert description here
// You can write your code in this editor
switch (button_id)
{
	case 0:
	{
		Opause_controller.paused = false;
		Opause_controller.update_pause();
		
	}break;
	
	case 1:
	{
		layer_set_visible("Pause_Layer", false);
		layer_set_visible("MapScreen", true);
		
	}break;
	
	
	
	
	case 2:
	{
	game_end();
		
		
		
	}break;
	
	case 3:
	{
		layer_set_visible("Pause_Layer", true);
		layer_set_visible("MapScreen", false);
		
	}break;
	case 4:
	{
		if global.mapupdate == true
		{
			var _layer_id = layer_get_id("MapScreen");
			var _map_id = layer_sprite_get_id(_layer_id,"graphic_6D37E431");
			layer_sprite_change(_map_id, spr_map);
		}
		
	}break;
	case 5:
	{
		
	
		layer_set_visible("Pause_Layer", false);
		layer_set_visible("Help_Layer", true);
		

	}break;
		

	
	case 6:
	{
		layer_set_visible("Pause_Layer", true);
		layer_set_visible("Help_Layer", false);
		
	}break;
}
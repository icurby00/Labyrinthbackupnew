/// @description Insert description here
// You can write your code in this editor
switch (event_data[? "message"])
{
	case "cutsceneStart":
	{
		if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence)
		{
			curSeq = event_data[? "element_id"];
			show_debug_message("Ocutscene is playing "+string(curSeq)+" is playing" );
		}
	} break;
	case "cutsceneEnd": 
	{
		sequenceState = cutscene_boss.Finished;
		instance_activate_object(Oplayer);
		instance_activate_object(Oweapon);
		instance_activate_object(pEnemy);
		instance_activate_object(pSigns);
		view_set_visible(1,false);
		show_debug_message("Ocutscene has stopped playing "+string(curSeq));
			if room_exists(target_room)
			{
				Oplayer.x = target_x;
				Oplayer.y = target_y;
				room_goto(rm_iceberg_inside2)
				
				
			}
			instance_destroy(Ocutscene);
			global.cutscene = false;
		
		
		} break;
}


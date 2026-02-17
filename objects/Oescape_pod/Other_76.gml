/// @description Insert description here
// You can write your code in this editor
switch (event_data[? "message"])
{
	case "end_start":
	{
		if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence)
		{
			curSeq = event_data[? "element_id"];
			show_debug_message("Ocutscene is playing "+string(curSeq)+" is playing" );
		}
	} break;
	case "end_fin": 
	{
		sequenceState = ending_cutscene.finished;
		
		show_debug_message("Ocutscene has stopped playing "+string(curSeq));
			if room_exists(target_room)
			{
				
				room_goto(rm_titlescreen)
				view_set_visible(1,false);
				
			}
			instance_destroy(Oescape_pod);
			global.cutscene = false;
		
		
		} break;
}

/// @description Insert description here
// You can write your code in this editor

switch (event_data[? "message"])
{
	case "sequenceStart":
	{
		if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence)
		{
			curSeq = event_data[? "element_id"];
			show_debug_message("Ogameover is playing "+string(curSeq)+" is playing" );
		}
	} break;
	case "sequenceEnd": 
	{
		sequenceState = seqstate.Finished;
		instance_activate_object(Oplayer);
		instance_activate_object(Oweapon);
		show_debug_message("Ogameover has stopped playing "+string(curSeq));
	} break;
}







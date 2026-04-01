/// @description Insert description here
// You can write your code in this editor
var _camX = camera_get_view_x(view_camera[1])+floor(camera_get_view_width(view_camera[0])*0.25);
var _camY = camera_get_view_y(view_camera[1])+floor(camera_get_view_height(view_camera[0])*0.25);

{
	if (!layer_sequence_exists(curSeqLayer,Ending))
	{
		sequenceState = ending_cutscene.playing;
		if (layer_exists("Cutscene") && sequenceState = ending_cutscene.playing)
		{
			layer_sequence_create(curSeqLayer,_camX,_camY,Ending);
			layer_depth(curSeqLayer, -10000);
			
		}
	
}
}
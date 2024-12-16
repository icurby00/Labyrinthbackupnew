/// @description Insert description here
// You can write your code in this editor
var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);

{
	if (!layer_sequence_exists(curSeqLayer,Gameover))
	{
		sequenceState = seqstate.Playing;
		if (layer_exists("Gameover") && sequenceState = seqstate.Playing)
		{
			layer_sequence_create(curSeqLayer,_camX,_camY,Gameover);
			layer_depth(curSeqLayer, -10000);
			
		}
	
}
}
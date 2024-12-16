/// @description Insert description here
// You can write your code in this editor
var _camX = camera_get_view_x(view_camera[1])+floor(camera_get_view_width(view_camera[1])*0.5);
var _camY = camera_get_view_y(view_camera[1])+floor(camera_get_view_height(view_camera[1])*0.5);

{
	if (!layer_sequence_exists(curSeqLayer,Robot_worm_cutscene))
	{
		sequenceState = cutscene_boss.Playing_scene;
		if (layer_exists("Cutscene") && sequenceState = cutscene_boss.Playing_scene)
		{
			layer_sequence_create(curSeqLayer,_camX,_camY,Robot_worm_cutscene);
			layer_depth(curSeqLayer, -10000);
			
		}
	
}
}
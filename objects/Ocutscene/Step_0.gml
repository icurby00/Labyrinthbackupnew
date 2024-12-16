/// @description Insert description here
// You can write your code in this editor
if !(layer_exists("Cutscene"))
{
	layer_create(-100,"Cutscene")
}
if (layer_exists("Cutscene"))
{
	curSeqLayer = "Cutscene";
}
if (global.cutscene = true && sequenceState = cutscene_boss.Notplaying_scene)
{
	instance_deactivate_object(pEnemy);
	instance_deactivate_object(Oplayer);
	instance_deactivate_object(Oweapon);
	instance_deactivate_object(pSigns);
	view_set_visible(1,true);

	if (alarm[0] == -1) {
			alarm[0] = room_speed;
		}
	
}

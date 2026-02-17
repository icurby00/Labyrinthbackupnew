/// @description Insert description here
// You can write your code in this editor
if ds_map_find_value(async_load, "type") == "audiogroup_load"{
	if(ds_map_find_value(async_load, "group_id")== audiomenu){
		audio_play_sound(snd_main_menu, 50, false);
	}
}
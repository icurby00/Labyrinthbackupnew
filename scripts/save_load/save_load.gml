// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game() {
var _saveData = array_create(0);
with (Oplayer)
{
	var _saveEntity = 
	{
		player_hp : global.hp,
		player_maxhp : global.maxhp,
		x: x,
		y : y,
		currentroom : room,
		player_gun : global.player_has_gun,
		player_bullets : global.bullettype,
		player_dash : global.can_dash,
		player_wall_jump : global.can_wall_jump,
		player_double_jump : global.can_doublejump,
		player_red_bullets : global.redbullets,
		player_green_bullets : global.greenbullets,
		player_ice_bullets : global.icebullets,
		player_plasma_bullets : global.plasmabullets,
		player_triple_shot : global.triple_shot,
		player_snorkel : global.snorkel,
		player_lava_suit : global.lavaproofsuit,
		player_ice_suit : global.ice_suit,
		player_pro_suit : global.prosuit,
		level_change : global.levelchange,
		map_update : global.mapupdate,
		mini_map : global.minimap,
		bosses_air : global.Oboss_air,
		bosses_crusher : global.Oboss_crusher,
		bosses_desert : global.Oboss_desert,
		bosses_phases1 : global.Oboss_phase1,
		bosses_phases2 : global.Oboss_phase2,
		bosses_phases3 : global.Oboss_phase3,
		bosses_horror : global.Oboss_horror,
		bosses_horror_phase1 : global.Oboss_horror_phase1,
		bosses_horror_phase2 : global.Oboss_horror_phase2,
		bosses_worm_phase1 : global.worm_boss_phase1,
		bosses_worm_phase2 : global.worm_boss_phase2,
		bosses_worm_phase3 : global.worm_boss_phase3,
		bosses_horror_creature1 : global.horror_creature_phase1,
		bosses_horror_creature2 : global.horror_creature_phase2,
		bosses_turret_boss : global.turret_boss,
		bosses_grav_bot : global.grav_bot,
		bosses_floating_robot : global.floating_robot,
		bosses_final_boss1 : global.final_boss_phase1,
		bosses_final_boss2 : global.final_boss_phase2,
		bosses_final_boss3 : global.final_boss_phase3,
		bosses_secret_boss : global.secret_boss
	}
	array_push(_saveData,_saveEntity);
	


}
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "labyrinth.sav");
buffer_delete(_buffer);
}

function load_game() {
	with (Oplayer) instance_destroy();
	if (file_exists("labyrinth.sav"))
	{
		var _buffer = buffer_load("labyrinth.sav");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		while (array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			with (instance_create_layer(x,y,"Player",Oplayer))
			{
				global.hp = _loadEntity.player_hp;
				global.maxhp = _loadEntity.player_maxhp;
				x = _loadEntity.x;
				y = _loadEntity.y;
				room = _loadEntity.currentroom;
				global.player_has_gun = _loadEntity.player_gun;
				global.bullettype = _loadEntity.player_bullets;
				global.can_dash = _loadEntity.player_dash;
				global.can_doublejump = _loadEntity.player_double_jump;
				
			}
			
		}
	}
}
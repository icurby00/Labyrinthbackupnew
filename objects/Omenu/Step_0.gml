var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _right = keyboard_check_pressed(vk_right);
var _left = keyboard_check_pressed(vk_left);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _down - _up;
var _hmove = _right - _left;
if _move != 0 {
	index += _move;
	
	var _size = array_length(menu[sub_menu]);
	if index < 0 index = _size - 1;
	else if index >= _size index = 0;
}

function process_menu(_select,_hmove) {
	if _select or (is_array(menu[sub_menu][index]) and (_hmove != 0)) {
		switch(sub_menu) {
			case MAIN:   
				switch(index) {
					case 0:
						//Start
						room_goto(rm_grassland);
					break;
					case 1:
					if(!file_exists("Labyrinth.sav"))
						{
							room_goto(rm_grassland);
						}
						else
						{
							ini_open("Labyrinth.sav");
							x = ini_read_real("player", "x", 0);
							y = ini_read_real("player", "y", 0);
							global.hp = ini_read_real("player", "hp", 3);
							global.player_has_gun = ini_read_real("player", "playergun", false);
							global.can_wall_jump = ini_read_real("player", "playerwalljump", false);
							global.can_dash = ini_read_real("player", "playerdash", false);
							global.currentroom = ini_read_real("player", "room", false);
							global.can_doublejump = ini_read_real("player", "playerdoublejump", false);
							global.redbullets = ini_read_real("player", "playerredbullet", false);
							global.greenbullets = ini_read_real("player", "playergreenbullet",false);
							global.icebullets = ini_read_real("player", "playericebullet",false);
							global.plasmabullets = ini_read_real("player", "playerplasmabullet",false);
							global.snorkel = ini_read_real("player", "playerwater", false);
							global.ice_suit = ini_read_real("player", "playersuit", false);
							global.prosuit = ini_read_real("player", "playerprosuit", false);
							global.lavaproofsuit = ini_read_real("player", "playerlavasuit",false);
							global.minimap = ini_read_real("player", "playerminimap", false);
							global.mapupdate = ini_read_real("player", "playermap", false);
							global.state = ini_read_real("player", "playerstate", characterstate.normal);
							global.bullettype = ini_read_real("weapon", "weaponbullettype", false);
							global.Oboss_air = ini_read_real("boss", "bossair", 1);
							global.Oboss_crusher = ini_read_real("boss", "bosscrusher", 1);
							global.Oboss_phase1 = ini_read_real("boss", "bossphase1", 1);
							global.Oboss_phase2 = ini_read_real("boss", "bossphase2", 1);
							global.Oboss_phase3 = ini_read_real("boss", "bossphase3", 1);
							global.Oboss_desert = ini_read_real("boss","desertboss", 1);
							global.Oboss_horror = ini_read_real("boss", "horrorboss", 1);
							global.Oboss_horror_phase1 = ini_read_real("boss", "horrorboss_phase1",1);
							global.Oboss_horror_phase2 = ini_read_real("boss", "horrorboss_phase2",1);
							global.worm_boss_phase1 = ini_read_real("boss", "robot_worm_phase1", 1);
							global.worm_boss_phase2 = ini_read_real("boss", "robot_worm_phase2",1);
							global.worm_boss_phase3 = ini_read_real("boss", "robot_worm_phase3", 1);
							global.horror_creature_phase1 = ini_read_real("boss","horrorcreaturephase1",1);
							global.horror_creature_phase2 = ini_read_real("boss","horrorcreaturephase2",1);
							global.turret_boss = ini_read_real("boss", "turretboss",1);
							global.levelchange = ini_read_real("level","levelchange",false);
							global.currentroom = ini_read_real("room", "room", rm_grassland);
			
							ini_close();
							room_goto(global.currentroom);
							instance_create_layer(x,y,"Player",Oplayer);
							instance_create_layer(x,y,"Weapon",Oweapon);
						}
						break;
					
					case 2:
						//Options
						sub_menu = SETTINGS;
						index = 0;
		
					break;
					case 3:
						//Exit
						game_end();
					break;
				}
			break;
			case SETTINGS:   
				switch(index) {
					case 0:
						//Sound
						change_menu(_hmove, "sound");
						audio_group_set_gain(audiogroup_default, global.dsm_settings[? "sound"][0]/10,0)
						audio_play_sound(snd_menu,50,false);
					break;
					case 1:
						//Music
						change_menu(_hmove, "music");
						audio_group_set_gain(audiogroup_music, global.dsm_settings[? "music"][0]/10, 0);
						
					break;
					case 2:
						//Text Speed
						change_menu(_hmove, "text_speed"); 
						global.textspeed = set[? "text_speed"][0];
						break;
					case 3:
						//Back
						sub_menu = MAIN;
						index = 1;
					break;
				}
			break;
			}
	}
}
process_menu(_select, _hmove);
function change_menu(_move, _key){
	/// @desc change the ds map key entry by the move value passed 
	///@ _move real
	///@_key string
// allowed limits
var _map_arr = set[? _key];
var _limits_arr = _map_arr[1];
	
	
	if is_real(_limits_arr[0]) {
		var _min = _limits_arr[0];
		var _max = _limits_arr[1];
	} else {
		var _min = 0;
		var _max = array_length(_limits_arr) - 1;
		
	}
	
	_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max);
}
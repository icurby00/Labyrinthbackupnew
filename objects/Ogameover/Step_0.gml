/// @description Insert description here
// You can write your code in this editor
alpha += 0.05;
if (alpha > 1) alpha = 1;

menu_x += (menu_x_target - menu_x) / menu_speed;


//menu control
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+400;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width+300) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: if(file_exists("Labyrinth.ini"))
		{
		with (Oplayer)
		{
			ini_open("Labyrinth.ini");
			x = ini_read_real("player", "x", x);
			y = ini_read_real("player", "y", y);
			global.hp = ini_read_real("player", "hp", 3);
			global.maxhp = ini_read_real("player", "maxhp", 3);
			global.player_has_gun = ini_read_real("player", "playergun", false);
			global.can_wall_jump = ini_read_real("player", "playerwalljump", false);
			global.can_dash = ini_read_real("player", "playerdash", false);
			global.can_doublejump = ini_read_real("player", "playerdoublejump", false);
			global.redbullets = ini_read_real("player", "playerredbullet", false);
			global.greenbullets = ini_read_real("player", "playergreenbullet",false);
			global.icebullets = ini_read_real("player", "playericebullet",false);
			global.plasmabullets = ini_read_real("player", "playerplasmabullet",false);
			global.bullettype = ini_read_real("weapon", "weaponbullettype", false);
			global.snorkel = ini_read_real("player", "playerwater", false);
			global.ice_suit = ini_read_real("player", "playersuit", false);
			global.prosuit = ini_read_real("player", "playerprosuit", false);
			global.lavaproofsuit = ini_read_real("player", "playerlavasuit",false);
			global.minimap = ini_read_real("player", "playerminimap", false);
			global.mapupdate = ini_read_real("player", "playermap", false);
			global.state = ini_read_real("player", "playerstate", characterstate.normal);
			global.Oboss_air = ini_read_real("boss", "bossair", 1);
			global.Oboss_crusher = ini_read_real("boss", "bosscrusher", 1);
			global.Oboss_phase1 = ini_read_real("boss", "bossphase1", 1);
			global.Oboss_phase2 = ini_read_real("boss", "bossphase2", 1);
			global.Oboss_phase3 = ini_read_real("boss", "bossphase3", 1);
			global.Oboss_desert = ini_read_real("boss","desertboss", 1);
			global.Oboss_horror = ini_read_real("boss", "horrorboss", 1);
			global.Oboss_horror_phase1 = ini_read_real("boss", "horrorboss_phase1", 1);
			global.Oboss_horror_phase2 = ini_read_real("boss", "horrorboss_phase2",1);
			global.worm_boss_phase1 = ini_read_real("boss", "robot_worm_phase1", 1);
			global.worm_boss_phase2 = ini_read_real("boss", "robot_worm_phase2",1);
			global.worm_boss_phase3 = ini_read_real("boss", "robot_worm_phase3", 1);
			global.horror_creature_phase1 = ini_read_real("boss","horrorcreaturephase1",1);
			global.horror_creature_phase2 = ini_read_real("boss","horrorcreaturephase2",1);
			global.turret_boss = ini_read_real("boss", "turretboss",1);
			global.grav_bot = ini_read_real("boss", "gravbot",1);
			global.floating_robot = ini_read_real("boss", "floatingrobot", 1);
			global.final_boss_phase1 = ini_read_real("boss", "finalbossphase1", 1)
			global.final_boss_phase2 = ini_read_real("boss", "finalbossphase2", 1)
			global.final_boss_phase3 = ini_read_real("boss", "finalbossphase3", 1)
			global.secret_boss = ini_read_real("boss", "secretboss",1);
			global.levelchange = ini_read_real("level","levelchange",false);
			ini_close();
			room_restart();
			global.hp = global.maxhp;
			global.lose = false;
			global.cutscene = false;
			instance_activate_object(pEnemy);
			instance_activate_object(Oplayer);
			instance_activate_object(Oweapon);
			instance_create_layer(x,y,"Weapon",Oweapon);
			instance_destroy(Ogameover);
		}
		}
		break;
		case 1: 
		{
			room_goto(rm_titlescreen);
			instance_destroy(Oplayer);
			instance_destroy(Oweapon);
			instance_destroy(Ogameover);
			global.lose = false;
		}
			break;
	
		case 0: game_end(); break;
	}
}

if (layer_exists("Gameover"))
{
	curSeqLayer = "Gameover";
}
if (global.lose = true && sequenceState = seqstate.Notplaying)
{
	instance_deactivate_object(pEnemy);
	instance_deactivate_object(Oplayer);
	instance_deactivate_object(Oweapon);
	instance_deactivate_object(pSigns);
	instance_deactivate_object(Oenergyball);
	instance_deactivate_object(Penemy_bullets);
	instance_deactivate_object(Osecret_boss_weapon);

	if (alarm[0] == -1) {
			alarm[0] = room_speed;
		}
	
}

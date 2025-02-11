/// @description control menu
// You can write your code in this editor
//item ease in
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
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: room_goto(rm_grassland); file_delete("Labyrinth.sav"); file_delete("Labyrinth.ini"); global.hp = 3; break;
		case 1: if(!file_exists("Labyrinth.sav"))
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
			global.snorkel = ini_read_real("player", "playerwater", false);
			global.ice_suit = ini_read_real("player", "playersuit", false);
			global.prosuit = ini_read_real("player", "playerprosuit", false);
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
			global.levelchange = ini_read_real("level","levelchange",false);
			ini_close();
			room_goto(global.currentroom);
			instance_create_layer(x,y,"Player",Oplayer);
			instance_create_layer(x,y,"Weapon",Oweapon);
           
			
		}
		break;
		case 0: game_end(); break;
	}
}
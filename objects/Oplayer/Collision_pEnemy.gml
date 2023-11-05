/// @description Insert description here
// You can write your code in this editor
if ( not invincible ) 
{
	global.hp--;
	if global.hp > 0
	{
		force_jump = true;
		invincible = true;
		alarm[2] = room_speed * 1;
	}
	else
	{
		
			ini_open("Labyrinth.ini");
			x = ini_read_real("player", "x", x);
			y = ini_read_real("player", "y", y);
			global.hp = ini_read_real("player", "hp", 3);
			global.player_has_gun = ini_read_real("player", "playergun", false);
			global.can_wall_jump = ini_read_real("player", "playerwalljump", false);
			global.can_dash = ini_read_real("player", "playerdash", false);
			global.can_doublejump = ini_read_real("player", "playerdoublejump", false);
			global.redbullets = ini_read_real("player", "playerredbullet", false);
			global.bullettype = ini_read_real("weapon", "weaponbullettype", false);
			global.snorkel = ini_read_real("player", "playerwater", false);
			global.ice_suit = ini_read_real("player", "playersuit", false);
			global.state = ini_read_real("player", "playerstate", characterstate.normal);
			global.Oboss_air = ini_read_real("boss", "bossair", 1);
			global.Oboss_crusher = ini_read_real("boss", "bosscrusher", 1);
			global.Oboss_phase1 = ini_read_real("boss", "bossphase1", 1);
			global.Oboss_phase2 = ini_read_real("boss", "bossphase2", 1);
			global.Oboss_phase3 = ini_read_real("boss", "bossphase3", 1);
			global.Oboss_desert = ini_read_real("boss","desertboss", 1);
			global.levelchange = ini_read_real("level","levelchange",false);
			ini_close();
			room_restart();
			global.hp = global.maxhp;
	}
}

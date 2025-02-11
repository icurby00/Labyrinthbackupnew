/// @description Insert description here
// You can write your code in this editor
ini_open("Labyrinth.ini");
ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_write_real("player", "hp", global.hp);
ini_write_real("player", "playergun", global.player_has_gun);
ini_write_real("player", "playerwalljump", global.can_wall_jump);
ini_write_real("player", "playerdash", global.can_dash);
ini_write_real("player", "playerdoublejump", global.can_doublejump);
ini_write_real("player", "playerredbullet", global.redbullets);
ini_write_real("player", "playergreenbullet", global.greenbullets);
ini_write_real("player", "playericebullet", global.icebullets);
ini_write_real("player", "playerwater", global.snorkel);
ini_write_real("player", "playersuit", global.ice_suit);
ini_write_real("player", "playerprosuit", global.prosuit);
ini_write_real("player", "playerstate", global.state);
ini_write_real("weapon", "weaponbullettype", global.bullettype);
ini_write_real("boss", "bossair", global.Oboss_air);
ini_write_real("boss", "bosscrusher", global.Oboss_crusher);
ini_write_real("boss", "bossphase1", global.Oboss_phase1);
ini_write_real("boss", "bossphase2", global.Oboss_phase2);
ini_write_real("boss", "bossphase3", global.Oboss_phase3);
ini_write_real("boss","desertboss", global.Oboss_desert);
ini_write_real("boss", "horrorboss", global.Oboss_horror);
ini_write_real("boss", "horrorboss_phase1", global.Oboss_horror_phase1);
ini_write_real("boss", "horrorboss_phase2", global.Oboss_horror_phase2);
ini_write_real("boss", "robot_worm_phase1", global.worm_boss_phase1);
ini_write_real("boss", "robot_worm_phase2", global.worm_boss_phase2);
ini_write_real("level", "levelchange", global.levelchange);
ini_close();





// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkpoint_load(){
							ini_open("Labyrinth.ini");
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
							global.grav_bot = ini_read_real("boss", "gravbot",1);
							global.floating_robot = ini_read_real("boss", "floatingrobot", 1);
							global.final_boss_phase1 = ini_read_real("boss", "finalbossphase1", 1)
							global.final_boss_phase2 = ini_read_real("boss", "finalbossphase2", 1)
							global.final_boss_phase3 = ini_read_real("boss", "finalbossphase3", 1)
							global.secret_boss = ini_read_real("boss", "secretboss",1);
							global.levelchange = ini_read_real("level","levelchange",false);
							ini_close();

}
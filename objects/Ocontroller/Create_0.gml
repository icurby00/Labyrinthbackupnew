/// @description Insert description here
// You can write your code in this editor
//character states
enum characterstate
{
normal,
swimming
	
}
enum crusherstate
{
waiting,
falling,
rising
	
}
enum boss_crusher
{
seeking,
waiting,
falling,
rising

}
enum boss_air
{
waiting,
movement,
falling,
shooting,
rising
	
}

enum boss_phase1
{
waiting,
movement,
shooting
}
enum boss_phase2
{
waiting,	
movement,
shooting
}
enum boss_phase3
{
waiting,
shooting
	
}
enum desert_boss
{
waiting,
movement,
idle,
shooting
}
enum horrorhand
{
move,
attack
}
global.maxhp = 3;
global.x = x;
global.y = y;
global.hp = 3;
global.player_has_gun = false;
global.can_dash = false;
global.can_wall_jump = false;
global.can_doublejump = false;
global.redbullets = false;
global.currentroom = noone;
global.snorkel = false;
global.ice_suit = false;
global.prosuit = false;
global.state = characterstate.normal;
global.levelchange = false;

// weapon data
global.bullettype = Obullet;


// bosses defeated 
global.Oboss_air = 1;
global.Oboss_crusher = 1;

global.Oboss_phase1 = 1;
global.Oboss_phase2 = 1;
global.Oboss_phase3 = 1;

global.Oboss_desert = 1;


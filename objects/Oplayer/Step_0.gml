/// @description Insert description here
// You can write your code in this editor
if global.state = characterstate.normal
{

//move code
mv_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
mv_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
jumpup = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
dashing = global.can_dash and (keyboard_check_pressed(ord("X")));
onground = place_meeting(x,y+1, [ground1, ground2, ground3, ground4, Ograss]);
onwall = place_meeting(x+1,y, [ground1, ground2, ground3, ground4, Ograss]) - place_meeting(x-1,y, [ground1, ground2, ground3, ground4, Ograss]);
var move = mv_right - mv_left;
hsp = move * walkspd;
vsp = vsp + grv;

if move != 0
{
	facing_dir = move;
	image_xscale = facing_dir;
	direction = point_direction(x, y, x + move, y);
}
//wall jump

if not grounded and global.can_wall_jump and place_meeting(x + facing_dir, y, [ground1, ground2, ground3, ground4, Ograss])
{
	sprite_index = spr_player_wall_slide;
	wall_jump = true;
	if vsp > 0
	{
		vsp = wall_slide_friction;
	}
}
else
{
	wall_jump = false;
	
}
//jump
if global.can_doublejump and candoublejump and jumpup
	{
		vsp = -6;
		candoublejump = false;
	}
	
if jumpup and (grounded or wall_jump)
{
	grounded = false;
	vsp = -6;
	candoublejump = true;
	if wall_jump
	{
		effect_create_below(ef_smoke, x, y, 1, c_white);
		facing_dir *= -1;
		image_xscale = facing_dir;
		direction = point_direction(x,y, x + facing_dir, y);
		wj_goal_x = x + 80 * facing_dir;
		already_walljumping = true;
		wall_jump = false;
	}
	
	
}
if already_walljumping
{
	wj_move = walkspd * facing_dir;
	if (place_meeting(x + wj_move, y, [ground1, ground2, ground3, ground4, Ograss]))
	{
		while (!place_meeting(x + sign(wj_move), y, [ground1, ground2, ground3, ground4, Ograss]))
		{
			x += sign(wj_move);
		}
		wj_move = 0;
		already_walljumping = false;
	}
	x += wj_move;
	already_walljumping = already_walljumping and ((facing_dir > 0 and wj_goal_x > x) or (facing_dir < 0 and wj_goal_x < x));
}
//dash
if dashing and not (already_dashing or dash_recharging)
{
	dash_goal = x + dash_power * facing_dir;
	already_dashing = true;
	
	effect_create_below(ef_spark, x, y, 1, c_white);
	sprite_index = spr_player_dash;
	
}
if already_dashing and not dash_recharging
{
	// floating after dashing
	vsp = 0;
	grv = 0;
	
	dash_move = dash_speed * facing_dir;
	if ( place_meeting ( x+dash_move, y, [ground1, ground2, ground3, ground4, Ograss] ) )
	{
		while ( not place_meeting ( x+sign(dash_move), y, [ground1, ground2, ground3, ground4, Ograss] ) )
		{
			x += sign(dash_move);
		}
		dash_move = 0;
		already_dashing = false;
		dash_recharging = true;
	}
	x += dash_move;

	already_dashing = already_dashing and ((facing_dir > 0 and dash_goal > x) or (facing_dir < 0 and dash_goal < x));
	dash_recharging = not already_dashing;
	if not already_dashing
	{
		alarm[0] = room_speed * 0.2; // stop floating in 0.2 secs
	}
}
	// collide
if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


//Vertical Collison
if (place_meeting(x,y+vsp, [ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x,y+sign(vsp), [ground1, ground2, ground3, ground4, Ograss]))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded = true;
	dash_recharging = false;
	candoublejump = false;
}
else
{
	grounded = false;
}
y = y + vsp;


//animation
if (!onground)
{
	if (onwall != 0)
	{
	
		image_xscale = onwall;
		var side = bbox_left;
		if (onwall == 1) side = bbox_right;
		dust++;
		if ((dust > 2) && (vsp > 0)) with (instance_create_layer(side,bbox_top,"Player", Odust))
		{
			other.dust = 0;
			hspeed = -other.onwall*0.5;
		}
	}
	else
	{
	dust = 0;
	sprite_index = spr_player_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player_right_stationary;
	}
	else
	{
		sprite_index = spr_player_right;
		
	}
	
}
if (hsp != 0 ) image_xscale = sign(hsp);
if (global.hp >= 0)
{
	game_load("Labyrinth.ini");
}
if (global.snorkel = true) && tilemap_get_at_pixel(tiles,x,y) 
{
	global.state = characterstate.swimming;
	grv = grv_swim;
	in_water = true;
	
}
if (global.snorkel = false) && tilemap_get_at_pixel(tiles,x,y) 
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
			global.prosuit = ini_read_real("player", "playerprosuit", false);
			global.state = ini_read_real("player", "playerstate", characterstate.normal);
			ini_close();
}
if (global.snorkel = true) && (global.ice_suit = true) && tilemap_get_at_pixel(tiles2,x,y) 
{
	global.state = characterstate.swimming;
	grv = grv_swim;
	in_water = true;
	
}
if (global.snorkel = false) && (global.ice_suit = false) && tilemap_get_at_pixel(tiles2,x,y) 
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
			global.prosuit = ini_read_real("player", "playerprosuit", false);
			global.state = ini_read_real("player", "playerstate", characterstate.normal);
			ini_close();
}
if (global.snorkel = true) && (global.prosuit = true) && tilemap_get_at_pixel(tiles3,x,y) 
{
	global.state = characterstate.swimming;
	grv = grv_swim;
	in_water = true;
	
}
if (global.snorkel = false) && (global.prosuit = false) && tilemap_get_at_pixel(tiles3,x,y) 
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
			global.prosuit = ini_read_real("player", "playerprosuit", false);
			global.state = ini_read_real("player", "playerstate", characterstate.normal);
			ini_close();
}
}
if (global.state = characterstate.swimming) && (in_water)
{
	vsp = lerp(vsp, 0, 0.1);
	sprite_index = spr_player_swim;
	grv = grv_swim;

	mv_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	mv_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	mv_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	mv_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	jumpup = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
	var move = mv_right - mv_left;
	var swim = mv_down - mv_up;
	vsp = swim * swimspd;
	hsp = move * swimspd;
	
	if move != 0
{
	facing_dir = move;
	image_xscale = facing_dir;
	direction = point_direction(x, y, x + move, y);
}
if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss]))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


//Vertical Collison
if (place_meeting(x,y+vsp, [ground1, ground2, ground3, ground4, Ograss]))
{
	while (!place_meeting(x,y+sign(vsp), [ground1, ground2, ground3, ground4, Ograss]))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded = true;
	dash_recharging = false;
	candoublejump = false;
}
else
{
	grounded = false;
}
y = y + vsp;
if (!tilemap_get_at_pixel(tiles,x,y) and (!tilemap_get_at_pixel(tiles2,x,y)) and (!tilemap_get_at_pixel(tiles3,x,y)))
{
	global.state = characterstate.normal;
	grv = 0.3;
}

}
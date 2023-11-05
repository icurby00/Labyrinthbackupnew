/// @description Insert description here
// You can write your code in this editor
//stats
hp = global.hp;
hsp = 0;
vsp = 0;
grv = 0.3;
walkspd = 4;
swimspd = 4;
facing_dir = 1;
direction = 0;
grounded = false;



//wall jump/slide
wall_jump = false;
wall_slide_friction = 0.5;
wj_goal_x = x;
already_walljumping = false;
candoublejump = false;

dust = 0;
//dash
already_dashing = false;
dash_speed = 25;
dash_power = 200;
dash_move = 0;

invincible = false;
force_jump = false;

//swimming variables
layerID = layer_get_id("Water");
tiles = layer_tilemap_get_id(layerID);
layerID2 = layer_get_id("Ice_water");
tiles2 = layer_tilemap_get_id(layerID2);
layerID3 = layer_get_id("Dirty_water");
tiles3 = layer_tilemap_get_id(layerID3);
grv_swim = 0;
in_water = false;
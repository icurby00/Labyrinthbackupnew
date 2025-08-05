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
canjump = 0;
buffer_counter = 0; //initialise the buffer's counter
buffer_max = 5;      //maximum frames allowed for buffer
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

//Collison
GroundId1 = layer_get_id("Tiles_1")
ground1  = layer_tilemap_get_id(GroundId1);
GroundId2 = layer_get_id("Tiles_2");
ground2 = layer_tilemap_get_id(GroundId2);
GroundId3 = layer_get_id("Tiles_3");
ground3 = layer_tilemap_get_id(GroundId3);
GroundId4 = layer_get_id("Tiles_4");
ground4 = layer_tilemap_get_id(GroundId4);
//swimming variables
layerID = layer_get_id("Water");
tiles = layer_tilemap_get_id(layerID);
layerID2 = layer_get_id("Ice_water");
tiles2 = layer_tilemap_get_id(layerID2);
layerID3 = layer_get_id("Dirty_water");
tiles3 = layer_tilemap_get_id(layerID3);
LayerID4 = layer_get_id("Lava");
tiles4 = layer_tilemap_get_id(LayerID4);
grv_swim = 0;
in_water = false;
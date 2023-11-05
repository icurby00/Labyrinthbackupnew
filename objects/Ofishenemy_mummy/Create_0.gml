/// @description Insert description here
// You can write your code in this editor
vsp = 0;
hsp = 0;
grv = 0;
walkspd = 1.5;
hsp = walkspd;
hp = 6;
flash = 0;
accel_force = 0.2;
limit_speed = true;
max_speed = 4;


layerID = layer_get_id("Water");
tiles = layer_tilemap_get_id(layerID);
layerID2 = layer_get_id("Dirty_water");
tiles2 = layer_tilemap_get_id(layerID2);
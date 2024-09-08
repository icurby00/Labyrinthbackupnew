/// @description Insert description here
// You can write your code in this editor
vsp = 0;
grv = 1;
walkspd = 1.5;
hsp = walkspd;
hp = 30;
flash = 0;
countdownrate = 40;
countdown = countdownrate;
GroundId1 = layer_get_id("Tiles_1")
ground1  = layer_tilemap_get_id(GroundId1);
GroundId2 = layer_get_id("Tiles_2");
ground2 = layer_tilemap_get_id(GroundId2);
GroundId3 = layer_get_id("Tiles_3");
ground3 = layer_tilemap_get_id(GroundId3);
GroundId4 = layer_get_id("Tiles_4");
ground4 = layer_tilemap_get_id(GroundId4);
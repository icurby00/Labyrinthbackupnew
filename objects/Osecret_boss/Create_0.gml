/// @description Insert description here
// You can write your code in this editor
player = Oplayer
hp = 20;
hsp = 0;
vsp = 0;
walkspd = 4;
grv = 1.2;
flash = 0;

facing_dir = 1;
image_xscale = facing_dir;


weapon_angle = 0;

GroundId1 = layer_get_id("Tiles_1")
ground1  = layer_tilemap_get_id(GroundId1);
GroundId2 = layer_get_id("Tiles_2");
ground2 = layer_tilemap_get_id(GroundId2);
GroundId3 = layer_get_id("Tiles_3");
ground3 = layer_tilemap_get_id(GroundId3);
GroundId4 = layer_get_id("Tiles_4");
ground4 = layer_tilemap_get_id(GroundId4);
GroundId5 = layer_get_id("Lava");
ground5 = layer_tilemap_get_id(GroundId5);
solid_list = [ground1, ground2, ground3, ground4, ground5, Ograss, Oenemyblock];
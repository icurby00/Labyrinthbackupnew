/// @description Insert description here
// You can write your code in this editor
vsp = 0;
hsp = 0;
grv = 1;
hp = 50;
flash = 0;
accel_force = 0.5;
limit_speed = true;
max_speed = 5;

player_detected = function() {
	//wait for player to be directly under
	if (instance_exists(Oplayer)) {
		if (collision_line(x, y, x, y + room_height, Oplayer, false, true) != noone) &&
			(collision_line(x, y, Oplayer.x, Oplayer.y, Ograss, false, true) == noone) {	
			return true;	
		}
	}
	return false;
}



state = boss_crusher.waiting;
GroundId1 = layer_get_id("Tiles_1")
ground1  = layer_tilemap_get_id(GroundId1);
GroundId2 = layer_get_id("Tiles_2");
ground2 = layer_tilemap_get_id(GroundId2);
GroundId3 = layer_get_id("Tiles_3");
ground3 = layer_tilemap_get_id(GroundId3);
GroundId4 = layer_get_id("Tiles_4");
ground4 = layer_tilemap_get_id(GroundId4);
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
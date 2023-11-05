/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
grv = 0;
walkspd = 1.5;
hsp = walkspd;
hp = 50;
flash = 0;
accel_force = 0.6;
limit_speed = true;
max_speed = 7;
countdownrate = 40;
countdown = countdownrate;
energy = 10;
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

state = boss_air.waiting;
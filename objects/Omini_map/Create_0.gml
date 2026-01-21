/// @description Insert description here
// You can write your code in this editor
x = 16;
y = 16;
scale = 0.12;
width = round(room_width * scale);
height = round(room_height * scale);
objects_to_draw = [
   Oplayer, c_white,
   pEnemy, c_red,
   Ocheckpoint_inactive, c_blue,
   Ocheckpoint_underwater_inactive, c_blue,
   Osavepoint, c_teal,
   Ohealth_recovery, c_green,
   Ohealthup, c_green
]
background_color = c_navy;
/// @description Insert description here
// You can write your code in this editor
// Mirror horizontal movement
hsp = -player.hsp;


vsp = player.vsp;


facing_dir = -player.facing_dir;
image_xscale = facing_dir;
var ang_player = point_direction(player.x, player.y, mouse_x, mouse_y) + 180;
weapon_angle = ang_player;
vsp += grv;


if (hsp != 0 && place_meeting(x + hsp, y, solid_list))
{
    while (hsp != 0 && !place_meeting(x + sign(hsp), y, solid_list))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;


if (vsp != 0 && place_meeting(x, y + vsp, solid_list))
{
    while (vsp != 0 && !place_meeting(x, y + sign(vsp), solid_list))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

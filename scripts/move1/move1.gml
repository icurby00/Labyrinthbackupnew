// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move1(){
	vsp = vsp + grv;
	if (place_meeting(x+hsp,y, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
		{
		while (!place_meeting(x+sign(hsp),y, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
	}
		x = x + hsp;

	if (place_meeting(x,y+vsp,[ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
	{
	while (!place_meeting(x,y+sign(vsp),[ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
		{
			y = y + sign(vsp);
		}
			vsp = 0;
		}
		y = y + vsp;
		

}
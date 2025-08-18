/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case HORROR_CREATURE_PHASE2.idle:
	{
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (alarm[0] == -1)
		{
			alarm[0] = room_speed * 2;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE2.movement:
	{
		alarm[1] = -1
		if (alarm[1] == -1)
		{
			alarm[1] = room_speed * 2;
		}
		vsp += grv;
        hsp = Approach(hsp, image_xscale * 4, 1);

        // Better ground detection
        var ahead_x = x + sign(hsp) * 16;
        var ahead_y = y + 1;
        var ground_ahead = place_meeting(ahead_x, ahead_y, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]);
        var on_ground = place_meeting(x, y + 1, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]);

        if (on_ground && !ground_ahead)
        {
            // Randomly jump or dash
            if (irandom(1) == 0)
                state = HORROR_CREATURE_PHASE2.jump;
            else
                state = HORROR_CREATURE_PHASE2.dash;
        }
		if (alarm[1] == 0)
		{
		    alarm[1] = -1;
		    state = HORROR_CREATURE_PHASE1.attack1;
		    break; // exit movement state early
		}


        // Wall climb detection
        if (place_meeting(x + image_xscale * 4, y, [ground1, ground2, ground3, ground4, Ograss]))
        {
            state = HORROR_CREATURE_PHASE2.climb;
        }

        // Horizontal collision
        if (!place_meeting(x + hsp, y, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
            x += hsp;

        // Vertical collision
        if (!place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
            y += vsp;
        else
        {
            while (!place_meeting(x, y + sign(vsp), [ground1, ground2, ground3, ground4, Ograss, Oenemyblock]))
                y += sign(vsp);
            vsp = 0;
        }

        if (hsp != 0) image_xscale = sign(hsp);
		
	}break;
	
	case HORROR_CREATURE_PHASE2.attack1:
	{
		alarm[1] = -1
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (energy > 0) {

            walkspd++;

            energy--;

        } else {

            state = HORROR_CREATURE_PHASE2.recovery;

        }
	}break;
	
	case HORROR_CREATURE_PHASE2.attack2:
	{
		alarm[1] = -1
		alarm[8] = -1;
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		walkspd = 12;
		if place_meeting(x,y,Oplayer)
		{
			global.hp = global.hp -2;
		}
		if (alarm[3] == -1)
		{
			alarm[3] = room_speed * 3;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE2.attack3:
	{
		alarm[1] = -1
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (energy == 0) energy = 4;
		if (alarm[4] == -1)
        {
            alarm[4] = room_speed * 2;
            energy--;
        }
		if (alarm[7] == -1)
		{
			alarm[7] = room_speed * 2;
		}

		
	}break;
	
	case HORROR_CREATURE_PHASE2.ranged_attack1:
	{
		alarm[1] = -1
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		if (energy == 0) energy = 3;
		if (alarm[4] == -1)
        {
            alarm[4] = room_speed * 2;
            energy--;
        }
		if energy == 0 
		{
			state = HORROR_CREATURE_PHASE2.idle;
		}
		
		
	}break;
	
	case HORROR_CREATURE_PHASE2.heal:
	{
		alarm[1] = -1
		move1()
		if (hsp != 0 ) image_xscale = sign(hsp);
		hp = hp + 10;
		if (alarm[2] == -1)
		{
			alarm[2] = room_speed * 2;
		}
		
	}break;
	
	case HORROR_CREATURE_PHASE2.climb:
	{
		alarm[1] = -1
		// Climb up if wall ahead
        if (place_meeting(x + image_xscale * 4, y, [ground1, ground2, ground3, ground4, Ograss]))
        {
            y -= 4;

            // Stop climbing if not touching wall or reached ceiling
            if (!place_meeting(x + image_xscale * 4, y, [ground1, ground2, ground3, ground4, Ograss])
             || place_meeting(x, y - 30, [ground1, ground2, ground3, ground4, Ograss]))
            {
                state = HORROR_CREATURE_PHASE2.movement;
            }
        }
        else
        {
            // Climb down if touching ceiling or stuck
            if (place_meeting(x, y - 16, [ground1, ground2, ground3, ground4, Ograss]))
            {
                y += 16;
                if (!place_meeting(x + image_xscale * 16, y, [ground1, ground2, ground3, ground4, Ograss]))
                {
                    state = HORROR_CREATURE_PHASE2.movement;
                }
            }
        }

	}break;
	
	case HORROR_CREATURE_PHASE2.jump:
	{
		alarm[1] = -1
		 if (alarm[11] == -1)
        {
            hsp = sign(hsp) * 16;
            alarm[11] = room_speed / 2;
        }

        vsp += grv;

        if (!place_meeting(x + hsp, y, [ground1, ground2, ground3, ground4, Ograss]))
            x += hsp;
        else
            hsp = -hsp;

        if (place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss]))
        {
            while (!place_meeting(x, y + sign(vsp), [ground1, ground2, ground3, ground4, Ograss]))
                y += sign(vsp);
            vsp = 0;
        }
        else
        {
            y += vsp;
        }

        if (alarm[11] == 0)
        {
            hsp = sign(hsp) * 4;
            alarm[11] = -1;
            state = HORROR_CREATURE_PHASE2.movement;
        }

        if (hsp != 0) image_xscale = sign(hsp);
	}break;
	
	case HORROR_CREATURE_PHASE2.recovery:
	{
		alarm[1] = -1
		energy = 3;
		if energy = 3
		{
			state = HORROR_CREATURE_PHASE2.heal;
		}
		
	}break;
	case HORROR_CREATURE_PHASE2.dash:
{
	alarm[1] = -1
    var dash_speed = 18;

    // Apply horizontal movement only (no gravity, it’s a leap)
    hsp = image_xscale * dash_speed;

    // Move forward
    if (!place_meeting(x + hsp, y, [ground1, ground2, ground3, ground4, Ograss])) {
        x += hsp;
    }

    // Allow to fall with gravity
    vsp += grv;
    if (!place_meeting(x, y + vsp, [ground1, ground2, ground3, ground4, Ograss])) {
        y += vsp;
    } else {
        // Landed
        while (!place_meeting(x, y + sign(vsp), [ground1, ground2, ground3, ground4, Ograss])) {
            y += sign(vsp);
        }
        vsp = 0;
        state = HORROR_CREATURE_PHASE2.movement
		jumping = false; // allow future jumps/dashes
    }

    // Optional safety: fallback if dash lasts too long
    if (alarm[9] == -1) alarm[9] = room_speed * 3;
    if (alarm[9] == 0) {
        state = HORROR_CREATURE_PHASE2.movement;
        alarm[9] = -1;
    }
}
break;
	
	
	
	
}
	// In movement state only:
if (state == HORROR_CREATURE_PHASE2.movement || state == HORROR_CREATURE_PHASE2.jump)
{
    vsp += grv;
    // Horizontal and vertical collision/movement here
}
// --- UNSTUCK TELEPORT CODE WITH HORIZONTAL SCAN ---
var max_teleport_fall = 256;
var max_horizontal_scan = 128;  // max horizontal distance to scan left and right
var found_ground = false;
var new_x = x;
var new_y = y;

// Check if on ground
var on_ground = place_meeting(x, y + 1, [ground1, ground2, ground3, ground4, Ograss]);

// Check if stuck inside wall or not on ground
var stuck_in_wall = place_meeting(x, y, [ground1, ground2, ground3, ground4, Ograss]);

// Track stuck time if stuck or NOT on ground
if (!on_ground || stuck_in_wall) {
    alarm[10] = (alarm[10] == -1) ? 0 : alarm[10] + 1;
} else {
    alarm[10] = -1; // reset stuck timer
}

// If stuck longer than 60 steps (~1 sec)
if (alarm[10] > 60)
{
    // Scan a grid around the boss horizontally and vertically for nearest ground spot
    // We scan horizontally in steps of 8 pixels, vertically downwards in steps of 4 pixels
    var scan_step_h = 8;
    var scan_step_v = 4;
    var closest_dist = 1000000; // large number
    var candidate_x = x;
    var candidate_y = y;

    
    for (var offset_x = -max_horizontal_scan; offset_x <= max_horizontal_scan; offset_x += scan_step_h)
    {
        for (var offset_y = 0; offset_y <= max_teleport_fall; offset_y += scan_step_v)
        {
            var check_x = x + offset_x;
            var check_y = y + offset_y;

            // Check if ground exists just below check_y
            if (place_meeting(check_x, check_y, [ground1, ground2, ground3, ground4, Ograss]))
            {
                // Also check if position above ground is free for boss to stand
                if (!place_meeting(check_x, check_y - 32, [ground1, ground2, ground3, ground4, Ograss]))
                {
                    // Calculate distance from current position to candidate
                    var dist = abs(offset_x) + offset_y;
                    if (dist < closest_dist)
                    {
                        closest_dist = dist;
                        candidate_x = check_x;
                        candidate_y = check_y - 1; // just above ground
                        found_ground = true;
                    }
                }
                break; // stop vertical scan at first ground found for this horizontal position
            }
        }
    }

    if (found_ground)
    {
        x = candidate_x;
        y = candidate_y;
        vsp = 0;
        state = HORROR_CREATURE_PHASE2.movement; // reset to movement after teleport
        alarm[10] = -1; // reset stuck timer
    }
}
show_debug_message("Boss State2: " + string(state));

	
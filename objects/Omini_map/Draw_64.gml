
var new_width  = width * 0.5;
var new_height = height * 0.5;
var new_scale  = scale * 0.5;


var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var new_x = gui_w - new_width;
var new_y = gui_h - new_height;


var map_cx = new_x + new_width / 2;
var map_cy = new_y + new_height / 2;
var map_radius = min(new_width, new_height) / 2;


draw_set_color(background_color);
draw_circle(map_cx, map_cy, map_radius, true);


var player_inst = instance_find(Oplayer, 0);


for (var i = 0; i < array_length(objects_to_draw); i += 2) {
    var map_object_index = objects_to_draw[i];
    var map_object_color = objects_to_draw[i + 1];

    for (var j = 0; j < instance_number(map_object_index); j++) {
        var inst = instance_find(map_object_index, j);

     
        var inst_x = map_cx + (inst.x - player_inst.x) * new_scale;
        var inst_y = map_cy + (inst.y - player_inst.y) * new_scale;

        var dx = inst_x - map_cx;
        var dy = inst_y - map_cy;

        if (dx*dx + dy*dy <= sqr(map_radius)) {
           
            if (inst.object_index == Oplayer) {
                draw_set_color(c_white);
                draw_circle(inst_x, inst_y, 5, false);
            }
        
            else if (object_is_ancestor(inst.object_index, pEnemy)) {
                draw_set_color(c_red);
                draw_circle(inst_x, inst_y, 4, false);
            }
     
            else if (inst.object_index == [Ocheckpoint_inactive, Ocheckpoint_underwater_inactive]) {
                draw_set_color(c_blue);
                draw_rectangle(inst_x-3, inst_y-3, inst_x+3, inst_y+3, false);
            }
            
            else if (inst.object_index == [Ohealth_recovery, Ohealthup]) {
                draw_set_color(c_green);
                draw_rectangle(inst_x-3, inst_y-3, inst_x+3, inst_y+3, false);
            }
            else if (inst.object_index == Osavepoint) {
                draw_set_color(c_teal);
                draw_rectangle(inst_x-3, inst_y-3, inst_x+3, inst_y+3, false);
            }
           
            else {
                draw_set_color(map_object_color);
                draw_circle(inst_x, inst_y, 3, false);
            }
        }
    }
}
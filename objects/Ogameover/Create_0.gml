/// @description Insert description here
// You can write your code in this editor
width = display_get_gui_width();
height = display_get_gui_height();
alpha = 0;


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 800;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[2] = "Continue From Checkpoint";
menu[1] = "Return to Title Screen";
menu[0] = "Close  Game";

menu_items = array_length(menu);
menu_cursor = 2;

sequenceState = seqstate.Notplaying;
curSeqLayer = "Gameover";
curSeq = Gameover;

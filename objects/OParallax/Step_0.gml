/// @description Insert description here
// You can write your code in this editor
var _cam_x = camera_get_view_x(view_camera[0]);

layer_x("Background_1", _cam_x * 0.02);
layer_x("Background_2", _cam_x * 0.03);
layer_x("Background_3", _cam_x * 0.035);
layer_x("Background_4", _cam_x * (0.2 * 2));
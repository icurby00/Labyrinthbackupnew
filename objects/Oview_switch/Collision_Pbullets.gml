/// @description Insert description here
// You can write your code in this editor
if !view_get_visible(1)
{
	view_set_visible(1,true);
	image_index = 1;
} else
{
	view_set_visible(1,false);
	image_index = 0;
}
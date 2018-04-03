/// @description Insert description here
// You can write your code in this editor
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

if(room==rm_title) draw_text(cx+cw/2.6, cy+350,"    Airship Down\nPress enter to start");
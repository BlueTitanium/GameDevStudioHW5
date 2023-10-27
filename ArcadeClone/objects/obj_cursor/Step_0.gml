/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

//have minimum cursor height
if(room == rm_game){
	y = clamp(y,0,700);	
}
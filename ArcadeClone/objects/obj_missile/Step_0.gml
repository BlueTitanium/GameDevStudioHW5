/// @description Insert description here
// You can write your code in this editor

if(point_distance(destinationX,destinationY,x,y) <= speed){
	instance_destroy();
	instance_create_layer(x,y,"Instances",obj_explosion);
}

direction = point_direction(x,y,destinationX,destinationY);


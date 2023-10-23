/// @description Insert description here
// You can write your code in this editor

if(point_distance(destinationX,destinationY,x,y) <= speed){
	
	var ex = instance_create_layer(x,y,"Instances",obj_explosion);
	ex.color = color;
	instance_destroy();
}

direction = point_direction(x,y,destinationX,destinationY);

part_emitter_region(global.ps_main, _trail_fx[0], x-2, x+2, y-2, y+2, ps_shape_rectangle, ps_distr_linear );
part_emitter_stream(global.ps_main, _trail_fx[0], _trail_fx[1], 1);
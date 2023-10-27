/// @description Insert description here
// You can write your code in this editor

if(growth_timer < growth_time){
	growth_timer++;	
	image_xscale = lerp(0,max_scale,growth_timer/growth_time);
	image_yscale = lerp(0,max_scale,growth_timer/growth_time);
}
else if(growth_timer == growth_time && decay_timer < decay_time){
	decay_timer++;
	image_xscale = lerp(max_scale, 0, decay_timer/decay_time);
	image_yscale = lerp(max_scale, 0, decay_timer/decay_time);
}
else if(decay_timer == decay_time){
	instance_destroy();	
}

//check collisions
var _inst_silo = instance_place(x,y,obj_silo);
if(_inst_silo != noone && _inst_silo.is_destroyed == false){
	_inst_silo.is_destroyed = true;	
	var ex = instance_create_layer(_inst_silo.x,_inst_silo.y,"Instances",obj_explosion);
}
var _inst_city = instance_place(x,y,obj_city);
if(_inst_city != noone && _inst_city.is_destroyed == false){
	_inst_city.is_destroyed = true;	
	var ex = instance_create_layer(_inst_city.x,_inst_city.y,"Instances",obj_explosion);
}

var _inst_missile = instance_place(x,y,obj_enemy_missile);
if(_inst_missile != noone){
	var ex = instance_create_layer(_inst_missile.x,_inst_missile.y,"Instances",obj_explosion);
	ex.color = _inst_missile.color;
	global.total_points+=_inst_missile.point_value;
	instance_destroy(_inst_missile);
	
}


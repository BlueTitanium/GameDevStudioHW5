/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
//30% chance to split
if(can_split < 0.3 && !has_split && y > can_split_height){
		var missile = instance_create_layer(x,y,"Instances",obj_enemy_missile);
		var _randomTargets = 
		[instance_find(obj_silo,0),
		instance_find(obj_silo,1),
		instance_find(obj_silo,2),
		instance_find(obj_city,0),
		instance_find(obj_city,1),
		instance_find(obj_city,2),
		instance_find(obj_city,3),
		instance_find(obj_city,4),
		instance_find(obj_city,5)];
		var randomTarget = _randomTargets[floor(random_range(0,3+6))];
		missile.destinationX = randomTarget.x;
		missile.destinationY = randomTarget.y;
		missile.speed = obj_wave_controller.missile_speed;
		has_split = true;
}
	
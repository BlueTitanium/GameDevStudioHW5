/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("R"))){
	
	room_restart();	
}

if(allow_spawning && missiles_to_spawn > 0 && spawn_timer <= 0){
	var spawn_amount = clamp(floor(random_range(1,5)),1,missiles_to_spawn);
	spawn_timer= random_range(min_spawn_timer,max_spawn_timer);
	for(var i = 0; i < spawn_amount; i++){
		missiles_to_spawn--;
		var missile = instance_create_layer(random_range(-32,room_width+32),-32,"Instances",obj_enemy_missile);
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
		missile.speed = .7;
	}
}
var _num_amount_enemies = instance_number(obj_enemy_missile);
if(allow_spawning == true && obj_game_manager.show_wave_end==false 
&& _num_amount_enemies==0 
&& missiles_to_spawn<=0){
	allow_spawning = false;
	obj_game_manager.end_step = -1;
	obj_game_manager.step_timer = 120;
	obj_game_manager.show_wave_end = true;
	obj_game_manager.num_bonus_ammo = 0;
	obj_game_manager.num_bonus_cities = 0;
	obj_game_manager.cur_silo = 0;
	obj_game_manager.cur_city = 0;
}


if(spawn_timer > 0){
	spawn_timer--;	
}


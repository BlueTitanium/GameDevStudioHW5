/// @description Insert description here
// You can write your code in this editor

if(!is_destroyed && ammo_remaining > 0 
&& keyboard_check_pressed(ord(corresponding_key))
&& obj_game_manager!=noone && !obj_game_manager.show_wave_end){
	var missile = instance_create_layer(x,y,"Instances",obj_missile);
	missile.destinationX = obj_cursor.x;
	missile.destinationY = obj_cursor.y;
	ammo_remaining -= 1;
	audio_play_sound(obj_system.shoot_sounds[
	floor(random_range(0,array_length(obj_system.shoot_sounds)))],
	1,
	false,
	.4);
}
visible = !is_destroyed;

if(obj_game_manager!=noone &&obj_game_manager.silos[index]==noone){
	obj_game_manager.silos[index] = id;	
}

if(!is_destroyed && ammo_remaining <= 3
&& !audio_played
&& obj_game_manager!=noone && !obj_game_manager.show_wave_end){
	audio_played = true;
	audio_play_sound(warning,
	1,
	false,
	.7);
}
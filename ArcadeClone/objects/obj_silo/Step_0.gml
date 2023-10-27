/// @description Insert description here
// You can write your code in this editor

if(!is_destroyed && ammo_remaining > 0 
&& keyboard_check_pressed(ord(corresponding_key))
&& obj_game_manager!=noone && !obj_game_manager.show_wave_end){
	var missile = instance_create_layer(x,y,"Instances",obj_missile);
	missile.destinationX = obj_cursor.x;
	missile.destinationY = obj_cursor.y;
	ammo_remaining -= 1;
}
visible = !is_destroyed;

if(obj_game_manager!=noone &&obj_game_manager.silos[index]==noone){
	obj_game_manager.silos[index] = id;	
}

/// @description Insert description here
// You can write your code in this editor



if(room!=rm_start && keyboard_check_pressed(ord("R"))){
	
	room_goto(rm_start);
	audio_play_sound(start,1,false,.4);
}


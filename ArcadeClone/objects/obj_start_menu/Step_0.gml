/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_anykey)
{
    room_goto(rm_game);
	
	audio_play_sound(start,1,false,.4);
}
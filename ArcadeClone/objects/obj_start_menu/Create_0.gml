/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(music)){
	audio_play_sound(music,1,true);
	audio_sound_gain(music,0,0);
	audio_sound_gain(music,.3,1000);
}
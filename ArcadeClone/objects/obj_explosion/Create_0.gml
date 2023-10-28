/// @description Insert description here
// You can write your code in this editor

image_xscale = 0;
image_yscale = 0;

max_scale = 1.5;
growth_time = 60;
growth_timer = 0;
decay_time = 60;
decay_timer = 0;

color = #FF0000;

audio_play_sound(obj_system.explosion_sounds[
	floor(random_range(0,array_length(obj_system.explosion_sounds)))],
	1,
	false,
	.4);
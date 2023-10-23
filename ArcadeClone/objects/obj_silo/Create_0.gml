/// @description Insert description here
// You can write your code in this editor

is_destroyed = false;
ammo_remaining = 10;

ammo_display = instance_create_layer(x,y,"Instances",obj_ammo_display);
ammo_display.corresponding_silo = id;

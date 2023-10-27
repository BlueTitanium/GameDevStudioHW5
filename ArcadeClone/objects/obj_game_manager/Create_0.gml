/// @description Insert description here
// You can write your code in this editor

missile_color = #4287f5;
enemy_color =  #d60606;
global.total_points = 0;
end_step = -1;
step_timer = 5;
show_wave_end = false;
num_bonus_ammo = 0;
num_bonus_cities = 0;
cur_silo = 0;
cur_city = 0;
silos = array_create(3,noone);
cities = array_create(6,noone);

show_end_screen = false;

should_lose_timer = 120;
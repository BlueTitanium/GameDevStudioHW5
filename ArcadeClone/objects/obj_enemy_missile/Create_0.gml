/// @description Insert description here
// You can write your code in this editor

color = obj_game_manager.enemy_color;

_trail_fx = obj_particle_controller.create_particle_trail(color,1000);

point_value = 25;

can_split = random_range(0,1);
if(y > room_height-460){
can_split_height = random_range(y+50,room_height-400);
} else {
can_split = 1; //cannot split	
can_split_height=room_height;
}
has_split = false;

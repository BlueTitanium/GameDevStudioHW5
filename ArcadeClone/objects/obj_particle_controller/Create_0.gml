/// @description Insert description here
// You can write your code in this editor

global.ps_main = part_system_create();
part_system_draw_order(global.ps_main, true);

function create_particle_trail(col = #FFFFFF){
	var ps = global.ps_main;
	
	var ptype1 = part_type_create();
	part_type_shape( ptype1, pt_shape_square );
	part_type_size( ptype1, 1, 1, -0.02, 0 );
	part_type_scale( ptype1, 0.3, 0.3);
	part_type_speed( ptype1, 0, 0, 0, 0);
	part_type_direction( ptype1, 270, 270, 0, 0);
	part_type_gravity( ptype1, 0, 270);
	part_type_orientation( ptype1, 0, 0, 0, 0, false);
	part_type_colour1( ptype1, col);
	part_type_alpha3( ptype1, 1, 1, 1);
	part_type_blend( ptype1, false);
	part_type_life( ptype1, 80, 80);

	var pemit1 = part_emitter_create( ps );
	part_emitter_region( ps, pemit1, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear );
	part_emitter_stream(ps, pemit1, ptype1, 0);
	return [pemit1,ptype1];
	
}


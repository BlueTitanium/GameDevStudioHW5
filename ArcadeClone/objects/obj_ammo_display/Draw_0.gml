/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(obj_game_manager.missile_color);
draw_set_font(fnt_regular_medium);
if(corresponding_silo.is_destroyed){
	if(!obj_game_manager.show_wave_end)
		draw_text_transformed(x,room_height-50,"OUT",1,1,0);
} else if(corresponding_silo.ammo_remaining <= 0){
	if(!obj_game_manager.show_wave_end)
		draw_text_transformed(x,room_height-50,"OUT",1,1,0);	
} else {
	if(corresponding_silo.ammo_remaining<=3 && !obj_game_manager.show_wave_end){
		draw_text_transformed(x,room_height-50,"LOW",1,1,0);	
	}
	var row = 1;
	var num_in_row = 0;
	var r = 5;
	var obj_space = 15;
	for(var i = 0;i < corresponding_silo.ammo_remaining; i++){
		var _x = (x - (row*obj_space/2)) + num_in_row*obj_space + obj_space/2;
		draw_sprite_ext(spr_missile,0,_x,y+row*obj_space + 20,.8,.8,90,c_white,1);
		//draw_circle(_x,y+row*obj_space + 20,r,false);
		num_in_row++;
		if(num_in_row == row){
			row++;	
			num_in_row=0;
		}
	}
}



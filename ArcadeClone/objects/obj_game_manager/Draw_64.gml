/// @description Insert description here
// You can write your code in this editor

draw_set_color(#FFFFFF);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fnt_regular_medium);
var height = 35;
draw_text(room_width/4,height,"" + string(global.total_points));
draw_set_halign(fa_center);
draw_text(room_width/2,height,"" + string(global.high_score));
draw_set_color(#0000FF);
draw_rectangle(room_width/4+10,height-5,room_width/4+20,height+5,false);

if(show_wave_end){
	switch(end_step){
		case -1:
			if(step_timer>0){
				step_timer-=1;	
			} else {
				step_timer = 5;
				end_step = 0;
			}
			break;
		case 0: //show bonus
			if(step_timer>0){
				step_timer-=1;	
			} else {
				step_timer = 5;
				end_step = 1;
			}
			draw_set_halign(fa_center);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2,room_height/2-60,"BONUS");
			break;
		case 1: //show points + ammo
			draw_set_halign(fa_center);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2,room_height/2-60,"BONUS");
			if(step_timer==5 && cur_silo < 3){
				if(silos[cur_silo].is_destroyed || silos[cur_silo].ammo_remaining <= 0){
					cur_silo++;
				} else {
					num_bonus_ammo++;
					silos[cur_silo].ammo_remaining--;	
				}
			}
			if(step_timer>0){
				step_timer-=1;
			} else {
				step_timer=5;
				if(cur_silo >= 3){
					global.total_points+= num_bonus_ammo*5;
					end_step = 2;
				}
			}
			draw_set_halign(fa_right);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2-10,room_height/2-30,""+string(num_bonus_ammo*5));
			draw_set_color(missile_color);
			for(var i = 0; i < num_bonus_ammo;i++){
				//draw_circle(room_width/2+10+i*(5*2+5),room_height/2-30,5,false);
				var _x = room_width/2+10+i*(5*2+5);
				var _y = room_height/2-30;
				draw_sprite_ext(spr_missile,0,_x,_y,.8,.8,90,c_white,1);
			}
			break;
		case 2: //show points + cities
			draw_set_halign(fa_center);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2,room_height/2-60,"BONUS");
			draw_set_halign(fa_right);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2-10,room_height/2-30,""+string(num_bonus_ammo*5));
			draw_set_color(missile_color);
			for(var i = 0; i < num_bonus_ammo;i++){
				var _x = room_width/2+10+i*(5*2+5);
				var _y = room_height/2-30;
				draw_sprite_ext(spr_missile,0,_x,_y,.8,.8,90,c_white,1);
			}
			
			if(step_timer==5 && cur_city < 6){
				if(cities[cur_city].is_destroyed){
					cur_city++;
				} else {
					cities[cur_city].should_show = false;
					cur_city++;
					num_bonus_cities++;
				}
			}
			
			if(step_timer>0){
				step_timer-=1;
			} else {
				step_timer=5;
				if(cur_city >= 6){
					global.total_points+= num_bonus_cities*100;
					step_timer=60;
					end_step = 3;
				}
			}
			
			draw_set_halign(fa_right);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2-10,room_height/2,""+string(num_bonus_cities*100));
			for(var i = 0; i < num_bonus_cities;i++){
				draw_sprite(spr_city,0,room_width/2+16+i*(32+5),room_height/2);
			}
			
			break;
		case 3:	//end/goto next wave
			draw_set_halign(fa_center);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2,room_height/2-60,"BONUS");
			draw_set_halign(fa_right);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2-10,room_height/2-30,""+string(num_bonus_ammo*5));
			draw_set_color(missile_color);
			for(var i = 0; i < num_bonus_ammo;i++){
				var _x = room_width/2+10+i*(5*2+5);
				var _y = room_height/2-30;
				draw_sprite_ext(spr_missile,0,_x,_y,.8,.8,90,c_white,1);
			}
			draw_set_halign(fa_right);
			draw_set_color(#FFFFFF);
			draw_text(room_width/2-10,room_height/2,""+string(num_bonus_cities*100));
			for(var i = 0; i < num_bonus_cities;i++){
				draw_sprite(spr_city,0,room_width/2+16+i*(32+5),room_height/2);
			}
			if(step_timer>0){
				step_timer-=1;
			} else {
				show_wave_end=false;
				room_goto(rm_end);
			}
			break;
		default:
			break;
	}
}
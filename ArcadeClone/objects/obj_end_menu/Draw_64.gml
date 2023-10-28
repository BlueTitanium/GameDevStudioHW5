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
draw_set_color(#00FFFF);
draw_rectangle(room_width/4+10,height-5,room_width/4+20,height+5,false);

draw_set_color(#FFFFFF);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_regular_big);

var s = "";
if(global.total_points < 400){ //equivalent of 4 cities surviving (in terms of bonus points)
	s = "nice try...";
} else {
	s = "GREAT SCORE";	
}
draw_text(room_width/2,room_height/2,s);


//draw_set_font(fnt_regular_medium);
//draw_text(room_width/2,room_height/2 + 60,"ENTER YOUR INITIALS");
draw_set_font(fnt_regular_medium);
draw_text(room_width/2,room_height - 100,"press any key to return to start");



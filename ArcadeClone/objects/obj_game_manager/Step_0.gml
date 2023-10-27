/// @description Insert description here
// You can write your code in this editor

var shouldLose = true;

for(var i = 0; i<array_length(cities);i++){
	if(cities[i] == noone){
		shouldLose = false;	
	} else if(!cities[i].is_destroyed){
		shouldLose = false;	
	}
}

if(shouldLose){
	should_lose_timer-=1;
}
if(should_lose_timer <=0){
	room_goto(rm_end);	
}



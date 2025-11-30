/// @description Insert description here
// You can write your code in this editor
vsp +=gra;
if(hp<0 && state1==0){
	state1=1;
hsp=lengthdir_x(3,direction);
vsp=lengthdir_y(3,direction)+10;
}
if(image_alpha<0) instance_destroy();
//move left - right
if(place_meeting(x+hsp,y,O_Wall)){
	while(!place_meeting(x+hsp,y,O_Wall)){
	x+=sign(hsp);
	}
hsp=0;
}
//move up-down
if(place_meeting(x,y+vsp,O_Wall)){
	while(!place_meeting(x,y+vsp,O_Wall)){
	y+=sign(vsp);
	}
vsp=0;
if(state1==1){
hsp=0;
image_alpha-=0.01;
}
}
x+=hsp;
y+=vsp;
if(!place_meeting(x,y+1,O_Wall)){
	sprite_index=S_Pain_Standing;
	image_speed=0;
}
else{
	image_speed=1;
	
if(hsp==0){
sprite_index=S_Pain_Standing;
}
else{
sprite_index=S_Pain_Standing;
}
}
if((x - O_Naruto_Player.x)>0){


image_xscale=-1;}
else{
image_xscale=1;}
image_yscale=2;
k=x+40;
j=y-45;
if(point_distance(x,y,O_Naruto_Player.x,O_Naruto_Player.y)<500){
sprite_index=S_Pain_Dame;
image_speed=1;
}
countdown=countdown-1;
if((point_distance(x,y,O_Naruto_Player.x,O_Naruto_Player.y)<500) && countdown<0){
	
countdown = 10;
// Tạo đạn tại vị trí k, j
var _bullet = instance_create_layer(k, j, layer, O_Shinra);

// Chỉnh thông số cho viên đạn vừa tạo
with (_bullet) {
    if (other.image_xscale > 0) {
        hspeed = 15;        // Bay sang phải
        image_xscale = 1;   // Hình quay sang phải
    } else {
        hspeed = -15;       // Bay sang trái
        image_xscale = -1;  // Hình quay sang trái
        x = other.k - 120;  // Chỉnh lại vị trí xuất hiện nếu cần
    }
}
}
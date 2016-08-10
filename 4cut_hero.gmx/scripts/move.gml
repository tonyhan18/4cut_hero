///move(Collision_object)

var obj = argument0;

//Horizontal Collision
if(place_meeting(x+hspd,y,obj)){
    while(!place_meeting(x+sign(hspd),y,obj)){
        x+=sign(hspd);
    }
    hspd=0;
}
x+=hspd;

//Vertical Collision
if(place_meeting(x,y+vspd,obj)){
    while(!place_meeting(x,y+sign(vspd),obj)){
        y+=sign(vspd);
    }
    vspd=0;
}
y+=vspd;

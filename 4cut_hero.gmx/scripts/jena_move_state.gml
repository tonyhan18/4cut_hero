///jena_move_state()
if(!place_meeting(x,y+1,obj_solid)){
    vspd+=grav;
    
    if(vspd<-6 && up_relese==true){
        vspd = -6;
    }
} else{
    vspd = 0;
    if(up){
        vspd =-16;
    }
}

move(obj_solid);

if(right || left){
    hspd +=(right -left)*acc;
    
    if(hspd>spd) hspd = spd;
    if(hspd<-spd) hspd = -spd;
} else {
    add_friction(acc);
}

if(hspd!=0) image_xscale = sign(hspd);

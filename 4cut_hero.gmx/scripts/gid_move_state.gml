///gid_move_state()
get_input();

if(!place_meeting(x,y+1,obj_solid_mask)){
    vspd+=grav;
    
    if(vspd<-6 && up_release){
        vspd = -6;
    }
} else{
    vspd = 0;
    
    if(up){
        vspd =-16;
    }
    
    if(hspd!=0){
        sprite_index = spr_gid_basic_walk;
        image_speed = .3;
    }else{
        sprite_index = spr_gid_basic_idle;
        image_speed = .1;
    }
}

if(right || left){
    hspd +=(right -left)*acc;
    
    if(hspd>spd) hspd = spd;
    if(hspd<-spd) hspd = -spd;
} else {
    add_friction(acc);
}

if(hspd!=0) {
    image_xscale = sign(hspd);
}

move(obj_solid_mask);


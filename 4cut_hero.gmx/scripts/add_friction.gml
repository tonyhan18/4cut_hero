///add_friction(acc);
var acc = argument0;

if(hspd!=0){
    if(abs(hspd)-acc >0){
        hspd -= image_xscale * acc;
    } else{
        hspd =0; 
    }
}

///intro_end()

if(keyboard_check(vk_anykey)){
    room_goto_next();
}else{alarm[0] -= 1;}

if(alarm[0] == 0){
    room_goto_next();
}

/// f_key_up(control);

var key = argument0;
if(key == undefined || key == "") return false;

var keycode = o_main.ctrl[key, o_main.gp_using + 1];
if(keycode == undefined) return false;

if((keycode == mb_left || keycode == mb_any || keycode == mb_middle ||
    keycode == mb_none || keycode == mb_right) && !o_main.gp_using){
    return mouse_check_button_released(keycode);
}

if (o_main.gp_using) return gamepad_button_check_released(o_main.gp_in_use, keycode);
return keyboard_check_released(keycode);


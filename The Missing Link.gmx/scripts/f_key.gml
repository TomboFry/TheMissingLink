/// f_key(control);

var key = argument0;
if(key == undefined || key == "") return false;

var keycode = o_main.ctrl[key, o_main.gp_using + 1];
if(keycode == undefined) return false;

if((keycode == mb_left || keycode == mb_any || keycode == mb_middle ||
keycode == mb_none || keycode == mb_right) && !o_main.gp_using){
    return mouse_check_button(keycode);
}

if (o_main.gp_using){
    var res = gamepad_button_check(o_main.gp_in_use, keycode);
    if (res) return res;
    
    var axisv = gamepad_axis_value(o_main.gp_in_use, gp_axislv);
    var axish = gamepad_axis_value(o_main.gp_in_use, gp_axislh);

    switch(key) {
        case Controls.Up:
            return abs(clamp(axisv, -1, 0));
        case Controls.Down:
            return abs(clamp(axisv, 0, 1));
        case Controls.Left:
            return abs(clamp(axish, -1, 0));
        case Controls.Right:
            return abs(clamp(axish, 0, 1));
        default:
            return false;
            break;
    }
}

return keyboard_check(keycode);


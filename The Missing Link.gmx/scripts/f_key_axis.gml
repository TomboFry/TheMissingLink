/// f_key_axis(control);

var key = argument0;
if(key == undefined || key == "") return 0;

var keycode = o_main.ctrl[key, o_main.gp_using + 1];

if (o_main.gp_using) {
    return gamepad_axis_value(o_main.gp_in_use, keycode);
} else {
    if(key == Controls.AxisVert){
        return mouse_y;
    } else if(key == Controls.AxisHorz) {
        return mouse_x;
    }
}

return 0;


/// f_time_scale(speed);

if (argument_count == 0) {
    return o_main.time_scale;
} else {
    o_main.time_scale = argument[0];
}

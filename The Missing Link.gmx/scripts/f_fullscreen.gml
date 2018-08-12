/// f_fullscreen(enabled);

var fs = argument0;

window_set_fullscreen(fs);

if (!fs) {
    window_set_size(o_main.screen_width * o_main.scale, o_main.screen_height * o_main.scale);
    window_center();
}

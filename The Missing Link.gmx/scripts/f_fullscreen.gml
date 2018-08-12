/// f_fullscreen(enabled);

var fs = argument0;

window_set_fullscreen(fs);

if (fs == true) {
    o_main.scale = display_get_height() / o_main.screen_height;
    show_debug_message(o_main.scale);
} else {
    o_main.scale = 2;
    window_set_size(o_main.screen_width * o_main.scale, o_main.screen_height * o_main.scale);
    window_center();
}

/// f_draw_tooltip(view, str);

var view = argument0;
var str = argument1;

draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var xx = view_xview[view] + (view_wview[view] / 2);
var yy = view_yview[view] + view_hview[view] - 4;

draw_text_ext(xx, yy, str, string_height(' ') - 2, view_wview[view]);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

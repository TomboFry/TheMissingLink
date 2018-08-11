/// f_key_str(key);

var key = argument0;

switch(o_main.ctrl[key, o_main.gp_using + 1]) {
    case(mb_left):
        return "Left Mouse";
        break;
    case(mb_right):
        return "Right Mouse";
        break;
    case(mb_middle):
        return "Middle Mouse";
        break;
}

var result = "";
result = ds_map_find_value(o_main.keys[o_main.gp_using], o_main.ctrl[key, o_main.gp_using + 1]);

if(result != undefined){
    return result;
} else {
    return "N/A";
}


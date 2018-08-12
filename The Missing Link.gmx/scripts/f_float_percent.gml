/// f_float_percent(val, ?whole_number);

// Converts a float value to a percentage string

var val = argument[0] * 100;
if (argument_count >= 2 && argument[1] == true) {
    val = round(val);
}

return string(val) + '%';


/// f_inventory_size_used(inv);

var inv = argument0;
var count = 0;

for (var j = 0; j < inv.cols; j++) {
    for (var i = 0; i < inv.rows; i++) {
        if (inv.inventory[# i, j] != noone) count++;
    }
}

return count;

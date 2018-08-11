/// f_inventory_size_free(inv);

var inv = argument0;

return f_inventory_size_total(inv) - f_inventory_size_used(inv);

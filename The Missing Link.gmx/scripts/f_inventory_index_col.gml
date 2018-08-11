/// f_inventory_index_col(inv, index);

// Returns the column number based on a given index of an inventory

var inv = argument0;
var index = argument1;

return index mod inv.cols;

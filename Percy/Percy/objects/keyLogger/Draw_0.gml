var i;
var s = "";
for(i = 0; i < ds_list_size(keyCodes); i += 1)
{
    //s = "AT FRAME ";
    //s += string(ds_list_find_value(keyTimes, i));
    //s += " YOU PRESSED KEY ";
    s = chr(ds_list_find_value(keyCodes, ds_list_size(keyCodes)-1));
    //s += " (CODE: ";
    //s += string(ds_list_find_value(keyCodes, i));
    //s += ")."
    draw_text(128, 20, s);
}
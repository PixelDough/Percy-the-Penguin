if(keyboard_check(vk_anykey))
{
    ds_list_add(keyCodes, keyboard_key);
    ds_list_add(keyTimes, frame);
}
frame += 1;


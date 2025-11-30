// --- Di chuyển Menu ---
menu_x += (menu_x_target - menu_x) / menu_speed;

// --- Điều khiển bàn phím ---
if (menu_control)
{
    if (keyboard_check_pressed(vk_up))
    {
        menu_cursor++;
        if (menu_cursor >= menu_items) menu_cursor = 0;
    }

    if (keyboard_check_pressed(vk_down))
    {
        menu_cursor--;
        if (menu_cursor < 0) menu_cursor = menu_items - 1;
    }

    if (keyboard_check_pressed(vk_enter))
    {
        menu_x_target = gui_width + 200; // Đẩy menu ra khỏi màn hình
        menu_commited = menu_cursor;     // Ghi nhận lựa chọn
        menu_control = false;            // Khóa điều khiển
    }
}

// --- Xử lý khi chọn xong (Menu đã bay ra khỏi màn hình) ---
if ((menu_x > gui_width + 150) && (menu_commited != -1))
{
    switch (menu_commited)
    {
        case 3: 
            // Ví dụ: New Game
            SlideTransition(TRANS_MODE.NEXT, room);
            break;
            
        case 1: 
            // Ví dụ: Continue (Load game)
            if (!file_exists(SAVEFILE))
            {
                SlideTransition(TRANS_MODE.NEXT, room);
            }
            else
            {
                var file = file_text_open_read(SAVEFILE);
                var target = file_text_read_real(file);
                file_text_close(file);
                SlideTransition(TRANS_MODE.GOTO, target);
            }
            break;
            
        case 2:
            // Ví dụ: How To Play (Đảm bảo HowToPlay là tên Room của bạn)
            SlideTransition(TRANS_MODE.GOTO, HowToPlay);
            break;
            
        case 0: 
            // Quit Game
            game_end(); 
            break;
    }
}
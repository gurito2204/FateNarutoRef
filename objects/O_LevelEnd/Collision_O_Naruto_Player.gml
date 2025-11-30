// Kiểm tra xem biến target có tồn tại và khác không
if (variable_instance_exists(id, "target") && target != noone) {
    SlideTransition(TRANS_MODE.GOTO, target);
}
else {
    // Nếu quên set target, game sẽ không biết đi đâu -> Lỗi
    show_debug_message("Quên set target cho cửa rồi!");
}
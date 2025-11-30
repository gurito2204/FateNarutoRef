// 1. Di chuyển đạn
x += hspeed; 
// (Lưu ý: mình dùng hspeed ở đây để khớp với code trong O_Pain bên dưới)

// 2. Xoay hình ảnh theo hướng bay
if (hspeed > 0) image_xscale = 1;
else image_xscale = -1;

// 3. Xóa đạn nếu bay ra ngoài màn hình (để đỡ nặng máy)
if (bbox_right < 0 || bbox_left > room_width) {
    instance_destroy();
}
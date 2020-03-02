1. Mở CMD chạy câu lệnh `composer update` - tải tất cả thư viện về và sinh ra file autoload.php
2. Sửa lại `BASE_URL` trong `commons/helpers.php` đúng với đường dẫn web (localhost) của dự án
3. Mở file _commons/database.php_ - config kết nối database
4. Tạo ra các **Models** trong thư mục _models_ để đối ứng với các bảng trong cơ sở dữ liệu
5. Tạo ra các **Controllers** - nhớ kế thừa `BaseController` để sử dụng được hàm render
6. Tạo ra các đường dẫn trong file _commons/Routing_ để quy định đường dẫn của dự án

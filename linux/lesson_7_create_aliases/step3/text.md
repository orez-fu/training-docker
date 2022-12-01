# Alias cho mọi người dùng

Ở đây sẽ là phần của quản trị viên.

Ở phần trước, chúng ta đã thêm alias cho người dùng hiện tại. Chúng ta có thể thêm alias cho tất cả người dùng có trong hệ thống. Để làm được việc đó, chúng ta cần động chạm tới cấu hình hệ thống. Có vài cách có thể làm alias này hoạt động, chúng ta sẽ tìm hiểu cách tốt nhất.

Trong Killercoda, chúng ta đăng nhập vào hệ thống bài lab với người dùng như là root, vì vậy chúng ta đã sẵn sàng để thêm alias toàn cầu.

Nơi lưu trữ alias một cách bền vững của hệ thống, đó là tệp tin trong thư mục `/etc/profile.d`.

Một chút lý thuyết, khi bạn đăng nhập vào hệ thống, tệp `~/.profile` trong thư mục home sẽ được nạp vào phiên làm việc. Nhưng trước đó là các tệp tin `/etc/profile`. Tệp này sẽ chỉ ra thư mục `/etc/profile.d` là nơi chứa các biến, các alias, script được nạp. Vì vậy chúng ta có thể thêm alias cho toàn bộ người dùng bằng cách thêm mới tệp tin và thêm alias

```plain
echo "alias lh2='ls -alh'" >> /etc/profile.d/99-aliases.sh
 ```{{exec}}

File chúng ta vừa tạo có đuôi `.sh`. Đây là script sẽ được nạp vào phiên làm việc, nhưng chưa phải phiên làm việc hiện tại của chúng ta.

Chúng ta có thể mở mới một phiên làm việc thông qua lệnh 

```plain
sudo -i
```{{exec}}

Và alias `lh2` sẽ hoạt động.

```plain
lh2
```{{exec}}

Nếu bạn muốn xóa bỏ những alias bền vững này, đơn giản là truy cập vào tệp tin chứa alias và xóa. Hãy nhớ sử dụng `source` hoặc mở một phiên làm việc mới.

# Time to go home!

Trước hết, hãy hiểu về thư mục `home`, mỗi người dùng trong hệ thống Linux, có thể sẽ có một thư mục gọi là `home`, cho phép user lưu trữ cấu hình riêng, cũng như có thể lưu trữ những tệp tin cá nhân. Lưu ý, user đặc biệt `root` sẽ có thư mục `home` đặc biệt so với các user khác, đường dẫn của thư mục user này là `/root`. Còn của 1 user thông thường, ví dụ user `ubuntu`, sẽ thường có đường dẫn thư mục `home` là `/home/ubuntu`.

Vì vậy, đôi khi chúng ta cần trở về thư mục `home`, hiện tại chúng ta đang có người dùng ubuntu, hãy tới `home` của người dùng này

```plain
cd /home/ubuntu
pwd
```{{exec}}

Cách này thực sự không mấy vui. Hãy thử chuyển hướng sang thư mục khác và cùng quay trở lại thư mục `home` của người dùng ubuntu

```plain
cd /var/log
```{{exec}}

```plain
pwd
```{{exec}}

```plain
cd $HOME
```{{exec}}

Chúng ta thực sự đã truyền biến vào trong câu lệnh `cd`, biến `HOME` sẽ chứa đường dẫn tới thư mục `home` mà chúng ta mong muốn.

Có vài cách rút gọn mà chúng ta có thể chuyển về thư mục `home`, bạn hãy thử di chuyển tới một thư mục bất kỳ và sử dụng 2 lệnh dưới đây để trở về thư mục `home`:

```plain
cd
```{{exec}}

hoặc

```plain
cd ~
```{{exec}}

Yes, chỉ cần `cd` là chúng ta đã có thể trở về thư mục `home`.
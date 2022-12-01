# Chỉnh sửa user

Chúng ta sẽ tiếp tục trong phần cơ bản về user và group. Ở đây chúng ta sẽ đi qua chức năng chỉnh sửa user tồn tại trong hệ thống. Dĩ nhiên là có nhiều thông tin có thể thay đổi cùng user, nhưng ... sẽ không đi qua hết trong lab này.

## `passwd`

Câu lệnh thực sự hữu dùng và phổ biến của nhiều admin, đó là đổi mật khẩu. Để đổi mật khẩu cho user, chúng ta sử dụng lệnh với cú pháp `passwd <user>`. Nếu user không được cung cấp trong lệnh, nó được được ngầm định là user hiện tại.

Chúng ta có `testuser3` được tạo ở phần trước. Chúng ta sẽ chỉnh sửa user này.

```plain
grep testuser3 /etc/shadow
```{{exec}}

```plain
passwd testuser3
```{{exec}}

Ở đây chúng ta sẽ cần nhập password 2 lần.

```plain
grep testuser3 /etc/shadow
```{{exec}}

Như bạn thấy, mật khẩu đã được thay đổi.

## `usermod`

Với lệnh `usermod` chúng ta có thể thay đổi primary group của `testuser3`

```plain
usermod testuser3 -g testuer2
```{{exec}}

Bây giờ, user `testuser3` đã có primary group là `testuser2`

```plain
grep testuer3 /etc/passwd
```{{exec}}

Ở đối số `-g`, chúng ta có thể truyền vào tên group như lệnh `usermod` vừa chạy hoặc GID như lệnh sau:

```plain
usermod testuser3 -g 1003
```{{exec}}

1003 là GID có group name là `testuser3`. Mục đích của câu lệnh này là chúng ta đưa `testuer3` về lại primary group ban đầu. Hãy kiểm tra user lần nữa

```plain
grep testuser3 /etc/passwd
```{{exec}}

Trong `usermod`, đối số `-G` cho phép thiết lập danh sách group cho user, nhưng thông thường chúng ta sẽ kết hợp với đối số `-a` (append) để thêm group vào cho trong danh sách secondary group của user. 

```plain
usermod testuser3 -aG 1001
```{{exec}}

Thêm group 1001(testuser1) cho user `tesuser3`. Hay chúng ta có thể dùng lệnh `groups` để lấy ra danh sách groups của một user

```plain
groups testuser3
```{{exec}}

Thư mục `home`, nơi lưu trữ cấu hình riêng của user, sẽ được thực hiện ngay sau:

```plain
usermod testuser3 -d /home/newdir -m
```{{exec}}

Hãy kiểm tra:

```plain
grep testuser3 /etc/passwd
```{{exec}}

```plain
ls -l /home
```{{exec}}

Chúng ta đã thấy thư mục `/home/newdir` được tạo và là thư mục home cho `testuer3`. Hãy lưu ý đừng ăn gian đối số `-m`, đây là tham số tạo thư mục home, còn `-d` là định nghĩa đường dẫn tới thư mục home.

# Shell

Hãy chỉnh sửa shell của user.

```plain
usermod testuser3 -s /bin/sh
```{{exec}}

```plain
grep testuser3 /etc/passwd
```{{exec}}

Chúng ta có thể thấy shell đã được đổi sang `/bin/sh`.

# Xóa user

Đã đến lúc chúng ta biết về xóa user. Để làm được điều này, thực thi lệnh

```plain
userdel testuser1
```{{exec}}

Điều này chỉ xóa đi user, còn group `usertest1` vẫn có thể tồn tại nếu nó còn user bên trong.

Còn thư mục home nữa, chúng ta có thể xóa bằng cách thêm đối số như sau cho việc xóa `testuser3`:

```plain
userdel -rf testuer3
```{{exec}}

`r` - remove files, xóa thư mục home
`f` - force removal, buộc xóa thư mục trong trường hợp có những tệp tin ngoại lệ không thuộc về user.

```plain
grep testuser /etc/passwd
```{{exec}}

```plain
ls -l /home
```{{exec}}

Mọi thứ đã hoạt động!




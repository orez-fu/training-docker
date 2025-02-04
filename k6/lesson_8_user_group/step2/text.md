# Tệp tin liên quan tới cấu hình user

Chúng ta có 4 tệp tin liên quan tới cấu hình của user. Hãy cùng nhau đi qua từng tệp tin.

## `passwd`

Tệp tin đầu tiên chúng ta nhắc tới là passwd. Hầu hết các tệp tin cấu hình nằm trong thư mục `/etc`, passwd không phải là một ngoại lệ.

```plain
clear && cat /etc/passwd
```{{exec}}

Cấu trúc của tệp tin này sẽ như sau:

`username:password:UID:GID:description:homedir:shell`

- `username` - dĩ nhiên, là tên của user
- `password` - mật khẩu. Bạn sẽ không thấy mật khẩu thực sự vì lý do bảo mật, chỉ là một dấu `x` đại diện cho mật khẩu được mã hóa và lưu trữ ở một tệp tin khác.
- `UID` - định danh user, sẽ là số duy nhất trong hệ thống
- `GID` - định danh group, sẽ là số duy nhất trong hệ thống
- `description` - trường này bao gồm các thông tin về user: Real first and last name, Address, Phone number, Organization & Role.
- `homedir` - đường dẫn chỉ tới thư mục home, nơi lưu trữ dữ liệu và cấu hình riêng của user.
- `shell` - nói một cách đơn giản, shell là chương trình sẽ nhận lệnh từ người dùng, thông dịch sang ngôn ngữ máy tính, và trả về kết quả.

## `shadow`

Tệp tin khác chúng ta vừa nhắc ở phía trên, chính là tệp `shadow` này. Tệp tin này chứa thông tin nhạy cảm về người dùng, như mật khẩu, và các cấu hình khác. Hãy tập trung vào trường mật khẩu trong nội dung của `shadow`.

```plain
clear && cat /etc/shadow
```{{exec}}

Ở 2 trường thông tin đầu, đó là `username` và `password`. 
- Nếu mật khẩu được thiết lập cho người dùng, nó được hash và không thể 'lấy được thông tin` chỉ bằng cách nhìn bằng mắt. Có những công cụ cho phép chúng ta crak password.
- `*` thể hiện user không được thiết lập password, chỉ có thể dùng key để truy cập.
- '!' mật khẩu không bao giờ được thiết lập.

## `group`

Tệp tin `/etc/group` bao gồm thông tin về group.

```plain
clear && cat /etc/group
```{{exec}}

Cấu trúc bao gồm:
- group name - tên group
- password - mật khẩu, thực sự rất hiếm, hiếm tới nỗi chưa thấy lúc nào cần sử dụng mật khẩu cho group :D
- GID - định danh của group
- list users - danh sách users thuộc về group 

## `gshadow`

Tệp tin cuối cùng là `/etc/gshadow`.

```plain
clear && cat /etc/gshadow
```{{exec}}

Tệp tin này chứa thông tin mật khẩu cho groups.



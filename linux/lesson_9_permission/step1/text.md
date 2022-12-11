# Lý thuyết

Trong phần này, chúng ta sẽ đi qua lý thuyết về các quyền.

Hãy bắt đầu với lệnh:

```plain
ls -al
```{{exec}}

Chúng ta thấy danh sách tệp tin và thư mục ở dạng long list. Trước hết, chúng ta chỉ cần tập trung vào cột đầu tiên của mỗi dòng. Về matrix chuỗi permissions.

## Giải thích về chuỗi permissions

![directories](permission_basic.png)

Tôi sẽ chia chuổi này thành 4 phần.

Ở phần đầu, chúng ta có thông tin về `object type` - phân loại đối tượng. Có thực sự nhiều đối tượng tệp tin cho Linux:

- `-` - normal, tệp tin thông thường
- `d` - directory, thư mục
- `l` - soft/symbolic link, tệp tin liên kết
- `b` - block special file, tệp tin đặc biệt cho khối lưu trữ(đại diện cho ổ đĩa - hard drive)
- `c` - character special file, tệp tin cho các thiết bị ngoại vi
- `n` - network file, tệp tin cho network
- `p` - FIFO
- `s` - socket

Có những loại tệp phổ biến, nhưng chúng ta sẽ không đi sâu khi cần hiểu về cơ bản trong Linux.

Chúng ta đã mô tả về ký tự đầu tiên. Còn 9 ký tự nữa.

Đừng lo lắng, bây giờ nó sẽ đi rất nhanh.

Hãy nhìn trở lại hình phía trên, chúng ta còn 3 khối nữa, chúng có sự liên quan với người dùng hoặc nhóm người dùng.

- `Owner` - Đây là user sở hữu tệp tin.
- `Group` - Đây là group sở hữu tệp tin. Không nhất thiết phải là group chứa user owner. Ví dụ: một tệp cấu hình của ứng dụng có thể có owner là user tải tệp tin lên, nhưng ứng dụng sử dụng cấu hình này không được điều hành bởi user này mà là một user khác nằm trong một group khác.
- `Others` - Tất cả những user còn lại trong hệ thống.

Ok, chúng ta đã biết về 3 khối đại diện cho những gì, giờ là thời gian để nói về ý nghĩa của mỗi ký tự.

Hãy nhìn lại kết quả của lệnh `ls -al` bên phía terminal. Chúng ta thấy rất nhiều đối tượng và các chuỗi permission các nhau.

Mỗi khối(owner, group, others) được xây dựng bởi 3 phần tử:
- `r` - quyền `Read` được cấp
- `w` - quyền `Write` được cấp
- `x` - quyền `Execute` được cấp

Và, đây là một ví dụ:

```plain
drwx------ 2 root root 4096 May 2 10:20 .ssh
```

Chúng ta thấy, đây là một thư mục (`d`) với full quyền truy cập bởi owner(`rwx`) và không cấp quyền nào cho group và others(`---`).

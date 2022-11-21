# Xóa thư mục

Hãy trở lại thư mục `home` của người dùng `root`, và xem nội dung của thư mục này

```plain
cd root
ls -l
```{{exec}}

Đầu tiên chúng ta xóa thư mục `myfirstdirectory`

```plain
rmdir myfirstdirectory
```{{exec}}

Câu lệnh này là viết tắt của cụm `remove directory`. Câu lệnh này chỉ hoạt động nếu thư mục truyền vào là rỗng. Với thư mục `parentdir` sẽ không được tính là thư mục rỗng, vì bên trong chứa thư mục con, hãy thử xóa thư mục `parentdir`

```plain 
rmdir parentdir
```{{exec}}

Chúng ta sẽ không xóa được thư mục này. Một cách khác, tiện lợi hơn để xóa thư mục là lệnh `rm`. Câu lệnh này hoạt động với file, và đừng quên, mọi thứ trong Linux đều là file, nó cũng đúng với thư mục.

```plain
rm thirddirectory
```{{exec}}

`thirddirectory` là thư mục rỗng, chúng ta có thể xóa đơn tương tự như lệnh `rmdir`. Nhưng để xóa
một thư mục khác rỗng, hãy truyền thêm 2 đối số như sau

```plain
rm -rf parentdir
```{{exec}}

Câu lệnh sẽ hoạt động và xóa đi thư mục `parentdir` cũng như các nội dung trong nó. 2 đối số mà chúng ta dùng

- `-r` nghĩa là lặp đi lặp lại trong suốt các thư mục
- `-f` force. Nghĩa là sẽ xóa thư mục/tệp tin ngay lập tức mà không cần xác nhận từ phía người dùng.

Một cú pháp để dọn dẹp nội dung trong một thư mục

```plain
rm -rf anotherdirectory/*
```{{exec}}

Lệnh này sẽ rất hữu ích nếu bạn chỉ muốn dọn dẹp các tệp tin và thư mục trong một thư mục.
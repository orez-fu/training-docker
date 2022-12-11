# Quyền cho thư mục

Thư mục có quyền mặc định khác với tệp tin. Thư mục phải có quyền execute để cho phép người dùng truy cập vào chúng.

Đầu tiên, hãy trở lại thư mục cha.

```plain
cd .. && ls -l
```{{exec}}

Permission cho thư mục sẽ được thiết lập là `drwxr-xr-x`, có nghĩa là owner có thể làm mọi thư, nhưng group và other không thể write vào thư mục.

Tôi đã đề cập rằng, chắc bạn sẽ nhớ, mọi thứ trong Linux đều là tệp tin. Vì vậy permission cho thư mục cũng hoạt động tương tự như với tệp tin. Chúng ta có thể thiết lập quyền cho thư mục cũng với lệnh `chmod`.

Hãy thực hành thêm một chút!

```plain
chmod o-r student3 && ls -ld student3/
```{{exec}}

Phải, other đã bị xóa quyền read. (lưu ý đối số `-d` sẽ liệt kê thư mục và không truy cập vào thư mục trong câu lệnh ls). Giờ, hãy xóa quyền read cho tất cả

```plain
chmod a-r student3 && ls -ld student3
```{{exec}}

Chúng ta thấy thư mục, hãy thử read nội dung của thư mục với câu lệnh `ls`

```plain
ls -l student3
```{{exec}}

No, chúng ta không thể liệt kê nội dung của thư mục `ls: cannot open directory 'student3': Permission denied`.

Còn truy cập vào thư mục thì sao?

```plain
cd student3
```{{exec}}

Well, chúng ta vẫn có thể truy cập vào thư mục `student3`, chúng ta vẫn có ký tự `x` đại diện cho quyền execute - truy cập đối với thư mục.

```plain
ls -l
```{{exec}}

Nhưng chúng ta không thể đọc nội dung. Vì chúng ta đã xóa quyền read trước đó. Nhưng ...

```plain
cd .. && cat student3/student3
```{{exec}}

Vẫn hoạt động!

Quyền read không có cho người dùng với thư mục, nhưng với tệp tin, chúng ta vẫn có quyền read. Có thể kết luận rằng, không đọc được nội dung của thư mục không có nghĩa là chúng ta không có quyền tương tác với tệp tin trong thư mục.

Ok, hãy đưa mọi thư mục trở lại trạng thái cũ

```plain
chmod 755 student3 && ls -ld student3
```{{exec}}

Bây giờ, chúng ta sẽ xóa quyền thực thi

```plain
chmod u-x student3 && ls -ld student3
```{{exec}}

```plain
ls -l student3
```{{exec}}

Và chúng ta thấy:

```plain
ls: cannot access 'student3/student3': Permission denied
total 0
-????????? ? ? ? ?            ? student3
```

Oh, chuyện gì đã xảy ra?

Không có quyền thực thi, chúng ta có thể đọc danh sách các tệp tin và thư mục bên trong thư mục, nhưng chúng ta mất khả năng làm việc thực tế. Để chứng minh điều đó, chúng ta có thể chạy:

```plain
cat student3/student3
```{{exec}}

Và chúng ta thấy `cat: student3/student3: Permission denied`

`cd` cũng không thể thực thi thành công.

```plain
cd student3/
```{{exec}}

`-bash: cd: student3/: Permission denied`.


Hiểu những gì có thể và không thể là rất quan trọng. Tôi có ma trận cho hành động và quyền rất hữu ích khi làm việc với quyền.

| Quyền thư mục | Số  | Xóa, đổi tên, tạo tệp tin | Liệt kê nội dung | Đọc nội dung tệp tin | Ghi nội dung tệp tin | cd thư mục con | Liệt kê nội dung thư mục con | Truy cập nội dung thư mục con |
| ------------- | --- | ------------------------- | ---------------- | -------------------- | -------------------- | -------------- | ---------------------------- | ----------------------------- |
| ---           | 0   |                           |                  |                      |                      |                |                              |                               |
| --x           | 1   |                           |                  | x                    | x                    | x              | x                            | x                             |
| -w-           | 2   |                           |                  |                      |                      |                |                              |                               |
| -wx           | 3   | x                         |                  | x                    | x                    | x              | x                            | x                             |
| r--           | 4   |                           | chỉ tên tệp tin  |                      |                      |                |                              |                               |
| r-x           | 5   |                           | x                | x                    | x                    | x              | x                            | x                             |
| rw-           | 6   |                           | chỉ tên tệp tin  |                      |                      |                |                              |                               |
| rwx           | 7   | x                         | x                | x                    | x                    | x              | x                            | x                             |

Thư mục cũng là tệp tin, nhưng hành động trên thư mục là khác với tệp tin.

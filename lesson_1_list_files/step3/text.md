# Liệt kê tất cả đối tượng

Câu lệnh ở phần trước chúng ta liệt kê những đối tượng thường. Tuy nhiên, còn có những tệp tin và thư mục ở trạng thái ẩn. Những đối tượng này luôn bắt đầu bằng ký tự `.` ở đầu của tên. Chúng ta có thể gọi những đối tượng này là `dotfiles`. Đừng quên rằng thư mục cũng là một loại tệp tin đặc biệt trong Linux.

Ok, hãy cùng in ra nội dung của một thư mục lần nữa

```plain
ls
```{{exec}}

Hm, không có tệp tin ẩn nào ở đây sao?

Hãy thêm đối số `a` và đọc tên các file ẩn

```plain
ls -a
```{{exec}}

Câu lệnh này liệt kê nhiều tệp tin hơn trước. Rất nhiều dotfiles! Và có 2 file mà chúng ta cần hiểu

- `.` nghĩa là thư mục hiện tại mà chúng ta đang đứng thực hiện lệnh 
- `..` đại diện cho thư mục cha, tức là thư mục hiện tại nằm trong một thư mục khác.

Hãy thử ```plain
ls .
```{{exec}}
Sẽ cho chúng ta kết quả giống như lệnh ls. Và 
```plain
ls ..
```{{exec}} sẽ hiển thị nội dung của thư mục cha.

Một tham số tương tự như `a` là `A`(in hoa của a). Trong khi `a` nghĩa là `all`, `A` nghĩa là `almost all`. Trong trường hợp này, câu lệnh sẽ hiển thị tất cả các file, ngoại trừ `.` và `..`.

Cùng chạy lệnh:
```plain
ls -A
```{{exec}}

Ok, những đối số có thể kết hợp với nhau trong cùng câu lệnh, hãy thử chạy

```plain
ls -al
```{{exec}}

Các bạn thấy gì trong kết quả của câu lệnh?
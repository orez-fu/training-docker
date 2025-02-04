# `ls` là gì?

Lệnh đầu tiên chúng ta tìm hiểu là `ls`. Nó cho phép liệt kê nội dung của một thư mục: danh sách và thông tin về các file, các thư mục.

`ls` là câu lệnh có trên tất cả các hệ thống Linux và Unix. Chúng ta có thể coi nó là một trong những câu lệnh 'core' trong hệ thống.

Ok, hãy thực hành 1 chút, chạy lệnh: 
```plain
ls
```{{exec}}

Chúng ta sẽ thấy trên màn hình là nội dung của thư mục hiện tại.

Hãy thêm 1 chút màu sắc cho nội dung của một thư mục:

```plain
ls --color=yes
```{{exec}}

hoặc, một lệnh tương tự:

```plain
ls --color=auto
```{{exec}}

Nếu yêu thích màu cổ điển, đen và trắng, hãy đặt giá trị no cho `color`

```plain
ls --color=no
```{{exec}}
# Nhiều hơn các đối số

Ở phần này, chúng ta sẽ sử dụng một vài các đối số hữu dụng khác

```plain
ls -al -author
```{{exec}}

In ra người tạo ra tệp tin.

```plain
ls -ald
```{{exec}}

Chỉ in ra danh sách thư mục. Rất hữu dụng trong một tài trường hợp.

```plain
ls -alR
```{{exec}}

Hiển thị tất cả các thông tin của cả các thư mục con.

```plain
ls -lS
```{{exec}}

Sắp xếp file theo kích cỡ của đối tượng, lớn nhất ở đầu.

```plain
ls -lh
```{{exec}}

Kích cỡ của tệp tin sẽ ở dạng dễ đọc hơn, với `K`, `M`, hoặc `G`. Lưu ý `h` sử dụng quy đổi chuẩn 1K = 1024B

## Finale

Một đối số rất rất hữu dụng `help`. Cho chúng ta thông tin chi tiết về câu lệnh. Hãy lấy sự trợ giúp của câu lệnh `ls`

```plain
ls --help
```{{exec}}

Để xem nội dung của một thư mục, chúng ta có thể chỉ định đường dẫn tương đối hoặc đường dẫn tuyệt đối ở phía sau lệnh `ls`

```plain
ls /home/ubuntu -al
```{{exec}}

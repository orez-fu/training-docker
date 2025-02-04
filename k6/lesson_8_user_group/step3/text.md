# Tạo user

Chúng ta đã biết cách kiểm tra user. Giờ là thời gian tạo user.

Để tạo user, chúng ta có thể sử dụng 1 trong 2 cách. Một là dùng `useradd`, hai là dùng lệnh `adduser`. Có sự khác biệt giữa 2 lệnh này? 

Hãy cùng nhau tìm câu trả lời.

```plain
whatis useradd
```{{exec}}

```plain
whatis adduser
```{{exec}}

Well, có vẻ không có nhiều thông tin từ câu lệnh `whatis`.

Trong thực tế, `useradd` là một tệp tin binary, còn `adduser` là Perl script(mã viết bằng ngôn ngữ Perl), và `adduser` bản chất có sử dụng lệnh `useradd` trong code script.

All right, về mặt tính năng, 2 câu lệnh đều dùng cho tạo user, chúng ta sẽ đi vào sử dụng 2 câu lệnh để học cách sử dụng cũng như có sự so sánh chúng.

### `useradd`

```plain
useradd testuser1
```{{exec}}

Đơn giản là thêm người dùng "testuser1" vào trong hệ thống.

### `adduser`

```plain
adduser testuser2
```{{exec}}

Câu lệnh sẽ yêu cầu bạn nhập mật khẩu và các thông tin cho phần description.

## So sánh

Dễ thấy, `adduser` là câu lệnh dài dòng hoặc chi tiết, theo ý kiến riêng. Như kết quả mà chúng ta đã thực hiện các câu lệnh.
 
Thứ hai, một điểm quan trọng, `adduser` cần tương tác, cung cấp mật khẩu và thông tin trong quá trình thêm người dùng vào hệ thống.

Hãy đọc tệp tin cấu hình user.

```plain
grep testuser /etc/passwd
```{{exec}}

Chúng ta sẽ thấy kết quả tương tự như này:

```
testuser1:x:1001:1001::/home/testuser1:/bin/sh
testuser2:x:1002:1002:Some test user,,,,other info:/home/testuser2:/bin/bash
```

```plain
grep testuser /etc/shadow
```{{exec}}

và kết quả:

```
testuser1:!:19002:0:99999:7:::
testuser2:$6$4MrAXI/aJY1cfwDU$kVdzcVnA1kT3CtZa4U/R0A0IiIta0QMG8psxc1PKk48DvZllXrecwNJ7Yfxr5xpJ4GAyAb/vjBYMAwnquYyKS.:19002:0:99999:7:::
```

Chúng ta thấy điều gì ở đây?
- password không thiết lập cho testuser1
- testuser2 có thông tin description nếu chúng ta nhập thông tin
- testuser1 có `sh` làm shell, còn testuser2 sử dụng `bash` là shell

Một điểm nữa, thông qua câu lệnh

```plain
ls -l /home
```{{exec}}

chúng ta không thấy testuser1 có thư mục home mặc dù đã được định nghĩa trong tệp `/etc/passwd`.

## Hãy trở thành **admin**

Right, một admin đúng nghĩa sẽ sử dụng `useradd`. Đùa thôi :), sử dụng lệnh nào sẽ tùy theo mục đích của bạn. `useradd` thì luôn luôn có trên mọi hệ điều hành nhân Linux và hoạt động theo các giống nhau. Và chúng ta, là admin, sẽ sử dụng cách của chúng ta.

Hãy cùng nhau đi vào các tham số quan trọng của lệnh `useradd` khi tạo mới user.

`-d` - chỉ định thư mục home, nếu chúng ta không muốn đường dẫn mặc định(thư mục home là tên user, nằm trong `/home`)
`-m` - tạo thư mục home
`-p` - mật khẩu
`-s` - cung cấp shell sử dụng, thường là `/bin/bash` với standard user
`-c` - comment, hoặc description cho user

hoặc bạn có thể có sự trợ giúp từ 

```plain
useradd -h
```{{exec}}

Ok, bây giờ chúng ta đã có cơ bản, hãy tạo một user mới với các đối số.

```plain
useradd testuser3 -s /bin/bash -m
```{{exec}}

Lúc này, cùng xem 3 user.

```plain
grep testuser /etc/passwd
```{{exec}}

```plain
grep testuser /etc/shadow
```{{exec}}

```plain
ls -l /home
```{{exec}}


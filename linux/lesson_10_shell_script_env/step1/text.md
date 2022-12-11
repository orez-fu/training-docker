# Biến môi trường là gì?

Biến môi trường là giá trị động ảnh hưởng đến phần mềm và tiến trình hoạt động trên server. Biến môi trường – environment variable có trên mọi hệ điều hành và có nhiều loại khác nhau. Biến môi trường có thể được tạo, chỉnh sửa, lưu hay xóa.

Biến môi trường của linux chứa thông tin hệ thống, mà sẽ chuyển dữ liệu đó đi cho phần mềm trong shells hoặc sub-shells.

Mỗi biến sẽ được định nghĩa bởi cặp key=value(khóa và giá trị). Ví dụ: `MY_COLOR=RED`, thì `MY_COLOR` là tên biến, còn `RED` là giá trị của biến.

## Liệt kê danh sách biến môi trường

Chúng ta có thể xem danh sách các environment variable trên Linux bằng lệnh `printenv`

```plain
printenv
```{{exec}}

Mỗi dòng sẽ chứa một biến môi trường Linux, và giá trị của nó. Ví dụ `SHELL=/bin/bash`. Biến môi trường thường được viết in hoa, nhưng bạn cũng có thể in thường. Một điểm quan trọng nữa là Linux environement variable có phân biệt hoa thường.

Chúng ta cũng có thể chỉ định tên biến cần xem

```plain
printenv SHELL
```{{exec}}

Kết quả chúng ta sẽ nhận được giá trị `/bin/bash`.

Một cách khác để hiển thị nội dung biến môi trường, sử dụng lệnh `echo` để gọi tên biến

```plain
echo $SHELL
```{{exec}}

Bạn sẽ nhận được kết quả như trước đó.

Một câu lệnh khác chúng ta có thể coi toàn bộ biến môi trường

```plain
env
```{{exec}}


## Thiết lập biến môi trường

Cú pháp cơ bản của lệnh tạo biến như sau:

```plain
export <var>=<value>
```

Chúng ta có thể ngay lập tức thực hiện thêm biên môi trường

```plain
export killer="coda"
```{{exec}}

Với lệnh `export` biến môi trường chỉ được thiết lập trong shell hiện tại. 

Nếu muốn biến có thể được lưu trữ bền vững qua các shell, kể cả khi hệ thống có khởi động lại, dĩ nhiên chúng ta có cách, bằng cách thêm dòng lệnh `export` vào tệp tin `.bashrc` hoặc `.profile`. Hãy mở tab editor và thêm dòng lệnh: `export MY_COLOR=RED` vào tệp tin `.bashrc`. Trở lại tab terminal, chúng ta cần phải load biến môi trường vào shell hiện tại - công việc load này chỉ cần cho shell hiện tại, ở những shell mới, tệp tin `.bashrc` sẽ được hệ thống đọc lại và nạp vào biến môi trường tự động.

```plain
source .bashrc
```{{exec}}

Và giờ chúng ta đã có biến `MY_COLOR`, `printenv MY_COLOR`{{exec}}

Với hệ thống, các biến môi trường được lưu trong tệp `/etc/environment`, bạn có thể sửa tệp tin với quyền `root` và thêm vào các biến môi trường, lưu ý, trong tệp tin này, sẽ không cần từ khóa `export`, mà chúng ta sẽ viết trực tiếp tên biến và giá trị, ví dụ `CLASS=Techmaster`.

## Gỡ biến môi trường

Chúng ta sẽ dùng lệnh unset để gỡ giá trị ra khỏi environemnt variable:

```plain
unset <var>
```

Hãy loại bỏ biến môi trường `killer` mà chúng ta đã thêm.

```plain
unset killer
```{{exec}}

Với các biến môi trường trong tệp tin `~/.bashrc`, `~/.profile`, `/etc/environment`, chúng ta hãy xóa dòng chứa biến ở những shell sau này, biến môi trường đó sẽ không còn nữa. 

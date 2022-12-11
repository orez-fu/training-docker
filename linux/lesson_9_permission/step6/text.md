# Thay đổi owner và group của tệp tin

Hãy trở lại người dùng root.

```plain
exit
```{{exec}}

Và bây giờ chúng ta di chuyển tới thư mục home của user `student1`.

```plain
cd /home/student1`
```{{exec}}

```plain
ls -ld student1`
```{{exec}}

Chúng ta thấy rằng `student1` là sở hữu của các tệp tin cũng như là group. Để có thể thay đổi group, chúng ta có thể sử dụng lệnh `chgrp`(CHange GRouP). Cú pháp rất đơn giản:

```plain
chgrp <group> <objects>
```

Hãy biến group `student2` thành group được chọn thư mục `student1`.

```plain
chgrp student2 student1
```{{exec}}

```plain
ls -ld student`
```{{exec}}

Yes, group đã được thay đổi trên thư mục `student1`.

```plain
ls -l student1
```{{exec}}

Nhưng nó không hoạt động cho những tệp tin bên trong thư mục. Hãy chỉnh câu lệnh của chúng ta một chút:

```plain
chgrp -R student2 student1 && ls -l student1
```{{exec}}

Bây giờ, nó đã hoạt động. Chúng ta vừa thêm vào đối số `-R`, nó nghĩa là `recursive`, sẽ lặp hành động change group cho các tệp tin và các thư mục ở bên trong.

Giờ là thời gian để thay đổi owner. Chúng ta sử dụng lệnh `chown` để làm việc này. Nhưng có điều thú vị, `chown` cũng có thể thay đổi group. Đây là cú pháp:

```plain
chown <owner>:<group> <objects>
```

Hãy thử thêm một vài tệp tin trướ:

```plain
touch test01 && touch test02 && touch test03 && ls -l test*
```{{exec}}

```plain
chown student2 test01
```{{exec}}


```plain
chown :student2 test02
```{{exec}}

```plain
chown student2:student2 test03
```{{exec}}

Quan sát kết quả:

```plain
ls -l test*
```{{exec}}

Chúng ta đã thay đổi owner cho tệp tin `test01`, thay đổi group cho tệp tin `test02` và thay đổi cả owner và group cho `test03`.

Dĩ nhiên chúng ta cũng có thể thay đổi cho các tệp tin và thư mục bên trong với đối số `-R`

```plain
chown -R student2:student3 student1
```{{exec}}

```plain
ls -ld student1
```{{exec}}

```plain
ls -al student1
```{{exec}}


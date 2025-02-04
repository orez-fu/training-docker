# 1. Tạo tệp tin

Để tạo một tệp tin rỗng trong Linux, chúng ta cần sử dụng lệnh `touch`. Hãy cùng thực hiện

```plain
touch testfile
```{{exec}}

Chúng ta đã tạo tệp tin phải không?

```plain
ls -l testfile
```{{exec}}

Yes, tệp tin đã tồn tại thông qua việc chúng ta sử dụng câu lệnh `ls` và truyền vào tên tệp tin/thư mục. Chúng ta có thể thấy rằng tệp tin có kích cỡ bằng `0`, hay nói cách khác, tệp tin này rỗng.

Chúng ta cũng có thể tạo nhiều tệp tin cùng lúc

```plain
touch try1 try2 try01
```{{exec}}

Ok, bây giờ, chúng ta muốn chỉ muốn liệt kê `try1` và `try2`. Nếu chúng ta dùng câu lệnh `ls` như này

```plain
ls try*
```{{exec}}

chúng ta sẽ nhận được 3 tệp tin.

Thay vì sử dụng `*`, chúng ta có thể sử dụng `*`. Ký hiệu này nghĩa là đại diện cho `một ký tự bất kỳ`, còn `*` sẽ đại diện cho bất kỳ chuỗi ký tự.

Hãy thử

```plain
ls try?
```{{exec}}

Yep, đây chính là lệnh chúng ta cần thiết.


Hãy tạo một vài cấu trúc:

```plain
mkdir testdir
touch testdir/mytest1 testdir/mytest2 testdir/mytest3
```{{exec}}

Chúng ta đã tạo ra rất nhiều tệp tin trong thư mục `testdir`.


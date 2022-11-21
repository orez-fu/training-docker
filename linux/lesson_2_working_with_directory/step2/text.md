# Điều hướng thư mục trong hệ thống

Để thay đổi thư mục, chúng ta cần sử dụng câu lệnh `cd`. Câu lệnh là viết tắt của `change directory`.

```plain
cd parentdir
```{{exec}}

Và thử kiểm tra xem nội dung của thư mục mà chúng ta đang đứng có phải là nội dung của thư mục `parrentdir` không 

```plain
ls -l
```{{exec}}

Có một câu lệnh khác để biết thư mục mà chúng ta đang làm việc:

```plain
pwd
```{{exec}}

Chúng ta có thể trở lại thư mục cha bằng cách gõ lệnh

```plain
cd ..
```{{exec}}

Hy vọng bạn vẫn nhớ từ kịch bản trước về nghĩa của `..`. Nó đại diện cho thư mục cha của thư mục hiện tại.

Ok, bạn đang ở đâu?

```plain
pwd
```{{exec}}

Hãy di chuyển vào sâu hơn trong thư mục

```plain
cd parentdir/childdir
```{{exec}}

Bạn đang ở đâu?

```plain
pwd
```{{exec}}

Như bạn có thể suy đoán ra, chúng ta có thể di chuyển qua nhiều thư mục, bằng cách cung cấp ký tự ``/`` giữa các thư mục. Hãy nhớ lại lý thuyết bạn đã học về thư mục trong Linux.

[directories](dir.png)


Nếu bạn muốn trở về thư mục `home`, thư mục được mở khi chúng ta mở kịch bản, bạn có thể gõ 2 lần `cd ..`. Nhưng tuyệt vời hơn, chúng ta có thể kết hợp `..` theo cách sau:

```plain
cd ../..
```{{exec}}

Chúng ta quay trở lại 2 lần thư mục cha. Hãy kiểm tra thư mục mà bạn đang làm việc nhé.

```plain
pwd
```{{exec}}


Ok, chúng ta đã trở lại thư mục ban đầu.

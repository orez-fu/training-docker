# Time to play - Thực hành thay đổi permission cho tệp tin

Ok, chúng ta đã rõ phần lý thuyết.  Giờ là lúc chúng ta xắn tay áo và thực hành với permission.

Đầu tiên, chúng ta cần chuyển qua người dùng khác:

```plain
su - student3
```{{exec}}

```plain
ls -l
```{{exec}}

Chúng ta thấy, `student3` là một thư mục(bởi ký hiệu bắt đầu là `d`), và có quyền `775` hay `rwxr-xr-x`, điều này có nghĩa là tất cả quyền cho owner, read và execute cho group và other.

Hãy đi vào trong thư mục:

```plain
cd student3 && ls -l
```{{exec}}

Chúng ta thấy tệp tin `student3` (`-`) với quyền `644`. Bạn có thể quyền của tệp tin này phải không!


## Play with the file

Chúng ta bắt đầu làm việc với tệp tin, chúng ta có thể ghi nội dung vào tệp tin chứ?

```plain
echo 'second line' >> student3
```{{exec}}

Yep, chúng ta không thấy có lỗi gì. Hãy kiểm tra nội dung của nó:

```plain
cat student3
```{{exec}}


Yep, chúng ta đã thấy nội dung của tệp tin như ý muốn.

Lệnh để thay đổi permission là `chmod`. Đây lại là một sự viết tắt của change modifier. Cú pháp rất đơn giản:

```plain
chmod permission object
```

Ok, giờ là thời gian để thay đổi permission cho tệp tin của chúng ta!

```plain
chmod 775 student3 && ls -l student3
```{{exec}}

Permission đã được thay đổi.

Bây giờ, chúng ta thay đổi permission sang một cái khác

```plain
chmod 640 student3 && ls -l
```{{exec}}

Ok. Bây giờ, nhiệm vụ là, tôi viết một script, và muốn đảm bảo rằng tất cả người dùng đều có khả năng chạy nó. Tôi có thể sử dụng `755` như trước đó. Nhưng, `755` không chỉ thêm quyền thực thi, nó đã thay đổi cả quyền khác. Hãy làm lại lần nữa với các con số:

```plain
chmod 755 student3 && ls -l student3
```{{exec}}

Hãy so sánh quyền trước và sau:

```plain
-rw-r-----
-rwxr-xr-x
```

Như bạn có thể thấy, chúng không chỉ thêm quyền, mà chúng thiết lập các quyền tên tệp tin, từ `640` thành `755`. Đó cũng là lý do tại sao **numeric mode** còn được gọi là *absolute mode*.

Giờ là lúc chúng ta sử dụng *symbolic mode*, hãy thay đổi lại quyền để sẵn sàng làm việc với các ký tự.

```plain
chmod 640 student3 && ls -l student3
```{{exec}}

Và bây giờ, chúng ta sẽ thêm quyền execute cho đối tượng other:

```plain
chmod o+x student3 && ls -l student3
```{{exec}}

Xác nhận với đầu ra của câu lệnh `ls`, đối tượng other có ký tự `x` trong phần quyền. 

Hãy thêm quyền execute cho group và other trong cùng một câu lệnh.

```plain
chmod g+x,o+x student3 && ls -l student3
```{{exec}}

Ok, chúng ta đã làm được bằng cách sử dụng dấu `,` để thêm quyền cho nhiều đối tượng trong một lệnh. Bây giờ, nếu chúng ta muốn thêm quyền execute cho tất cả đối tượng, chúng ta cần `u+x,g+x,o+x`, đúng chứ?. Ổn, đúng. Nhưng đây không phải là cách hiệu quả. Chúng ta có thể làm tốt hơn:

```plain
chmod a+x student3 && ls -l student3
```{{exec}}

`a` đơn giản là đại diện cho `all`. Hoặc có thể không cần ký tự `a`, hệ thống sẽ ngầm định thay đổi quyền của cả 3 đối tượng `chmod +x student3`.

Khi chúng ta chạy

```plain
chmod a-x student3 && ls -l student3
```{{exec}}

Chúng ta đã xóa quyền execute của cả 3 đối tượng.

Ở phần trước chúng ta xác nhận rằng chúng ta có thể sửa và đọc tệp tin. Hãy thay đổi nó.

```plain
chmod u-w student3 && ls -l student3
```{{exec}}


```plain
echo 'third line' >> student3
```{{exec}}

Không, chúng ta đã không thể ghi nội dung vào tệp tin. Hệ thống sẽ thông báo lỗi `bash: student3: Permission denied`

```plain
cat student3
```{{exec}}

Chúng ta vẫn có thể đọc nội dung của nó.

```plain
chmod 000 student3 && ls -l student3
```{{exec}}

Bạn cũng có thể biết chúng ta vừa làm gì mà, không còn quyền cho cả 3 đối tượng.

```plain
echo 'third line' >> student3
```{{exec}}

```plain
cat student3
```{{exec}}

Và giờ, chúng ta không thể đọc cũng như không thể ghi.

Chúng ta hãy trả lại permission cho tệp tin như ban đầu:

```plain
chmod 644 student3 && ls -l student3
```{{exec}}





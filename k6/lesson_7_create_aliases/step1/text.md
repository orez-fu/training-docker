# Cách sử dụng `alias`

Alias cho chúng ta khả năng đặt bí danh(1 từ khóa, chữ khác) cho lệnh mà chúng ta cần. Hãy giả sử, chúng ta muốn liệt kê tất cả các tệp tin bao gồm cả tệp tin ẩn ở dạng long list:

```plain
ls -al
```{{exec}}

Chúng ta sử dụng tới 6 kỹ tự, cũng không quá nhiều. Nhưng thực sự câu lệnh này được sử dụng khá nhiều, và độ lặp lại của câu lệnh là nhiều. Sao chúng ta không thử sử dụng alias:

```plain
ll
```{{exec}}

Thực sự ngắn gọn hơn cho câu lệnh, kết quả tương tự.

`ll` là một alias được cấu hình trong profile của người dùng trong hệ thống. `ll` rút gọn cho lệnh `ls -al`. Bạn có thể cảm nhận được tính hữu ích của alias qua ví dụ này chứ? Vậy thì hãy thử tạo thêm alias của riêng bạn

```plain
alias lh='ls -alh'
```{{exec}}

Chúng ta có gì? Chúng ta đã tạo ra một alias mới là `lh`, mà khi chúng ta chạy

```plain
lh
```{{exec}}

thực sự, câu lệnh `ls -alh` đã được thực thi.

Tuy nhiên alias này chỉ tồn  tại trong phiên làm việc(cửa sổ terminal) hiện tại. Ở phần tiếp theo chúng ta sẽ học các thêm alias bền vững.

Để xem danh sách alias mà chúng ta có thể sử dụng, hãy liệt kê

```plain
alias
```{{exec}}

Một điều nữa chúng ta cần biết, cách hủy bỏ alias

```plain
unalias lh
```{{exec}}

Lệnh `unalias` sẽ hủy bỏ đi alias được truyền vào. Chúng ta có thể làm tương tự để hủy bỏ alias `ll` cũng với lệnh unalias

```plain
unalias ll
```{{exec}}

Nếu bạn cố tình chạy lệnh

```plain
ll
```{{exec}}

Lệnh sẽ báo lỗi!


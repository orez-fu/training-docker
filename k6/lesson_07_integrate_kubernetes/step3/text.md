# History

Chúng ta không cần gõ các lệnh giống nhau nhiều lần. Chúng ta có thể sử dụng chức năng gọi là history. Đồng thời chúng ta cũng có thể truy vết lại những câu lệnh đã được chạy trong hệ thống.

Mặc định, history đã được bật và sẵn sàng lưu lại các câu lệnh thực hiện.

Hãy chạy một vài lệnh đã biết.

```plain
ls -al
```{{exec}}

```plain
cat .profile
```{{exec}}

```plain
ls -alh
```{{exec}}

```plain
ps
```{{exec}}

Đã có vài câu lệnh được thực thi trên hệ thống. Bây giờ, nếu chúng ta muốn hiển thị nội dung tệp `.profile`, chúng ta có thể gõ lại câu lệnh. Nhưng một cách khác sẽ thú vị hơn.

## Arrows

Đầu tiên, chúng ta có thể điều hướng history thông qua phím lên và xuống. Hãy ấn phím lên để tìm kiếm lệnh `cat .profile` và chạy lại lệnh này lần nữa.

## `history` command

Lệnh này liệt kê danh sách câu lệnh đã chạy.

```plain
history
```{{exec}}

Chúng ta sẽ thấy những lệnh trong quá khứ. Chúng ta có thể kết hợp pipe và `grep` để tìm kiếm câu lệnh nhanh chóng hơn.

```plain
history | grep cat
```{{exec}}

Đây là cách sử dụng đơn giản nhất của lệnh `history`.

## Search command

Hãy chạy thêm một vài command để thấy rõ tính năng tìm kiếm lệnh thông qua tương tác.

```plain
cat .hushlogin
```{{exec}}

```plain
cat .bashrc
```{{exec}}

Bạn sẽ thấy lịch sử các câu lệnh nhiều hơn

```plain
history
```{{exec}}

Bây giờ hãy ấn tổ hợp phím `Ctrl` và `r`, tại đây chúng ta có thể gõ chữ `cat` để tìm kiếm lệnh có chứa chữ `cat` gần nhất, cụ thể trong lab này, bạn sẽ thấy lệnh `cat .bashrc`.

Ấn `Ctrl` + `r` lần nữa, chúng ta tiếp tục lùi lại lệnh chứa `cat` trong lịch sử. 

Sử dụng `ESC` nếu muốn thoát khỏi quá trình tìm kiếm. Hoặc ấn `enter` để thực thi lệnh hiện ra bởi lịch sử. Hoặc ấn phím điều hướng để chọn lệnh sẵn sàng cho phím `enter` để chạy lệnh.

Một chút lưu ý, giới hạn mặc định về số lượng lệnh chứa trong History 500 hoặc 1000 tùy thuộc vào distro. Thêm 1 thông tin nữa, để lệnh có thể lưu vào history, đừng để khoảng trắng ở trước.

Hãy thử cho dấu cách ở đầu câu lệnh. và kiểm tra `history`

```plain
 ls -al
```{{exec}}

```plain
history
```{{exec}}

Bạn có thể tự mình nhận xét kết quả!
# Lệnh `ps`

Mọi thứ hầu hết trong Linux chạy là tiến trình và `ps` là viết tắt của Process Status(trạng thái tiến trình)

Câu lệnh đơn giản với không đối số, cùng chạy:

```plain
ps
```{{exec}}

Trên cửa số dòng lệnh, tương đối ít tiến trình, nó chỉ hiển thị các tiến trình liên quan tới phiên làm việc hiện tại. Có nghĩa là chúng ta chỉ đang chạy chương trình `bash`(trong trường hợp của chúng ta), và tiến trình `ps` được thực hiện tại thời điểm lệnh `ps` chạy. Anyway, chúng ta cùng đi qua một số trường thông tin.

`PID` - khá rõ ràng, đây là id của tiến trình
`TTY` - Terminal (cửa sổ dòng lệnh-phiên làm việc) được gắn với tiến trình. Bạn có thể tìm hiểu sâu hơn trong bài viết: https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/
`TIME` - tổng thời gian CPU sử dụng
`CMD` - Lệnh sử dụng trong tiến trình

Hãy nhớ `ps` không đối số, chỉ hiển thị các tiến trình liên kết với terminal hiện tại.

Lệnh `ps` tương đối đặc biệt, đối số mà chúng ta truyền vào cho lệnh `ps` không nhất thiết cần ký tự `-`. Ví dụ, kết quả của `ps a` hay `ps -a` là như nhau.

## Các tổ hợp đối số hữu dụng

```plain
ps -A
```{{exec}}

Liệt kê tất cả các tiến trình, nhưng có vẻ thông tin về tiến trình không nhiều.

```plain
ps -ef
```{{exec}}

Sử dụng rất nhiều khi muốn xác định PID của tiến trình.

```plain
ps aux
```{{exec}}

Hiển thị thông tin của tiến trình, thêm các thông tin về lượng tài nguyên sử dụng.

```plain
ps aux --forest
```{{exec}}

Hiển thị các tiến trình cha con ở dạng cây.

Hãy kết hợp với pipe và `grep` để có thể lọc và tìm kiếm tiến trình mong muốn.

```plain
ps aux | grep bash
```{{exec}}

Có rất nhiều các đối số có thể sử dụng trong lệnh `ps`. Hãy tiếp tục sử dụng sự tìm tòi, khám phá của bản thân bạn!

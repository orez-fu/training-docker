# Shell script
Chúng ta đang ở một trong những nội dung khó trong Linux, ở trong phần này, chúng ta sẽ hiểu về shell script và viết một chương trình đơn giản với shell script, và những thứ phức tạp hơn về mặt lập trình, bạn cần thực sự ham học hỏi để tiếp thu chúng từ các hướng dẫn khác :(

## Shell script là gì?

Shell là chương trình giao tiếp với người dùng. Có nghĩa là shell chấp nhận các lệnh từ bạn (keyboard) và thực thi nó. Nhưng nếu bạn muốn sử dụng nhiều lệnh chỉ bằng một lệnh, thì bạn có thể lưu chuỗi lệnh vào text file và bảo shell thực thi text file này thay vì nhập vào các lệnh. Điều này gọi là shell script. Và chúng ta hãy gọi tắt nó là `script`.

Chúng ta cùng điểm qua một số lợi ích của shell script

- Shell script có thể nhận input từ user, file hoặc output từ màn hình.
- Tiện lợi để tạo nhóm lệnh riêng.
- Tiết kiệm thời gian.
- Tự động làm một vài công việc thường xuyên.
- Sử dụng trong Crontab

Tệp tin shell script không yêu cầu đuôi tệp tin. Bạn có thể đặt tên bất kỳ và đừng quên cho quyền thực thi với tệp tin, nhưng thông thường, tôi hay sử dụng đuôi tệp tin `.sh` để dễ dàng phân biệt tệp tin script với các tệp tin khác :D

## Sử dụng shell script

Ok, giờ là lúc thực hành, tôi đã tạo sẵn một tệp script `hello.sh`. 

```plain
ls -l hello.sh
```{{exec}}

Chúng ta hãy trải nghiệm việc thực thi của nó:

```plain
./hello.sh
```{{exec}}

Kết quả sẽ được in trên màn hình. Chúng ta hãy kiểm tra nội dung của tệp tin và xác nhận kết quả

```plain
cat hello.sh
```{{exec}}

Chúng ta có dòng đầu là lệnh `echo` và in ra lời chào tới thế giới. Ở dòng số 2, chúng ta sử dụng biến để lấy về thông tin shell hiện tại. Thật tuyệt vời, chúng ta đã sử dụng biến trong tệp tin.

Một vài cách thực thi tệp tin script bạn có thể thử: `bash hello.sh`, `sh hello.sh`. Đây là những cách mà chúng ta viện tới shell để chạy chương trình.

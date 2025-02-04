# Redirect tới tệp tin - chuyển hướng tới tệp tin

Bây giờ chúng ta sẽ tập trung vào việc redirect một đầu ra vào tệp tin. Đầu ra ở đây có thể là kết quả của một lệnh hoặc script.

Thông thường, tất cả đầu ra sẽ đi tới và hiển thị trên màn hình. Có một số đầu ra khác nhau trong linux liên quan tới lỗi hoặc thông tin. Hiện tại, hãy giả sử rằng tất cả đầu ra sẽ được đưa ra màn hình.

Trên màn hình, chúng ta sẽ liệt kê danh sách các tệp tin. Hãy thực hiện lệnh:

```plain
ls -al
```{{exec}}

## Redirect: `>`

Bây giờ, hãy redirect đầu ra của lệnh này vào tệp tin

```plain
ls -al > directorylist.txt
```{{exec}}

Chúng ta đã làm gì ở đây?
- `ls -al` - chúng ta đã biết kết quả của lệnh này.
- `>` ký hiệu redirect toàn bộ kết quả đầu ra từ lệnh bên trái, tới tệp tin - được ghi ra ở phía bên phải của ký hiệu redirect.
- `directorylist.txt` là tệp tin sẽ nhận kết quả từ việc redirect.

Ok, hãy cùng xem nội dung trong tệp tin

```plain
cat directorylist.txt
```{{exec}}

Nội dung của tệp tin bao gồm chính xác kết quả của lệnh `ls -al`.

Ok, hãy tiếp tục ghi thêm nội dung vào tệp tin. Chúng ta có một tệp tin nhỏ,  `.profile`. Hãy `cat` nó và đưa ra của lệnh `cat` thêm vào tệp tin `directorylist.txt`.

```plain
cat .profile > directorylist.txt
```{{exec}}

Bây giờ là thời gian để xem tệp tin.

```plain
cat directorylist.txt
```{{exec}}

Hm... Đợi một chút... Chúng ta muốn thêm nội dung, không phải là ghi lại tệp tin! Chuyện gì đã xảy ra ở đây?

Well, redirect `>` sẽ thực hiện những điều sau: 
- Nếu tệp tin không tồn tại, tệp tin sẽ được tự động tạo mới
- Thêm nội dung từ đầu vào của redirect
- Nếu tệp tin tồn tại và không rỗng, xóa nội dung trông tệp tin và ghi đầu vào của redirect tới tệp tin trống.

Bây giờ bạn đã thấy điều vừa xảy ra phải không? Ok, làm sao để có thể thêm nội dung vào tệp tin mà không phải là ghi đè nội dung? Điều này hoàn toàn có thể với redirect `>>`

## Redirect `>>`

Chúng ta cần sử dụng một cú pháp cho redirect: `>>`

Trước hết chúng  ta hãy xóa tệp tin `directorylist.txt`.

Sau đó, thực hiện redirect `>` nội dung của `.profile` tới tệp tin `directorylist.txt`.

```plain
cat .profile > directorylist.txt
```{{exec}}

Bây giờ, chúng ta sẽ thêm thứ gì từ câu lệnh vào tệp tin `directorylist.txt`:

```plain
echo 'this line is a seperator!' >> directorylist.txt
```{{exec}}

```plain
ls -al >> directorylist.txt
```{{exec}}

Hãy kiểm tra kết quả

```plain
cat directorylist.txt
```{{exec}}

Như chúng ta mong đợi, trong tệp tin `directorylist.txt` chúng ta sẽ thấy cả 3 nội dung từ tệp `.profile`, chuỗi ký tự từ lệnh `echo`, kết quả của lệnh `ls -al` theo đúng thứ tự từ đầu tới cuối.

## Tổng kết về redirect

Bạn cần nhớ rằng, `>` sẽ tạo tệp tin(nếu không có trước) và ghi đè tất cả dữ liệu vào tệp tin. Trong khi đó, `>>` có hành động tương tự, khác ở điểm, nó sẽ không ghi đè, mà thêm tiếp nội dung vào tệp tin.
# `cat` & `vim`

Trong thư mục hiện tại, chúng ta có một tệp tin đặc biệt, `logfile`. Tệp tin này được sao chép từ tệp `syslog` và bao gồm rất nhiều thông tin. Chúng ta sẽ thấy các cách khác nhau để đọc tệp.

Đầu tiên, hãy kiểm tra xem tệp tin có khả dụng hay không.

```plain
ls -l logfile
```{{exec}}

Hoặc kiểm tra tệp thực sự là một tệp văn bản

```plain
file logfile
```{{exec}}

Good. Chúng ta sẽ thấy định dạng văn bản của tệp `logfile` là `UTF-8 Unicode text`.


## cat

Một trong những lệnh cơ bản nhất, được sử dụng nhiều nhất là `cat`. Như thường lệ trong linux, tên của lệnh là rút gọn của một từ đầy đủ, trong trường hợp này là `concatenate` (nối)

Ok, bây giờ chúng ta hãy đọc tệp tin

```plain
cat logfile
```{{exec}}

Yeah, nội dung của tệp tin đã được in ra, trong trường hợp này, toàn bộ nội dung sẽ được in ra, từ đầu tới cuối. Với những tệp tin có nội dung dài, chúng ta sẽ cần đọc tệp một cách thông minh hơn ở phần sau.

## vim

Thành thực mà nói, những sysadmin sẽ quen sử dụng vim hoặc một editor(emacs, nano, vi) để mở nội dung của tệp tin trong editor. Hãy nhớ rằng, lệnh `cat` chỉ in ra nội dung của tệp tin. `vim` sẽ có nhiều chức năng hơn, cho phép bạn tương tác với nội dung của file.

```plain
vim logfile
```{{exec}}

Bạn cần tìm hiểu thêm vim để sử dụng editor này!

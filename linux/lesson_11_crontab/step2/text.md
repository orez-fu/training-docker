# Thiết lập công việc trong crontab 

Trước khi thực sự thiết lập công việc trong crontab, chúng ta cần học về cú pháp của nó. Nó là dễ, nhưng tôi nghĩ, bạn cần thời gian để nhớ về chúng :)

Ok, nghĩ về crontab lúc này, chúng ta có

```plain
1 17 7 4 2 /usr/bin/ls > /dev/null 2>&1
```

What the hell is that!?

Ok... Hãy nhìn vào `/etc/crontab`. Bạn có thể đọc tài liệu để có thông tin,

```plain
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed
17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly
```

Chúng ta có vài phần tử ở đây, hãy đi qua chúng, từng cái một.

- `minute` định nghĩa bộ lập lịch sẽ thực hiện công việc vào phút được chỉ định. Trong ví dụ ở đầu, 1 là phút được chỉ định.
- `hour` định nghĩa thời điểm thực thi  tại giờ được chỉ định. Trong ví dụ của chúng ta 17h tức là 5 giờ chiều. Hãy ghi nhớ Linux tính giờ theo khung 24h một ngày.
- `day of the month` tương tự, chúng ta có thể chỉ định ngày mà công việc sẽ được thực thi. Trong ví dụ của chúng ta, công việc sẽ được thực thi vào ngày 7 của tháng.
- `month` như bạn có thể đoán, đó chính là chỉ định tháng. Nó có thể là chữ hoặc số. Trong ví dụ của chúng ta, tháng 4, hoặc bạn có thể ghi dạng chữ `apr`.
- `weekday` lựa chọn cuối cùng để chỉ định ngày trong tuần. Trong ví dụ của chúng ta, có số 2, tương ứng với ngày thứ ba.  Hãy ghi nhớ thêm, chủ nhật có thể được định nghĩa là `0` hoặc `7` đều được.


Vì vậy, trong ví dụ đầu, hệ thống sẽ thực thi lệnh vào lúc 17h01 ngày 7 tháng 4 và là thứ ba.

Well, khá khó để xác định ngày trong tuần, tôi cũng thường không đặt ngày trong tuần. Nếu chúng ta muốn công việc được thực hiện thường xuyên, vào bất kể giá trị nào trong vị trí tương ứng(hàng ngày, hàng giờ, ...) chúng ta có thể sử dụng ký tự `*`. Nếu hai thành phần đầu là `15 *`, nó có nghĩa: thực thi vào 15 phút hàng giờ. Nếu chúng ta thiết lập `*` cho thành phần phút, nó có nghĩa là mỗi phút. Và chúng thực sự hữu ích cho các công việc được thực hiện lặp đi lặp lại.

Cùng đóng lại phần lý thuyết khi đi qua 2 thành phần còn lại.

- `user` - chỉ định người dùng thực hiện lệnh. Phần user chỉ được sử dụng bởi các crontab hệ thống hoặc một số trường hợp cụ thể, chúng ta không cần sử dụng nó trong các crontab của người dùng.
- `command` - thật đơn giản, là lệnh, script mà chúng ta cần thực thi.

Xin lưu ý rằng, ví dụ được cung cấp sẽ không bao gồm phần `user`.

Và cuối cùng, trong ví dụ, chúng ta có `/usr/bin/ls > /dev/null 2>&1` chuyển hướng kết quả vào tệp tin `/dev/null`, thư mục thùng rác :D

Right... Chuẩn bị ngón tay trên bàn phím, cuối cùng cũng đã đến lúc thực hành thực sự!

## Thiết lập cronjob

Mỗi dòng trong crontab được gọi là cronjob. Khi tôi đề cập tới job, chúng ta hiểu đó là công việc được lập lịch.

Để liệt kê các job, chúng ta chạy

```plain
crontab -l
```{{exec}}

Chúng ta thấy gì, `no crontab for root`. Bởi vì user root mặc định không có job nào được định nghĩa.

Hãy định nghĩa một job, sẽ được thực thi lúc 9:12, ngày 23 hàng tháng. Công việc là `ls /var/log` và gửi toàn bộ kết quả vào tệp tin log.

`crontab -e`{{exec}} để mở trình biên dịch. (ở thời điểm lần đầu, chúng ta cần thiết lập trình biên dịch mặc định. Tôi thì thích `vim` :)) Nhưng để đơn giản, bạn nên dùng `nano`

Hãy thêm nội dung sau

```plain
12 9 23 * * /usr/bin/ls -al > logfile 2>&1
```

Và lưu lại tệp tin. Với vim chúng ta ấn `esc` và gõ `:wq` rôi `enter`. Với nano, ấn `ctrl+s` sau đó là `crtl+x`.

Bạn sẽ thấy `installing new crontab`

Công việc đã được thiết lập?

```plain
crontab -l
```{{exec}}

Yes, chúng ta đã viết cronjob đầu tiên.

> Như bạn có thể thấy, tôi đã cố ý sử dụng usr/bin/ls - đường dẫn đầy đủ, tuyệt đối. Nó không cần thiết trong ví dụ này, tuy nhiên đó là một thực hành tốt để sử dụng sau này. Hãy nhớ rằng cronjob khi được thực thi sẽ tạo ra một shell khác. Chúng ta cần đảm bảo rằng shell mới được tạo này có thể sử dụng hệ thống của chúng ta. Trong ví dụ này, khi tôi sử dụng ls, shell của tôi đang tìm tệp thực thi trong $PATH đã xác định. Điều gì sẽ xảy ra nếu Shell mới không được xác định $PATH?

Ok, bạn sẽ không chờ tới đúng ngày để theo dõi kết quả được đâu. Hãy thiết lập nó về lịch `* * * * *` - mỗi phút đều thực hiện. Chỉ cần đợi một chút, chúng ta sẽ thấy `logfile` được tạo ra cùng nội dung mới được ghi vào.

```plain
cat logfile
```{{exec}}

Crontab của chúng ta thuộc sở hữu của user root, bởi chúng ta đã sử dụng người dùng root để gọi các lệnh `crontab`

```plain
ls -al /var/spool/cron/crontabs/root
```{{exec}}


Hãy xem bên trong có gì:

```plain
cat /var/spool/cron/crontabs/root
```{{exec}}

Bên trong tệp tin chính xác là cái mà chúng ta đã định nghĩa trước đó.

## Logs

Các bản phân phối khác nhau của Linux sẽ định nghĩa nơi lưu trữ logs cho cron khác nhau. Ở đây, chúng ta sử dụng Ubuntu, chúng ta có log trong tệp tin `/var/log/syslog`.

```plain
cat /var/log/syslog
```{{exec}}

và tìm kiếm `CMD (/usr/bin/ls -al > logfile 2>&1`

Chúng ta cũng có thể sử dụng `journal`

```plain
journalctl -u cron
```{{exec}}

Chúng ta sẽ có các đầu mục của user `cron`.

Hoặc một cách khác, chúng ta có thể dùng lệnh `systemctl`

```plain
systemctl status cron.service
```{{exec}}

> Công cụ sinh crontab tuyệt vời, bạn có thể thấy [ở đây](https://crontab.guru/) và [ở đây](https://crontab-generator.org/)
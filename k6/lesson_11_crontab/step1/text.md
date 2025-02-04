# Crontab là gì?

Mặc dù tiêu đề là về `crontab`, nhưng chúng ta sẽ bắt đầu từ một thứ khác `cron`.

## `Cron`

Bây giờ, để nói một cách dễ hiểu, `cron` là một dịch vụ chịu trách nhiệm điều khiển và thực thi các công việc được lập lịch. Nó được bắt đầu ngay khi hệ thống khởi động và làm việc tới khi hệ thống bị tắt.

Hãy xem một vài cách để chúng ta có thể kiểm tra trạng thái của dịch vụ này.

```plain
systemctl status cron.service
```{{exec}}

Lệnh `systemctl` để quản lý các dịch vụ chạy trong hệ thống. Tại thời điểm này, thông tin chúng ta cần quan tâm đó là `Active: active(running)`. Điều này có nghĩa dịch vụ đang hoạt động. Nếu dịch vụ không hoạt động, chúng ta có thể bật nó: `systemctl start cron.service`{{exec}}

```plain
ps aux | grep cron
```{{exec}}

Hiển thị tiến trình liên quan tới dịch vụ cron. Chúng ta sẽ thấy thứ tương tự với:

```plain
root 565 0.0 0.1 8536 3084 ? Ss 19:48 0:00 /usr/sbin/cron -f
```

Ok, để tổng kết phần này, `cron` là một dịch vụ điều khiển nhiều `crontab`.

## Crontab

`crontab` đơn giản là một danh sách công việc hoặc lệnh được lên lịch để thực thi tại một thời điểm cụ thể. Linux có nhiều loại crontab, hãy lần lượt đi qua chúng.

### `/etc/crontab`

Tệp tin đầu tiên chúng ta thảo luận nằm trong thư mục `/etc`. 

```plain
ls -al /etc/crontab
```{{exec}}

Đây là crontab thuộc mức độ hệ thống. Như bạn có thể thấy, tất cả người dùng đọc, nhưng chỉ có admin có thể sửa tệp tin này. Lưu ý rằng, đây không phải là crontab của user root, mà nó là crontab của toàn bộ hệ thống.

Crontab này có thư mục liên kết - `/etc/cron.d`. Hãy xem có gì bên trong

```plain
ls -al /etc/cron.d
```{{exec}}

Well, chúng ta có các script, những thứ được lập lịch trong `/etc/crontab`.

### `cron.daily` và ...

Trong thư mục này, chúng ta có một vài thư mục

```plain
ls -al /etc/cron.* -d
```{{exec}}

Bạn sẽ thấy

```plain
drwxr-xr-x 2 root root 4096 Oct  7  2021 /etc/cron.daily
drwxr-xr-x 2 root root 4096 Oct  7  2021 /etc/cron.hourly
drwxr-xr-x 2 root root 4096 Oct  7  2021 /etc/cron.monthly
drwxr-xr-x 2 root root 4096 Oct  7  2021 /etc/cron.weekly
```

Nhìn vào tên thư mục, hẳn bạn cũng có ý tưởng giống tôi. Đúng vậy, những thư mục này chứa các script và sẽ được thực thi theo lịch trình daily(hàng ngày), hourly(hàng giờ), monthly(hàng tháng) hay weekly(hàng tuần).

Hãy xem một ví dụ:

```plain
ls -al /etc/cron.daily
```{{exec}}

Well, không có crontab nào, chỉ có script mặc định(`.placeholder`, bạn không cần quan tâm tới tệp tin này đâu). 

Làm thế nào các công việc được thực hiện? Chà, câu trả lời nằm trong tệp mà chúng ta đã biết:

```plain
cat /etc/crontab
```{{exec}}

Chúng ta thấy có 4 lệnh `anacron` thực thi với lịch trình khác nhau. Chúng ta sẽ học về các thiết lập lịch sau chút ít nữa. Đây là phần việc của hệ thống, đừng chỉnh sửa những tập lệnh `anacron`, hãy để hệ thống làm việc của nó.

### `/var/spool/cron/crontabs

Ok, hãy tới một nơi khác. Trong thư mục này, hiện tại nó đang trống, là nơi lưu trữ các crontab của user. Nó cũng có liên quan tới user root.

```plain
ls -al /var/spool/cron/crontabs
```{{exec}}

Chúng ta có thể xác nhận thư mực đang trống. 

Bây giờ chúng ta sẽ chuyển tới phần tiếp theo, mới thực sự hay ho, học cách định nghĩa công việc trong crontab!
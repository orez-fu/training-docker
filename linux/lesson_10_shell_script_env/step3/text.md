# Viết shell script

Chúng ta đã chạy script, giờ là lúc chúng ta học cách tự viết và thực hiện script. Mục tiêu, chúng ta sẽ cài đặt chương trình Nginx bằng script.

Hãy mở editor, thực sự dễ dàng để tương tác với tệp tin. Tạo tệp tin `install_nginx.sh` và thêm nội dung sau:

```plain
sudo apt update
sudo apt install nginx -y
```

Sau khi thêm, chúng ta trở lại terminal và đảm bảo tệp tin `install_nginx.sh` đã có nội dung ở trên:

```plain
cat install_nginx.sh
```{{exec}} 


Để chạy được script chúng ta cần thêm quyền `execute` cho tệp tin.

```plain
chmod a+x install_nginx.sh && ls -l install_nginx.sh
```{{exec}}

Tệp tin đã sẵn sàng để chạy, hãy chạy script đầu tiên:

```plain
bash install_nginx.sh
```{{exec}}

Chúng ta hãy chờ kết quả hoàn thành của tệp tin. Chương trình nginx sẽ được cài đặt vào hệ thống.

Nếu tò mò, bạn có thể chạy lệnh kiểm tra dịch vụ nginx

```plain
systemctl status nginx
```{{exec}}
# Nhiều khả năng hơn

Để sao chép tệp tin, hay nói một cách khác, sao chép nội dung của tệp tin, chúng ta có thể sử dụng redirection.

Chúng ta có một tệp tin đặc biệt `.profile`. Hãy sử dụng tệp tin này để thực hiện sao chép nội dung.

```plain
clear
ls -l newfilewithcontent.txt
```{{exec}}

Tệp tin này không tồn tại.

```plain
cat .profile > newfilewithcontent.txt
ls -l newfilewithcontent.txt
```{{exec}}

Bây giờ chúng ta đã có một tệp tin mới. Hãy xem, nếu nội dung được sao chép, nội dung sẽ giống nhau.

```plain
cat .profile
cat newfilewithcontent.txt
```{{exec}}

Nhìn vào nội dung, so sánh từng dòng từng dòng, thủ công như này không phải cách hay. Vì nếu tệp tin tới 10000, bạn sẽ nhìn đủ 10000? :)

Có một cách thông minh hơn để so sánh nội dung 2 tệp tin

```plain
diff .profile newfilewithcontent.txt
```{{exec}}

Không có đầu ra nghĩa là cả 2 tệp tin giống nhau.


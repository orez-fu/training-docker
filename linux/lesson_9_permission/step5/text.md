# Owner và group

Cuối cùng, chúng ta sẽ thực hành với chủ sở hữu(owner) và nhóm sở hữu(group owner) được gắn với tệp tin và thư mục.

Chúng ta cần chuyển sang một user khác ngay bây giờ

```plain
exit
```{{exec}}

```plain
su - student2
```{{exec}}

Hãy nhìn một chút vào thư mục home của người dùng student2.

```plain
ls -al
```{{exec}}

Mỗi đối tượng tệp tin thư mục có một owner(`student2`) và một group(`student1`). Tại sao?

```plain
id student1
```{{exec}}

```plain
id student2
```{{exec}}

```plain
cat /etc/passwd | grep student
```{{exec}}

Như bạn có thể thấy, group mặc định của `student2` đã bị thay đổi. Thực sự, khi tạo lập bài lab, tôi đã thực hiện `usermod -g student1 student2`, tôi đã thay đổi group mặc định cho user này.

Ok, hãy thoát khỏi `student2` và chuyển sang người dùng `student1`.

```plain
exit
```{{exec}}

```plain
su - student1
```{{exec}}

Và bây giờ, hãy thử:

```plain
cd /home/student2
```{{exec}}

Well, chúng ta có thể đi tới thư mục home của user khác.

```plain
ls -l
```{{exec}}

Và chúng ta có thể liệt kê nó.

```plain
ls -l student2
```{{exec}}

```plain
cat student2/student2
```{{exec}}

Chúng ta có thể liệt kê thư mục con và đọc nội dung.

```plain
echo 'test' >> student2/student2
```{{exec}}

Nhưng chúng ta rõ ràng, không thể ghi nội dung vào tệp tin. `-bash: student2/student2: Permission denied`.

Tổng kết ở phần này, user `student2` thuộc về group `student1` cùng với user `student1`. Vì vậy, họ có thể có thêm đặc quyền để làm việc trên cùng một đối tượng. Đặc quyền thấp hơn owner, nhưng cao hơn với mọi người trong hệ thống.
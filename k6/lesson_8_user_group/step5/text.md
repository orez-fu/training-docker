# Thao tác với Group

Ở phần admin của group, chúng ta học về 2 hành động đơn giản: thêm mới group và xóa group.

Cú pháp thêm group `groupadd <group_name> -g <GID>`, chúng ta có thể bỏ qua đối số `-g` và hệ thống sẽ tự đặt GID theo thứ tự tăng dần. Hãy tạo một group vào hệ thống

```plain
groupadd mygroup
```{{exec}}

```plain
grep mygroup /etc/group
```{{exec}}

Cú pháp xóa group  `groupdel <group_name>`, nếu có user thuộc về group này, sau khi thực hiện lệnh `groupdel`, user đó sẽ không còn thuộc về group bị xóa.

```plain
groupdel mygroup
```{{exec}}

```plain
grep mygroup /etc/group
```{{exec}}

Group đã được tạo và xóa đi :D.


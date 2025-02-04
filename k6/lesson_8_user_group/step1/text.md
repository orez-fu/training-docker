# Giới thiệu về user

User là cách chúng ta tương tác với hệ điều hành. Chúng ta cần đăng nhập, cung cấp user, password, hoặc user và ssh key - một cách tốt hơn và được khuyến nghị.

Khi đăng nhập, chúng ta có thể tương tác với hệ thống, phần cứng và ứng dụng với các ranh giới được xác định. Ví dụ: chúng ta có thể thấy thư mục này, nhưng không thấy thư mục khác, chúng ta có thể khởi động và tắt một ứng dụng mà user của chúng ta có quyền thực hiện.

Hãy bắt đầu bằng cách biết chúng ta là user nào. Let's get started!

## Who you are

```plain
whoami
```{{exec}}

Lệnh `whoami` chỉ ra user đã đăng nhập.

Một cách khác để chúng ta có thông tin này, thống qua lệnh

```plain
id
```{{exec}}

Ở đây chúng ta sẽ có thông tin User ID(UID), Primary Group ID(GID) và những group khác chứa user.

Chúng ta cũng có thể sử dụng lệnh `id` để biết về thông tin của một user khác, ví dụ user `ubuntu`

```plain
id ubuntu
```{{exec}}

Những thông tin về user `ubuntu` mà bạn có thể thấy: UID là 1000, GID là 1000, và danh sách các groups khác mà có user `ubuntu` ở trong.


```plain
groups ubuntu
```{{exec}}

Chúng ta nhận được kết quả phía sau dấu `:` là danh sách groups mà user `ubuntu` thuộc về. Tương tự như trên, nếu chúng ta không truyền tên user vào, thì mặc định user hiện tại được lấy làm đầu vào cho lệnh `groups`.
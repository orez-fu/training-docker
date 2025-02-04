# Tạo alias bền vững

Chúng ta có 2 cách thêm alias vĩnh viễn(nếu chúng ta không xóa alias :) ).

Đầu tiên, hãy nhìn vào tệp `.bashrc`.

```plain
grep "alias " .bashrc
```{{exec}}

Chúng ta sẽ thấy một vài alias được định nghĩa.

Chúng ta có thể thêm alias bằng cách thêm trực tiếp vào tệp `.bashrc` bằng editor hoặc bằng lệnh echo với cú pháp thêm vào `alias <alias_name>=<command>`.

```plain
echo "alias lh='ls -alh'" >> .bashrc
```{{exec}}

Để alias được nạp vào phiên làm việc hiện tại, chúng ta cần thực hiện:

```plain
source .bashrc
```{{exec}}

`source` được sử dụng trong nhiều trường hợp. Đọc và thực thi các script trong tệp trong phiên làm việc hiện tại.

Ok, hãy thử alias chúng ta vừa thêm:

```plain
lh
```{{exec}}


# Tạo mới thư mục

Trước tiên, hãy kiểm tra xem chúng ta có gì trong thư mục hiện tại.

```plain
ls -l
```{{exec}} 

Để tạo thư mục, chúng ta cần sử dụng lệnh `mkdir`.

Ok, hãy tạo thư mục đầu tiên

`mkdir myfirstdirectory`{{exec}} tạo thư mục với tên được truyền vào. Hãy kiểm tra lại xem chúng ta có gì trong thư mục hiện tại với lệnh `ls -l`{{exec}}

Chúng ta có thể tạo liên tiếp các thư mục chỉ bằng một lệnh

```plain
mkdir mydirectory anotherdirectory thirddirectory
```{{exec}}

Câu lệnh này tạo ra 3 thư mục cho chúng ta trong thư mục hiện tại.

```plain
ls -l
```{{exec}}

Ok, một chút phức tạo hơn, chúng ta có thể tạo một thư mục có chiều sâu, tức tạo liên tiếp thư mục nằm trong một thư mục khác.

```plain
mkdir -p parentdir/childdir/smalldir
```{{exec}}

Chúng ta đã làm gì ở đây? Với `-p`, hệ t hống sẽ tạo thư mục cha và tạo thư mục con bên trong. Bên trong thư mục `parentdir`, chúng ta tạo thư mục `childdir`, và trong thư mục `childder` chúng ta tiếp tục tạo thư mục `smalldir`. Nice.

Hãy xem chúng ta đã tạo những gì

```plain
ls -l
```{{exec}}

Và hãy xem nội dung của thư mục `parentdir`

```plain
ls -l parentdir
```{{exec}}


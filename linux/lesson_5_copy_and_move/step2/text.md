# Di chuyển tệp tin

Ok. chúng ta đã biết cách sao chép tệp tin. Tuy nhiên đôi khi, chúng ta muốn di chuyển một tệp tin từ một nơi tới một nơi khác. Trong trường hợp này, chúng ta cần sử dụng `mv` command. Cách sử dụng khác giống với `cp`, nhưng...đơn giản hơn.

## Di chuyển một tệp tin

Hãy làm gọn màn hình.

```plain
clear
```{{exec}}

Tạo một thư mục khác:

```plain
mkdir movedfiles
```{{exec}}

Và cuối cùng chúng ta đã sẵn sàng để di chuyển tệp tin đầu tiên.

```plain
ls -l sourcedir/one
mv sourcedir/one movedfiles
ls -l sourcedir/one
ls -l movedfiles
```{{exec}}

Done. Và, chúng ta có thể di chuyển và đổi tên cho tệp tin:

```plain
ls -l anotherdir/one
mv anotherdir/one movedfiles/another-one
ls -l anotherdir/one
ls -l movedfiles
```{{exec}}

Bạn có thể dễ dàng thấy kết quả của các câu lệnh, đúng chứ!

## Di chuyển nhiều tệp tin

Đơn giản như `cp` chúng ta có thể di chuyển các tệp tin tới một nơi khác. Nó sẽ trông như này:

```plain
mv file1 file2 file3 targetlocation
```

Hãy thử:

```plain
mv sourcedir/two01 sourcedir/two02 movedfiles
ls -l movedfiles
```{{exec}}

## Di chuyển thư mục

Và cuối cùng, chúng ta có thể di chuyển tất cả thư mục.

```plain
mv anotherdir newdir
ls -l anotherdir
ls -l newdir
```{{exec}}

Và nó hoạt động tương tự như `cp` khi `mv` thực hiện di chuyển thư mục tới một thư mục đã tồn tại.

```plain
mv newdir movedfiles
ls -l newdir
ls -l movedfiles
ls -l movedfiles/newdir
```{{exec}}
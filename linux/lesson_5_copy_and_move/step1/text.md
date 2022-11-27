# Sao chép tệp tin

Đầu tiên, chúng ta hãy xem làm thế nào để sao chếp các tệp tin. Copy - Sao chép, có nghĩa là chúng ta có sao chép một tệp tin tồn tại tới một tệp tin mới hoặc một nơi mới. Và tệp tin gốc vẫn còn.

Trong lab này, chúng ta đã có một vài thư mục và tệp tin được chuẩn bị. Hãy xem qua.

```plain
tree sourcedir
```{{exec}}

Chúng ta sử dụng một câu lệnh mới ở đây, `tree`. Nó sẽ hiển thị đầy đủ nội dung trong cấu trúc thư mục.

## Lệnh `cp`

Câu lệnh để copy file là `cp`. Cú pháp của lệnh rất đơn giản:

```plain
cp source target
```{{exec}}

Ok, câu lệnh đơn giản là sao chép nội dung của tệp tin được khai báo ở phần `source` tới một tệp tin mới ở phần `target`. Hãy sử dụng câu lệnh. Nhưng trước hết, chúng ta cần tạo một thư mục nơi các bản sao sẽ cư trú.

```plain
mkdir targetdir
```{{exec}}

Hãy di chuyển vào thư mục source

```plain
cd sourcedir
```{{exec}}

Bây giờ, chúng ta có thể sao chép một tệp tới thư mục target. Từ vị trí hiện tại của chúng ta(`/root/sourcedir`), target nằm trong thư mục cao hơn so với vị trí thư mục hiện tại, vì vậy chúng ta cần sử dụng `..` để có thể di chuyển tới thư mục chứa thư mục target. Hãy sao chép tệp tin `one`

```plain
cp one ../targetdir
```{{exec}}

Ok, Chúng ta đã có tệp tin trong thư mục target?

```plain
ls -l ../targetdir/one
```{{exec}}

Câu trả lời là có. Và tệp tin `one` với vai trò là source vẫn còn ở thư mục hiện tại

```plain
ls -l one
```{{exec}}

Yeah! Chúng ta đã chạy câu lệnh `cp` thành công.

## Sao chép và chỉ định tên của tệp tin mới

Dễ thấy, chúng ta có thể sử dụng `cp` không chỉ cho sao chép tệp tin, mà chúng ta còn có thể thay đổi tên cho tệp tin target.

Trong ví dụ trước, chúng ta sao chép tệp `one`. Hãy sao chép tệp tin này lần nữa, nhưng để có 2 tệp tin trong thư mục target.

```plain
cp one ../targetdir/another-one
```{{exec}}

Hãy kiểm tra

```plain
ls -l ../target
```{{exec}}

## Sao chép hai hoặc nhiều tệp tin trong một câu lệnh

Chúng ta đã biết cách sao chép tệp tin. Tuy nhiên, chúng ta làm thế nào để sao chép 2 tệp tin?

`copy sourcefile1 targetfile1` và sau đó `copy sourcefile2 targetfile2`? Dĩ nhiên, chúng ta có thể làm theo cách này. Nhưng với 3 tệp, hay 10 tệp và nhiều hơn thế nữa... :)

Ok, đừng vội, chúng ta sẽ quay lại với nó. Ngay bây giờ, hãy xem cách chúng ta có thể sao chép 2 hoặc nhiều tệp trong một câu lệnh.

Chúng ta sẽ làm với cú pháp sau

```plain
cp file1tocopy file2copy file3tocopy targetlocation
```

Tham số cuối cùng trong câu lệnh sẽ chỉ ra thư mục chứa những tệp sao chép cho danh sách tệp tin ở trong phần tham số của câu lệnh(trừ tham số cuối cùng)

```plain
cp two01 two02 ../targetdir
```{{exec}}

Ok. Hãy kiểm tra xem thư mục `targetdir` có 2 tệp này không

```plain
ls -l ../targetdir
```{{exec}}

## Sao chép nhiều tệp tin

Chúng ta có thể sao chép nhiều tệp tin theo cách dễ hơn, sử dụng wildcard(là những ký tự đại diện cho một hoặc nhiều ký tự bất kỳ, cho phép so khớp mẫu này với các chuỗi khác nhau).

Trong Linux, chúng ta có nhiều wildcard, tuy nhiên chúng ta sẽ chỉ học về 2 wildcard:
- `?` wildcard này cho phép thay thế bởi một ký tự bất kỳ. Vì vậy, nếu chúng ta muốn sao chép tất cả các tệp, trong đó tên tệp bắt đầu bằng `my` và kết thúc bằng `file`, nhưng có một ký tự nào đó ở giữa, chẳng hạn như `a`, `g` hoặc `6`, nhưng nó phải chỉ có một ký tự (ví dụ như `my3file`, nhưng không phải `myFGfile`), tôi có thể sử dụng `?`. Nó sẽ giống như thế này `my?file`.
- `*` wildcard này thay thế tất cả các ký tự có độ dài bất kỳ. Xem xét ví dụ trước, nếu chúng ta muốn sao chép `my1file` và `myFGfile`, chúng ta sẽ sử dụng `my*file`.

Ok, wildcard cũng có tác dụng trong câu lệnh `ls`, và chúng ta cũng đã sử dụng ở một vài lab trước. Hãy thử.

```plain
ls -l three*
```{{exec}}

```plain
ls -l three* | wc -l
```{{exec}}

Chúng ta có 10 tệp, đúng chứ?

```plain
cp three0? ../targetdir
```{{exec}}

```plain
ls -l ../targetdir/three*
```{{exec}}

```plain
ls -l ../targetdir/three* | wc -l
```{{exec}}

Chúng ta có 9 tệp tin. Tại sao? Hãy nhìn vào danh sách tệp tin `three*` có trong thư mục hiện tại, và mẫu mà chúng ta sử dụng trong lệnh `cp` là `three0?`, wildcard đã có sự khác biệt, và đáp án đã nằm trong đầu bạn.

## Sao chép thư mục

Chúng ta đã sao chép rất nhiều tệp tin. Hãy thử sao chép toàn bộ thư mục, chứ không còn đơn thuần là tệp tin.

Đầu tiên, chúng ta sẽ quay trở lại như mục cha

```plain
cd ..
```{{exec}}

Và thực hiện sao chép toàn bộ một thư mục

```plain
cp -R sourcedir anotherdir
```{{exec}}

Đối số `-R` nghĩa là *recursively*, tức là lặp đi lặp lại, đi vào sâu các cấu trúc bên trong của thư mục, cho phép chúng ta sao chép toàn bộ thư mục.

```plain
ls -l anotherdir
```{{exec}}

Chúng ta đã sao chép toàn bộ thư mục thành công. Cấu trúc thư mục `anotherdir` giống như cấu trúc thư mục `sourcedir`

Bây giờ, một thứ quan trọng. Hãy nhớ rằng, thư mục đích phải không tồn tại trước khi thực hiện lệnh. Điều gì sẽ xảy ra nếu thư mục đích đã tồn tại? Hãy cùng xem!

```plain
mkdir testdir
```{{exec}}

Bây giờ, chúng ta có thư mục `testdir`, và chúng ta đã sẵn sàng sao chép toàn bộ tệp tin từ thư mục `sourcedir`. Chúng ta sẽ thử làm chính xác với lệnh trước đó

```plain
cp -R sourcedir testdir
```{{exec}}

Sao chép với đối số `-R` sẽ thực hiện sao chép toàn bộ thư mục vào bên trong thư mục `testdir`

```plain
ls -l testdir
```{{exec}}

Ở đây, chúng ta thấy toàn bộ thư mục được sao chép ở bên trong thư mục `testdir`, tồn tại thư mục `sourcedir` trong thư mục `testdir`.

```plain
ls -l testdir/*
```{{exec}}

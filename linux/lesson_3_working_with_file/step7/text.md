# `head` & `tail`

Thay vì khả năng in ra toàn bộ tệp tin và điều hướng thông trên một chế độ xem. Chúng ta có thể in ra một phần của nội dung.

## `head`

Chúng ta muốn in ra những dòng đầu của một tệp, chúng ta có thể sử dụng `head`. Theo mặc định, lệnh `head` sẽ hiển thị 10 dòng đầu tiên trong tệp tin.

```plain
head logfile
```{{exec}}

Nếu chúng ta muốn thấy lượng dòng ít hơn hay nhiều hơn, chúng ta có thể sử dụng đối số `-n` và quyền vào số lượng dòng muốn in.

Hãy thử in ra chỉ 2 dòng

```plain
head -n 2 logfile
```

Và bây giờ in ra 22 dòng

```plain
head -n 22 logfile
```

## `tail`

`tail` thực hiện chính xác những thứ `head` thực hiện, và khác biệt là `tail` đọc từ dòng cuối cùng.

```plain
tail logfile
```{{exec}}

Lệnh này sẽ in ra 10 dòng cuối cùng theo mặc định về số dòng.

```plain
tail -n 2 logfile
```{{exec}}

sẽ in ra 2 dòng cuối cùng trong tệp tin.

```plain
tail -n 22 logfile
```{{exec}}

sẽ in ra 22 dòng.

Giống như `less` và `more`, cả `head` và `tail` cũng có thể sử dụng kết hợp với pipes.

Hãy xem các ví dụ sau đây. Hãy cố gắng hiểu cái mà bạn thấy sau khi thực hiện câu lệnh!

```plain
cat logfile | tail -n 5
```{{exec}}

```plain
cat logfile | head
```{{exec}}

```plain
cat logfile | head -n 4 | tail -n 2
```{{exec}}


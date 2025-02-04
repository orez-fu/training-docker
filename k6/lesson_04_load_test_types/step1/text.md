# Khái niệm pipe và redirection

Pipe và redirection được sử dụng để gửi hoặc nhận thông tin từ một lệnh hoặc script tới một lệnh hoặc script khác. Nó cũng hoạt động trên các tệp tin.

Hãy nghĩ về một vài ví dụ sau:
- Đếm số dòng của một tệp tin
- Tìm kiếm những dòng xuất hiện một chuỗi trong một tệp tin
- Đọc nội dung một tệp tin và viết nó vào một tệp tin khác
- ...

Trước khi bắt đầu, ở đây có một vài lệnh chúng ta sẽ sử dụng khi học về pipe. Dĩ nhiên, những lệnh này cũng có thể được thực thi một cách độc lập giống như những lệnh chúng ta đã học.

`grep`. Lệnh này sẽ tìm kiếm một mẫu cho trước trong một dữ liệu truyền tới. Dữ liệu truyền tới có thể là tệp tin hoặc kết quả của một lệnh khác

```plain
grep 'case' .bashrc
```{{exec}}

Lệnh này sẽ tìm kiếm chuỗi `case` trong tệp tin `.bashrc`.

`wc` là một công cụ để đếm số từ, số lượng dồng, số lượng bytes. Trường hợp phổ biến của lệnh này là đếm số dòng.

Khi chúng ta thực hiện lệnh 

```plain
wc -l .bashrc
```{{exec}}

kết quả là số lượng dòng trong tệp tin `.bashrc`. `-l` là đối số cho phép lệnh trả về só lượng dòng.

`sort` sẽ sắp xếp kết quả theo thứ tự bảng chữ cái

```plain
sort numbers.txt
```{{exec}}

Câu lệnh sẽ sắp xếp các số trong nội dung của tệp tin đã được chuẩn bị trước.

`uniq` cho phép chúng ta giới hạn sự xuất hiện của những dòng có nội dung giống nhau, chỉ xuất hiện 1 dòng cho những dòng trùng lặp nội dung. Nhưng để thực hiện điều này đúng cách, cần phải sắp xếp, do đó, chúng ta cần pipe để chuẩn bị đầu vào cho lệnh `uniq`.

Ok, chúng ta sẽ học một vài lệnh mới, hãy sử dụng với pipe.

## The pipe `|`

Ký tự của pipe trong lệnh là `|`.

Cấu trúc sử dụng pipe trông giống như này:

```plain
command1 | command2
```

```plain
command1 | command2 | command3
```

Yes, chúng ta có thể kết hợp bao nhiêu pipe tùy thích.

Nó hoạt động thế nào? Kết quả của `command1` sẽ được lấy làm đầu vào cho `command2`. Và quá trình này có thể tiếp tục tới lệnh tiếp theo.

Ok. Hãy in ra nội dung của tệp tin.

```plain
cat numbers.txt
```{{exec}}

Ok, tệp tin này có khá là nhiều dòng. Có bao nhiêu dòng? Hãy chuyển kết quả từ lệnh mà chúng ta vừa sử dụng vào lệnh `wc`!

```plain
cat numbers.txt | wc -l
```{{exec}}

Chúng ta có một số ở kết quả của câu lệnh, đó chính là số lượng dòng của tệp tin. Perfect! Trong nội dung của tệp tin tôi tạo ra, gồm các số từ 0 tới 99, và mỗi số xuất hiện 100 lần, tổng chúng ta sẽ có `100 * 100 = 10000`.

Bây giờ, hãy cho biết số lượng bản ghi riêng biệt(unique) ở trong tệp tin. 

```plain
cat numbers.txt | uniq | wc -l
```{{exec}}

Hm... có thứ gì đó chưa đúng. Hãy cùng suy nghĩ...

Hãy phân tích câu lệnh trên, chúng ta đã in ra tệp tin, chúng ta sử dụng `uniq` để lọc ra những giá trị riêng biệt và đếm chúng. 

Nhưng chúng ta đã quên mất rằng, trong trường hợp này, nội dung trong tệp tin in ra chưa được sắp xếp, nên lệnh `uniq` sẽ không hoạt động chính xác. Và chúng ta cần thực hiện `sort` trước pipe `uniq`.

Hãy thử.

```plain
cat numbers.txt | sort | uniq | wc -l
```{{exec}}

Yeah! Nó đã hoạt động. 
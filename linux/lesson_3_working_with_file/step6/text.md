# less and more

Bây giờ là thời gian học 2 lệnh mới để in ra nội dung của tệp tin. Chúng ta đã biết về `cat`. Nhược điểm của `cat` là in ra toàn bộ nội dung của tệp tin ra cửa sổ dòng lệnh. Nó sẽ không thích hợp cho những tệp tin có nội dung lớn.

## `more`

Câu lệnh đầu tiên mà chúng ta có thể sử dụng, cho trải nghiệm tốt hơn nhiều là `more`.

```plain
more logfile
```{{exec}}

Bây giờ, chúng ta đang ở chế độ tương tác, và chúng ta có thể điều hướng nội dung trên tệp. Tuy nhiên, lệnh `more` cũng có hạn chế riêng. Chúng ta chỉ có thể xem nội dung tiếp theo bằng cách sử dụng phím `enter`, mà không thể xem lại nội dung ở phía trước. Để thoát khỏi chế độ tương tác này, hãy ấn phím 

```plain
q
```{{exec}}

## `less`

Có một công cụ tinh tế hơn để đọc nội dung của  tệp. Nó được gọi là `less`. Lệnh này cho chúng ta khả năng điều hướng tốt hơn. Chúng ta có thể quay lại bằng cách sử dụng phim `k`, và đọc tiếp nội dung bằng phím `j`(giống như phím ấn của `vim`), ngoài ra công cụ này còn cho phép chúng ta tìm kiếm theo từ khóa, bằng cách sử dụng ký tự `/`

```plain
less logfile
```{{exec}}

Bây giờ, hãy thử di chuyển nội dung bằng các phím điều hường `k` (lên) và `j` (xuống).

```plain
/Resolution
```{{exec}}

Điều này sẽ tìm kiếm chuỗi `Resolution` trong tệp tin. Chúng ta có thể ấn `n` để duyệt tới các kết quả tìm được ở phía dưới; và `N` để đi tới kết quả duyệt ở phía trên của file. Hãy nhớ, Linux có phân biệt hoa thường!

Để thoát khỏi chế độ này, chúng ta ấn
```plain
q
```{{exec}}

## Pipes

Một điều thú vị, chúng ta có thể sử dụng kết hợp các lệnh `cat` với `more` hoặc `less` cùng với pipes. Chúng ta sẽ học về pipes ở kịch bản tiếp theo. Hãy đơn giản là sử dụng pipes theo ví dụ

```plain
cat logfile | more
```{{exec}}

```plain
cat logfile | less
```{{exec}}

# Lý thuyết - 2 phương thức thiết lập permissions

## Numeric mode

Numeric mode sử dụng các chữ số để đặt quyền cho mỗi khối. Mỗi khối tương ứng với một đối tượng sở hữu, đại diện bởi một chữ số. Mỗi chữ số có ý nghĩa cụ thể. Đây là bảng quan hệ giữa các chữ số và quyền.

| Số  | Nghĩa                  |
| --- | ---------------------- |
| 0   | no access              |
| 1   | eXecute                |
| 2   | Write                  |
| 3   | Write + eXecute        |
| 4   | Read                   |
| 5   | Read + eXecute         |
| 6   | Read + Write           |
| 7   | Read + Write + eXecute |

Trong cột nghĩa của số, tôi đã thực hiện viết hoa ký tự của permission, để bạn có thể liên tưởng với permission một cách trực quan hơn

Vì vậy, để thể hiện permission cho `rwx------`, chúng ta có thể dùng dạng số `700`.

## Symbolic mode

Symbolic mode cho phép bạn làm việc dễ dàng hơn nhiều, trực quan hơn. Ở đây chúng ta sẽ sử dụng các quyền được ký hiệu ở dạng chữ(rwx), `operator` và `user denotation` để định nghĩa quyền.

| Operator | Nghĩa                                                           |
| -------- | --------------------------------------------------------------- |
| =        | Thiết lập toàn bộ khối permission và ghi đè permission trước đó |
| -        | Xóa quyền cho đối tượng sở hữu được truyền vào                  |
| +        | Thêm quyền cho đối tượng sở hữu được truyền vào                 |


| User denotation | Nghĩa                      |
| --------------- | -------------------------- |
| u               | Owner                      |
| g               | Group                      |
| o               | other                      |
| a               | all (owner, group, others) |

Ví dụ, nếu chúng ta muốn thêm quyền thực thi cho owner, chúng ta sẽ sử dụng `u+x`. Nếu chúng ta muốn thêm quyền thực thi cho mọi người `a+x`. Và nếu chúng ta quyết định xóa quyền thực thi của other `o-x`. 

Và cuối cùng, nếu chúng ta cần cho quyền đọc và thực thi tới tệp tin cho other, ta có thể sử dụng operator `=` như sau: `o=rx`.


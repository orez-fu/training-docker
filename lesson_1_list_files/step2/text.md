# Thêm thông tin chi tiết

## Thêm thông tin chi tiết cho lệnh `ls`

All right. Chúng ta đã biết cách lấy ra danh sách các mục trong thư mục. Chúng ta đã có một góc nhìn, nhưng không chi tiết với nhiều thông tin.

Trước khi chúng ta học cách lấy nhiều thông tin, có một lệnh chúng ta sẽ thực hiện ngay, xóa màn hình.

```plain
clear
```{{exec}}

Ok, cùng nhau tiếp tục học về `ls`. Câu lệnh có nhiều các đối số và chúng ta có thể thêm ở phía sau để thay đổi kết quả của câu lệnh. Những đối số này cần theo quy ước của câu lệnh.

Vì vậy, đối số đầu tiên của chúng ta sẽ cung cấp thêm chi tiết trong kết quả. Hãy thực hiện

```plain
ls -l
```{{exec}}

Ký tự `-` chỉ ra chúng ta sẽ truyền đối số. Chúng ta có 2 cách sau:

- `-` 1 ký tự gạch ngang thông báo cho hệ thống rằng chúng ta sẽ truyền vào đối số bằng chữ cái, ví dụ như `l`
- `--` 2 ký tự gạch nganh có nghĩa là đối số sẽ gồm nhiều hơn một chữ cái. Cầu hết nó sẽ là một từ tiếng anh.

`l` nghĩa là định dạng kiểu long listing. Định dạng này sẽ gồm có vài cột:

- permissions(quyền): chúng ta có thể thấy đối tượng có loại quyền nào. Chúng ta sẽ làm việc với permission sớm thối :)
- number of hard links: Mặc định các đối tượng có 1 hard link. Có thể hiểu một hard link đơn giản là liên kết của 1 đối tượng với một đối tượng khác. Thư mục sẽ có nhiều hard một hard link.
- Owner(Sở hữu): Người sở hữu của đối tượng. Nó không chỉ ra ai là người tạo ra đối tượng, nhưng nó cho biết ở thời điểm hiện tại, ai là người sở hữu đối tượng.
- Group(Nhóm sở hữu): Đối tượng thuộc về một nhóm người dùng. Những người cùng một nhóm sẽ có quyền truy cập cụ thể vào tệp.
- Size(Kích thước): Kích thước của đối tượng, đơn vị hiển thị là byte.
- Date & Time: Thời gian cuối cùng mà đối tượng bị thay đổi.
- Filename: tên của file

Owner và Group chúng ta thấy ở dạng tên, còn đối với hệ thống, Owner và Group sẽ được đọc ở dạng số `UID` và `GID`, tương ứng là số định danh. Chúng ta có thể hiển thị thông tin UID và GID thông qua đối số `n`, hãy chạy câu lệnh

```plain
ls -n
```{{exec}}

Câu lệnh `ls -n` hoạt động tương đối giống `ls -l`, nhưng nó sẽ thay đổi tên của user và goup thành mã UID và GID.


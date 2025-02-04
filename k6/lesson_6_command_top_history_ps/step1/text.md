# Câu lệnh quản trị đầu tiên - `top`

Ở thời điểm này, chúng ta đã học rất nhiều câu lệnh. Chúng ta đã sẵn sàng tới với công việc của quản trị viên, hãy bắt đầu bằng câu lệnh đơn giản `top`.

```plain
top
```{{exec}}

Câu lệnh cho chúng ta trạng thái về tài nguyên sử dụng trên hệ thống và danh sách các tiến trình đang chạy.

Hãy phân tích kết quả trên màn hình

## Dòng đầu tiên

Chúng ta sẽ thấy dòng đầu trên màn hình tương tự như sau:

`top - 19:38:28 up 2 days, 20:47, 0 users, load average: 0.52, 0.58, 0.59`

`top` - tên chương trình
`19:38:28` - dĩ nhiên, thời gian hiện tại
`up 2 days, 20:47` - uptime, hay nói cách khác, là thời gian từ lúc hệ thống khởi động
`0 users` - số lượng người dùng đang hoạt động. 
`load average: 0.52, 0.58, 0.59` - 3 số đại diện cho tải của hệ thống, liên quan tới hoạt động của CPUs, Cores, Threads. 1 tương ứng với 1 core của hệ thống.

## Dòng số hai

`Tasks: 124 total,   1 running, 123 sleeping,   0 stopped,   0 zombie`

Là những thông tin về các tiến trình trong hệ thống của chúng ta.

`total` - Tổng số tiến trình, không bao gồm những tiến trình ở trạng thái `idle`
`running` - Các tiến trình đang ở trạng thái hoạt động(đang sử dụng cpu)
`sleeping` - Những tiến trình ở trạng thái chờ, nghỉ :D 
`stopped` - Những tiến trình ở trạng thái stop
`zombie` - Những tiến trình chờ kết thúc, do tiến trình phục thuộc(tiến trình cha) chưa kết thúc.

## Dòng số ba

Bây giờ, chúng ta đã tới dòng số ba. Dòng này hiển thị mức sử dụng của CPU ở các loại khác nhau, đơn vị %.

`us` - user - Tất cả tiến trình của người dùng được tính tổng ở đây.
`sy` - system - Các tiến trình được khởi chạy bởi hệ thống(kernel)
`ni` - nice - Các tiến trình ở trạng thái ưu tiên trong hệ thống.
`id` - idle - lượng cpu nhàn rỗi, sẵn sàng để sử dụng, chạy các tiến trình
`wa` - iowait - số đại diện cho thời gian mà tiến trình đợi input/output
`hi` - hardware interrupts. Đây là những gián đoạn vật lý được xử lý bởi CPU
`si` - software interrupts. Kernel sử dụng cho phần mềm.
`st` - steal time - lượng tài nguyên hệ thống đợi từ hypervisor - các chương trình ảo hóa.

## Dòng số bốn và số năm

```plain
MiB Mem :   1983.3 total,    122.1 free,    327.2 used,   1534.0 buff/cache
MiB Swap:   1024.0 total,   1023.5 free,      0.5 used.   1464.6 avail Mem 
```

Chúng ta sẽ đi qua 2 dòng cùng lúc, chúng đều đại diện cho thông tin của memory - có thể hiểu đơn giản là RAM. Dòng số 4 là thông tin của physical memory, và dòng số 5 là thông tin của swap - đây là phân vùng đặc biệt của hệ thống Linux tách từ ở đĩa, được sử dụng như là RAM.

Các thành phần `total`, `free`, và `used` là dễ hiểu, tổng memory, lượng memory còn khả dụng, lượng memory đang sử dụng.

`buff/cache` là tổng số lượng memory được sử dụng bởi kernel cho việc buffer và cache dữ liệu.

`available` đơn giản là lượng memory tối đa mà 1 chương trình khởi động có thể sử dụng.

## Danh sách tiến trình

Bên dưới 5 dòng là danh sách các tiến trình, hãy hiểu về các trường thông tin:

`PID` - ID của tiến trình, là số duy nhất trong hệ thống
`USER` - chủ sở hữu của tiến trình hay nói cách khác, tiến trình được khởi động bởi người dùng nào.
`PR` - độ ưu tiên mặc định của tiến trình mà kernel cung cấp
`NI` - nince, hiển thị giá trị ưu tiên của tiến trình
`VIRT` - tổng lượng memory sử dụng bởi tiến trình
`RES` - lượng memory sử dụng bởi tiến trình
`SHR` - lượng memory chia sẻ với các tiến trình khác, có thể bao gồm các tiến trình của hệ thống, tiến trình con.
`S` - trạng thái của tiến trình.
`%CPU` - lượng CPU khả dụng sử dụng bởi tiến trình
`%MEM` - lượng memory khả dụng cho tiến trình sử dụng.
`TIME+` - thời gian CPU sử dụng cho tiến trình
`COMMAND` - khá rõ ràng, tiến trình được thực thi bởi lệnh.

Để thoát khỏi câu lệnh, sử dụng phím `q`

```plain
q
```{{exec}}

Nếu bạn tò mò những công cụ lệnh khác cho kết quả hiển thị đẹp hơn, đó có thể là `htop` hay `gotop`.

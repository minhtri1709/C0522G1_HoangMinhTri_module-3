-- Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

use my_case_study;
select ho_ten
from khach_hang 
group by ho_ten;

select distinct ho_ten
from khach_hang;


select ho_ten
from khach_hang
union 
select ho_ten
from khach_hang
group by khach_hang.ma.khach_hang;

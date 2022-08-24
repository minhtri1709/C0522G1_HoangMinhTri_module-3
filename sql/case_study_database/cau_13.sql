-- Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

use my_case_study;
select hop_dong_chi_tiet.ma_dich_vu_di_kem, sum(hop_dong_chi_tiet.so_luong) as so_luong_su_dung, dich_vu_di_kem.ten_dich_vu_di_kem
from hop_dong_chi_tiet
join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
group by hop_dong_chi_tiet.ma_dich_vu_di_kem
having so_luong_su_dung = (
select sum(so_luong) so_luong
from hop_dong_chi_tiet
group by ma_dich_vu_di_kem
order by so_luong desc
limit 1)

-- Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem).

use my_case_study;
select hop_dong.ma_hop_dong,dich_vu.ten_dich_vu, dich_vu_di_kem.ten_dich_vu_di_kem ,sum(hop_dong_chi_tiet.so_luong) as so_luong_su_dung
from hop_dong_chi_tiet
join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
join hop_dong on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
group by hop_dong_chi_tiet.ma_dich_vu_di_kem
having so_luong_su_dung = 1;
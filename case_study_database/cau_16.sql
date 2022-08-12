-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
use my_case_study;
SET SQL_SAFE_UPDATES = 0;
update nhan_vien
set nhan_vien.tinh_trang_lam_viec = 0
where nhan_vien.ma_nhan_vien not in 
(
select ma_nhan_vien
from hop_dong
where year(hop_dong.ngay_lam_hop_dong) in (2019, 2021)
);
select* from nhan_vien;
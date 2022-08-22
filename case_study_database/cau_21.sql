-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.

use my_case_study;
create view v_nhan_vien as 
select nhan_vien.dia_chi, hop_dong.ngay_lam_hop_dong, hop_dong.ma_nhan_vien
from hop_dong 
join nhan_vien on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
where nhan_vien.dia_chi like '%Hải Châu%' and hop_dong.ngay_lam_hop_dong = '2019/12/12';

select * from v_nhan_vien;

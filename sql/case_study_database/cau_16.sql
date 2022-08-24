-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
use my_case_study;
SET SQL_SAFE_UPDATES = 0;
UPDATE nhan_vien 
SET 
    nhan_vien.tinh_trang_lam_viec = 0
WHERE
    nhan_vien.ma_nhan_vien NOT IN (SELECT 
            ma_nhan_vien
        FROM
            hop_dong
        WHERE
            YEAR(hop_dong.ngay_lam_hop_dong) IN (2019 , 2021));
select* from nhan_vien;
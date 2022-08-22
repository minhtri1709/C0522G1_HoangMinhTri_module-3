-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.

use my_case_study;
CREATE VIEW khach_hang_tong_tien AS
    SELECT 
        kh.ma_khach_hang,
        SUM(IFNULL(dv.chi_phi_thue, 0) + (IFNULL(hdct.so_luong, 0) * IFNULL(dvdk.gia, 0))) AS tong_tien
    FROM
        khach_hang kh
            LEFT JOIN
        loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
            LEFT JOIN
        hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
            LEFT JOIN
        dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
            LEFT JOIN
        hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
            LEFT JOIN
        dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
    WHERE
        YEAR(ngay_lam_hop_dong) = 2021
            AND ten_loai_khach = 'Platinium'
    GROUP BY hd.ma_hop_dong , hd.ma_khach_hang;

SET SQL_SAFE_UPDATES = 0;
UPDATE khach_hang 
SET 
    ma_loai_khach = (SELECT 
            ma_loai_khach
        FROM
            loai_khach
        WHERE
            ten_loai_khach = 'Diamond')
WHERE
    ma_khach_hang IN (SELECT 
            ma_khach_hang
        FROM
            khach_hang_tong_tien
        WHERE
            tong_tien > 10000000);
-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

use my_case_study;
SELECT 
    khach_hang.ma_khach_hang, khach_hang.ho_ten
FROM
    khach_hang
        JOIN
    hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
WHERE
    hop_dong.ma_khach_hang IN (SELECT 
            hop_dong.ma_khach_hang
        FROM
            hop_dong
        WHERE
            YEAR(hop_dong.ngay_lam_hop_dong) < 2021)
GROUP BY khach_hang.ma_khach_hang;
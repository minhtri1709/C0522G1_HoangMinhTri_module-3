-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

use my_case_study;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            hdct.ma_dich_vu_di_kem
        FROM
            hop_dong_chi_tiet hdct
                JOIN
            hop_dong ON hop_dong.ma_hop_dong = hdct.ma_hop_dong
        WHERE
            (YEAR(hop_dong.ngay_lam_hop_dong) = 2020)
                AND hdct.so_luong > 10);

SELECT 
    ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia
FROM
    dich_vu_di_kem
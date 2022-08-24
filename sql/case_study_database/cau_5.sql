use my_case_study;
-- Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, 
-- hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra)
CREATE VIEW v_so_tien_nam_2021 AS
    SELECT 
        kh.ma_khach_hang,
        kh.ho_ten,
        loai_khach.ten_loai_khach,
        hop_dong.ma_hop_dong,
        dich_vu.ten_dich_vu,
        hop_dong.ngay_lam_hop_dong,
        hop_dong.ngay_ket_thuc,
        dich_vu.chi_phi_thue + IFNULL((hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia),
                0) AS tong_tien
    FROM
        khach_hang kh
            LEFT JOIN
        loai_khach ON loai_khach.ma_loai_khach = kh.ma_loai_khach
            LEFT JOIN
        hop_dong ON hop_dong.ma_khach_hang = kh.ma_khach_hang
            LEFT JOIN
        dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
            LEFT JOIN
        hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
            LEFT JOIN
        dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
    WHERE
        YEAR(hop_dong.ngay_lam_hop_dong) = '2021';
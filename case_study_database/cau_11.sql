-- Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond”
 -- và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
 
 use my_case_study;
 select dich_vu_di_kem.ma_dich_vu_di_kem , dich_vu_di_kem.ten_dich_vu_di_kem,khach_hang.dia_chi
 from dich_vu_di_kem 
 join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
 join hop_dong on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
 join khach_hang on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
 where  khach_hang.dia_chi like '%Vinh' or khach_hang.dia_chi like '%quảng ngãi'
 and khach_hang.ma_loai_khach = 1
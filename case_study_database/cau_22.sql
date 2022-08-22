-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
update nhan_vien
set nhan_vien.dia_chi = 'Liên Chiểu' 
where nhan_vien.ma_nhan_vien in 
( select ma_nhan_vien from v_nhan_vien)

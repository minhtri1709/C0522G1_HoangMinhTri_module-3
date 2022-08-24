use my_case_study;

select ma_nhan_vien, ho_ten 
from nhan_vien
where (ho_ten like 'H%'
or ho_ten like 'K%'
or ho_ten like 'T%')
and char_length(ho_ten) <=15;

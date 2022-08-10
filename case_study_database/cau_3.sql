use my_case_study;
select ma_khach_hang, ho_ten
from khach_hang
where( 
(dia_chi regexp 'đà nẵng$'
or dia_chi regexp 'quảng trị$')
and
(round(datediff(curdate(), ngay_sinh )/365,0 )>= 18
and round(datediff(curdate(), ngay_sinh )/365,0 )<= 50)
);

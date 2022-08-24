use quan_ly_sinh_vien;

select *, max(credit)
from `subject`;

select *, max(mark)
from mark
right join `subject` on `subject`.sub_id = mark.sub_id;

select * , avg(mark)
from student
left join mark on mark.student_id = student.student_id
group by student.student_id
order by mark.mark desc

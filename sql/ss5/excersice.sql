drop database if exists quan_ly_cua_hang;
create database quan_ly_cua_hang;
use quan_ly_cua_hang;

create table products (
id int primary key auto_increment,
product_code varchar(20),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status tinyint
);

insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
values(1, 'ao mua', 1000, 10, 'ao mua dung de di nang', 1),
(10, 'ao mua', 1000, 10, 'ao mua dung de di nang', 1),
(3, 'ao quan', 1000, 10, 'ao mua dung de di nang', 1),
(4, 'ao polo', 1000, 10, 'ao mua dung de di nang', 1),
(2, 'ao thun', 1000, 10, 'ao mua dung de di nang', 1),
(6, 'ao khoac', 1000, 10, 'ao mua dung de di nang', 1),
(7, 'ao t-shirt', 1000, 10, 'ao mua dung de di nang', 1),
(8, 'ao rong bay', 1000, 10, 'ao mua dung de di nang', 1);

select* from products; 
create unique index i_product_code on products(product_code);
create index i_composite_key on products(product_name, product_price);

use quan_ly_cua_hang;
explain select * from products
where product_code =  '1';


create view v_products as
select product_code, product_name, product_price, product_status 
from products

delimiter //
create procedure get_all_info_products()
begin 
select * from products;
end //
delimiter ;

delimiter //
create procedure insert_new_product(in p_code varchar(20), p_name varchar(50), p_price double, p_amount int, p_descripton varchar(50), p_status tinyint )
begin 
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
values(p_code, p_name, p_price, p_amount, p_descripton, p_status);
end //
delimiter ;

call insert_new_product(13, 'quan dai', 100000, 1, 'quan de mang len co', 2);
select* from products

delimiter //
create procedure update_by_id(in p_id int, p_code varchar(20), p_name varchar(50), p_price double, p_amount int, p_descripton varchar(50), p_status tinyint)
begin 
update products
set product_code = p_code,
product_name = p_name,
product_price = p_price,
product_description = p_descripton,
product_status = p_status
where product_code = p_id;
end //
delimiter ;
SET SQL_SAFE_UPDATES = 0;
call update_by_id(1, 15, 'quan dai', 100000, 1, 'quan de mang len co', 2);
select* from products


delimiter //
create procedure delete_by_id(in p_id int)
begin 
delete from products
where product_code = p_id;
end //
delimiter ;

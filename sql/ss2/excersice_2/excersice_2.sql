drop database if exists bai_tap_2;
create database if not exists bai_tap_2;
use bai_tap_2;

create table customer(
customer_id int primary key auto_increment,
customer_name varchar(50),
customer_age tinyint
);

create table `order`(
order_id int primary key auto_increment,
customer_id int,
order_date date,
order_total_price double,
foreign key(customer_id) references customer(customer_id)
);

create table product(
product_id int primary key auto_increment,
product_name varchar(50),
product_price double
);

create table order_product(
order_id int, 
product_id int,
order_quantity varchar(50),
primary key(order_id, product_id),
foreign key(order_id) references `order`(order_id),
foreign key(product_id) references product(product_id)
);

insert into customer(customer_id, customer_name, customer_age)
value (1, 'Minh Quan', 10),
      (2, 'Ngoc Oanh', 20),
      (3, 'Hong Ha', 50);
      
insert into `order`(order_id, customer_id, order_date, order_total_price)
value(1, 1, '2006/3/26',null),
	(2, 2, '2006/3/3',null),
    (3, 1, '2006/3/16',null);

insert into product(product_id, product_name, product_price)
value(1, 'May giat', 3),
(2, 'Tu lanh', 5),
(3, 'Dieu hoa', 7),
(4, 'Quat', 1),
(5, 'Bep dien', 2);

insert into order_product(order_id, product_id, order_quantity)
value(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

select order_id, order_date, order_total_price
from `order`
;

select customer.customer_name, product.product_name
from customer 
join `order` on customer.customer_id = `order`.customer_id
join order_product on `order`.order_id = order_product.order_id
join product on order_product.product_id = product.product_id;

select customer.customer_name, count(`order`.customer_id) as so_luong
from customer
left join `order` on `order`.customer_id = customer.customer_id
group by `order`.customer_id
having so_luong = 0;

select `order`.order_id, order_date,sum(order_product.order_quantity*product.product_price) as tong_tien_hoa_don
from `order`
join order_product on order_product.order_id = `order`.order_id
join product on product.product_id = order_product.product_id
group by `order`.order_id

drop database if exists bai_tap_2;
create database if not exists bai_tap_2;
use bai_tap_2;

create table customer(
customer_id int primary key auto_increment,
c_name varchar(50),
c_age date
);

create table `order`(
order_id int primary key auto_increment,
customer_id int,
o_date date,
o_total_price double,
foreign key(order_id) references customer(customer_id)
);

create table product(
product_id int primary key auto_increment,
p_name varchar(50),
p_price double
);

create table oder_product(
order_id int, 
product_id int,
od_qty varchar(50),
primary key(order_id, product_id),
foreign key(order_id) references `order`(order_id),
foreign key(product_id) references product(product_id)
);
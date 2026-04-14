create database shop_order;

use shop_order;

create table customers(
	customer_id int primary key,
    customer_name varchar(100)
);

create table orders(
	order_id int primary key,
	order_date date,
    amount_total decimal(10, 2) not null,
    id_customer int not null,
    foreign key (id_customer) references customers (customer_id)
);

alter table orders
modify column order_date date default (current_date);
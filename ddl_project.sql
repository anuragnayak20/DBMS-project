REM   Script: DDL DBMS Project
REM   DDL commands for the tables

create table Orders(order_no int primary key,Order_idate date,Order_cdate date,ship_no int ,item_no int);

create table Shipments(order_id int references Orders(order_no),shipnumber int primary key,ship_date date);

create table Items(order_id references Orders(order_no),item_no int primary key,item_desc varchar(50),price decimal(5,2));

create table Inventory(item_id references Items(item_no),item_name varchar(30) primary key,quantity int);

create table Storage1(itemname varchar(30) references Inventory(item_name));


REM   Script: DML Project
REM   DML commands run on the project

create table Orders(order_no int primary key,Order_idate date,Order_cdate date,ship_no int ,item_no int);

create table Shipments(order_id int references Orders(order_no),shipnumber int primary key,ship_date date);

create table Items(order_id references Orders(order_no),item_no int primary key,item_desc varchar(50),price decimal(5,2));

create table Inventory(item_id references Items(item_no),item_name varchar(30) primary key,quantity int);

create table Storage1(itemname varchar(30) references Inventory(item_name));

insert into Orders values(1,date '2022-1-1',date '2022-2-28',10,100);

insert into Orders values(2,date '2022-1-7',date '2022-3-7',11,101);

select * from Orders;

insert into Shipments values(1,10,date '2022-1-3');

insert into Shipments values(2,11,date '2022-1-9');

select * from Shipments;

insert into Items values(1,100,'Delicious noodles',25.00);

insert into Items values(2,101,'Instant coffee',30.00);

select * from Items;

insert into Inventory values(100,'Maggi',2);

insert into Inventory values(101,'Nescafe',3);

select * from Inventory;

insert into Storage1 values('Maggi');

insert into Storage1 values('Nescafe');

select * from Storage1;


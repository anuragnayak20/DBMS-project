REM   Script: Updated ddl and dml project
REM   New ddl and dml acc to er diagram

create table Orders(order_no int primary key,order_issue date, 
order_complete date,sender varchar(60),reciever varchar(60));

create table Items(order_no int references Orders(order_no), 
item_no int,item_desc varchar(100),price decimal(10,2));

create table Shipments(order_no int references Orders(order_no), 
shipment_no int,s_ource varchar(60),destination varchar(60), 
shipment_date date);

drop table Items;

create table Items(order_no int references Orders(order_no), 
item_no int primary key,item_desc varchar(100),price decimal(10,2));

create table Inventory (item_id int references Items(item_no), 
item_name varchar(50),quantity int);

drop table Inventory;

create table Inventory (item_id int references Items(item_no), 
item_name varchar(50) primary key,quantity int);

create table S_torage (N_ame varchar(50) references Inventory(item_name) primary key, 
address varchar(100),manager varchar(50));

insert into Orders(order_no,order_issue,order_complete,sender,reciever) 
values(1,date '2022-4-18',date '2022-4-22','Rishy','Aniket');

insert into Orders(order_no,order_issue,order_complete,sender,reciever) 
values(2,date '2022-4-18',date '2022-6-22','Rishy','Saurav');

insert into Orders(order_no,order_issue,order_complete,sender,reciever) 
values(3,date '2022-4-23',date '2022-4-30','Saurav','Aniket');

insert into Orders(order_no,order_issue,order_complete,sender,reciever) 
values(4,date '2022-4-23',date '2022-4-30','Aniket','Ved');

insert into Orders(order_no,order_issue,order_complete,sender,reciever) 
values(5,date '2022-5-1',date '2022-5-7','Ved','Rishy');

select * from Orders;

insert into Shipments(order_no,shipment_no,s_ource,destination) 
values(1,100,'Chennai','Kolkata');

insert into Shipments(order_no,shipment_no,s_ource,destination) 
values(2,101,'Chennai','Patna');

insert into Shipments(order_no,shipment_no,s_ource,destination) 
values(3,102,'Patna','Kolkata');

insert into Shipments(order_no,shipment_no,s_ource,destination) 
values(4,103,'Kolkata','Kolkata');

insert into Shipments(order_no,shipment_no,s_ource,destination) 
values(5,104,'Kolkata','Chennai');

select * from Shipments;

insert into Shipments(shipment_date)  
values(date '2022-4-18');

insert into Shipments(shipment_date)  
values(date '2022-4-18');

insert into Shipments(shipment_date)  
values(date '2022-4-23');

insert into Shipments(shipment_date)  
values(date '2022-4-23');

insert into Shipments(shipment_date)  
values(date '2022-5-1');

truncate table Shipments


insert into Shipments(order_no,shipment_no,s_ource,destination,shipment_date) 
values(1,100,'Chennai','Kolkata',date '2022-4-18');

insert into Shipments(order_no,shipment_no,s_ource,destination,shipment_date) 
values(2,101,'Chennai','Patna',date '2022-4-18');

insert into Shipments(order_no,shipment_no,s_ource,destination,shipment_date) 
values(3,102,'Patna','Kolkata',date '2022-4-23');

insert into Shipments(order_no,shipment_no,s_ource,destination,shipment_date) 
values(4,103,'Kolkata','Kolkata',date '2022-4-23');

insert into Shipments(order_no,shipment_no,s_ource,destination,shipment_date) 
values(5,104,'Kolkata','Chennai',date '2022-5-1');

select * from Shipments;

insert into Items(order_no,item_no,item_desc,price) 
values(1,1,'Ramen noodles',30.00);

insert into Items(order_no,item_no,item_desc,price) 
values(2,2,'Ramen noodles',30.00);

insert into Items(order_no,item_no,item_desc,price) 
values(3,3,'Coffee',40.00);

insert into Items(order_no,item_no,item_desc,price) 
values(4,4,'Chocolate',300.00);

insert into Items(order_no,item_no,item_desc,price) 
values(5,5,'Tea',50.00);

select * from Items;

insert into Inventory(item_id,item_name,quantity) 
values(1,'Top ramen',3);

insert into Inventory(item_id,item_name,quantity) 
values(1,'Maggi',2);

insert into Inventory(item_id,item_name,quantity) 
values(1,'Nescafe',1);

insert into Inventory(item_id,item_name,quantity) 
values(1,'Ferero Rocher',4);

insert into Inventory(item_id,item_name,quantity) 
values(1,'Tata tea gold',2);

select * from Inventory;

insert into S_torage(N_ame,address,manager) 
values('Top ramen','Warehouse,Chennai','John');

insert into S_torage(N_ame,address,manager) 
values('Maggi','Warehouse,Chennai','John');

insert into S_torage(N_ame,address,manager) 
values('Nescafe','Godown,Patna','Mike');

insert into S_torage(N_ame,address,manager) 
values('Ferero Rocher','Warehouse,Kolkata','Ali');

insert into S_torage(N_ame,address,manager) 
values('Tata tea gold','Warehouse,Kolkata','Rahul');

select * from S_torage;

update Inventory set item_id = 2 where item_name='Maggi';

update Inventory set item_id = 3 where item_name='Nescafe';

update Inventory set item_id = 4 where item_name='Ferero Rocher';

update Inventory set item_id = 5 where item_name='Tata tea gold';

select * from Inventory;


# Inventory Management System:
This the project for DBMS course in 6th semester for B.Tech
It is the database implementation of an Inventory Management System.
# Features:
Along with converting a bulky record keeping venture into a smooth streamlined digital database,
it makes the job of a cashier,accountant, and other employees easier by facilitating easy inventory
checking, storage monitoring, accounting costs, and many more.

# ER diagram:
<img width="493" alt="image" src="https://user-images.githubusercontent.com/95675913/162114736-36535154-ca8c-48cd-ab12-7fb63c81a7c2.png">

# Table screenshots:
### Orders:
Table containing  all order info.

<img width="336" alt="image" src="https://user-images.githubusercontent.com/95675913/163910844-306f7195-d8c7-4a5c-8737-6839aa8554f4.png">

### Shipments:
Table containing shipped orders info.

<img width="354" alt="image" src="https://user-images.githubusercontent.com/95675913/163910956-24c2c736-13cb-4718-8209-b74ccbb1260c.png">

### Items:
Table containing availabe items info.

<img width="233" alt="image" src="https://user-images.githubusercontent.com/95675913/163910986-246b6786-e3c1-4ab5-bd48-dbd98ea5da4d.png">

### Inventory:
Table containing inventory info.

<img width="187" alt="image" src="https://user-images.githubusercontent.com/95675913/163911021-c868f91d-2d44-4022-8b1a-51a2f47957a5.png">

### S_torage:
Table containing storage info.

<img width="244" alt="image" src="https://user-images.githubusercontent.com/95675913/163911047-4071da44-a547-4270-8fb5-80054bb24590.png">

# Builtin-functions:

```SQL
--date functions
select last_day(order_issue) from Orders where order_no=2;
--characteristic functions
select initcap(destination) from Shipments where order_no=5;
--conversion
select to_date(order_complete,'dd-mm-yy') from Orders where order_no = 3;
--numerical
select min(price) from Items;
--miscellaneous
select vsize(address) from S_torage where N_ame = 'Maggi';
```

# Basic select statements:

```SQL
select * from Orders;
select * from Shipments;
select * from Items;
select * from Inventory;
select * from S_torage;
select order_no as SerialNo,order_issue as IssuedOn,reciever as RecievedBy from Orders;
select N_ame from S_torage where N_ame like 'M%';
select item_id,item_name from Inventory order by item_id desc;
```

# Subqueries:

```SQL
--select subqueries
select shipment_no,s_ource,destination from Shipments where
order_no in (select order_no from Orders where order_issue = '18-APR-22');
--not in keyword
select shipment_no,s_ource,destination from Shipments where
order_no not in (select order_no from Orders where order_issue = '18-APR-22');
--get item_id of costliest item
select item_no from Items where price = (select max(price) from Items);
--get name of costliest item
select distinct item_name from Inventory,Items where item_id = 
(select item_no from Items where price = (select max(price) from Items));
```

# Set operations & joins:

```SQL
--union all
select order_no,order_issue from Orders union all
select order_no,shipment_date from Shipments;
--union
select order_no,order_issue from Orders union all 
select order_no,shipment_date from Shipments;
--inner join
select * from Items inner join Inventory
on Items.item_no = Inventory.item_id;
--left outer join
select * from Items left outer join Inventory
on Items.item_no = Inventory.item_id;
```

# Views:

```SQL
create view ShippedOrders as select order_no,shipment_no,s_ource,sender 
from Shipments,Orders where Orders.order_no = Shipments.order_no;

create view  OrderedItems as select order_no,order_issue,price  
from Orders,Items where Orders.order_no = Items.order_no;

create view ItemInfo as select item_id,item_name,item_desc  
from Inventory,Items where Items.item_no = Inventory.item_id;

create view ItemsStored as select N_ame,address,quantity  
from Inventory,S_torage where Inventory.item_name = S_torage.N_ame;

create view ShippedOrders as select Orders.order_no,shipment_no,s_ource,sender 
from Shipments,Orders where Orders.order_no = Shipments.order_no;

create view  OrderedItems as select Orders.order_no,order_issue,price  
from Orders,Items where Orders.order_no = Items.order_no;

select * from ItemInfo;

select * from OrderedItems;

select * from ItemsStored;

select * from ShippedOrders;
```


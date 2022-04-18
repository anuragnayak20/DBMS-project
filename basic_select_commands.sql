--basic select statements
select * from Orders;
select * from Shipments;
select * from Items;
select * from Inventory;
select * from S_torage;
select order_no as SerialNo,order_issue as IssuedOn,reciever as RecievedBy from Orders;
select N_ame from S_torage where N_ame like 'M%';
select item_id,item_name from Inventory order by item_id desc;
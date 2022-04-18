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
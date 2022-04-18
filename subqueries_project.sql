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

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


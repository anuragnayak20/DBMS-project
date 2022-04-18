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
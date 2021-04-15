set statistics io on
set statistics time on

select orders.orderid, orders.orderdate, customers.country
	from orders join customers on customers.customerid = orders.customerid 
	where
		(year(orders.orderdate) >= 1996 and month(orders.orderdate) >= 10) and
		(customers.country = 'Canada' or customers.country = 'France')

create clustered index ind1_c on customers(customerid)
create clustered index ind2_c on orders(customerid)
create nonclustered index ind1_n on customers(country) 
create nonclustered index ind2_n on orders(orderdate) include (orderid)

select orders.orderid, orders.orderdate, customers.country
	from orders join customers on customers.customerid = orders.customerid 
	where
		((year(orders.orderdate) >= 1996 and month(orders.orderdate) >= 10) or (year(orders.orderdate) >= 1997)) and
		(customers.country = 'Canada' or customers.country = 'France')

		orders.orderdate >= '19961001'

drop index customers.ind1_n
drop index orders.ind2_n	 
drop index customers.ind1_c
drop index orders.ind2_c

--без индексов 5 мс и 58 операций
--с индексами 2 мс и 16 операций

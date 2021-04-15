set statistics io on
set statistics time on

select customers.customerid, customers.city, products.unitsinstock, orderdetails.discount
	from customers JOIN orders on customers.customerid = orders.customerid
	join orderdetails on orders.orderid = orderdetails.orderid
	join products on orderdetails.productid = products.productid
		where country = 'USA' and
		orderdetails.discount = 0 and
		products.unitsinstock between 15 and 20
	order by customers.customerid

create clustered index ind1_c on customers(customerid)
create clustered index ind2_c on orderdetails(productid, orderid)
create clustered index ind3_c on orders(customerid, orderid)
create clustered index ind4_c on products(productid)
create nonclustered index ind1_n on customers(country, city)
create nonclustered index ind4_n on products(unitsinstock)
create nonclustered index ind2_n on orderdetails(discount)

select customers.city, products.unitsinstock, orderdetails.discount
	from customers JOIN orders on customers.customerid = orders.customerid
	join orderdetails on orders.orderid = orderdetails.orderid
	join products on orderdetails.productid = products.productid
		where country = 'USA' and
		orderdetails.discount = 0 and
		products.unitsinstock between 15 and 20
	order by customers.customerid

drop index customers.ind1_c
drop index orderdetails.ind2_c
drop index orders.ind3_c
drop index products.ind4_c
drop index orderdetails.ind2_n
drop index products.ind4_n
drop index customers.ind1_n

--без индексов 263 мс и 80 операции
--с индексами 119 мс и 33 операции
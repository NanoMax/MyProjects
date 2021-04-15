set statistics io on
set statistics time on

select *
	from Customers

select customerid, Phone
	from customers
	where country = 'Germany' or country = 'Mexico'

create index ind1 on customers(country) include (Phone, customerid)

select customerid, Phone
	from customers
	where country = 'Germany' or country = 'Mexico'

drop index customers.ind1

set statistics io off
set statistics time off

--без индекса 1 мс и 37 операций
--с индексом 0 мс и 16 операций
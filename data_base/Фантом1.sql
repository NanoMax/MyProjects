set transaction isolation level serializable
--������, serializable

begin transaction

select *
	from [LOCATION]

waitfor delay '00:00:05'

select *
	from [LOCATION]

commit transaction

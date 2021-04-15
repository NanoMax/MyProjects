set transaction isolation level serializable
--Фантом, serializable

begin transaction

select *
	from [LOCATION]

waitfor delay '00:00:05'

select *
	from [LOCATION]

commit transaction

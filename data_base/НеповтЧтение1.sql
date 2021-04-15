set transaction isolation level repeatable read
--неповторяемое чтение, repeatable read

begin transaction

select *
from [LOCATION]
where LOCATION_ID = 1

waitfor delay '00:00:10'

select *
from [LOCATION]
where LOCATION_ID = 1

commit 
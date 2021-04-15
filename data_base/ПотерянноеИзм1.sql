set transaction isolation level read committed

begin transaction 

declare @a int

select @a = CITY_ID from [LOCATION]
where LOCATION_ID = 1

waitfor delay '00:00:05'

update [LOCATION]
set CITY_ID = @a + 1
where LOCATION_ID = 1

commit

select CITY_ID 
from [LOCATION]
where LOCATION_ID = 1
set transaction isolation level read uncommitted

begin transaction

declare @a int

select @a = CITY_ID from [LOCATION]
where LOCATION_ID = 1

update [LOCATION]
set CITY_ID = @a + 2
where LOCATION_ID = 1

commit

use lab3
--������� ������, read committed
go
set transaction isolation level read committed

begin tran
	select *
		from GAME
		where LOCATION_ID = 7
commit


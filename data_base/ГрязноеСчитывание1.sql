use lab3
--Грязное чтение, read committed
go
set transaction isolation level read committed

go 

begin tran 

declare @st int

set @st = (select GAMETYPE.GAMETYPE_ID 
	from GAMETYPE 
	where GAMETYPE.[NAME] = 'Голосящий КиВиН')

update GAME
	set LOCATION_ID = 7
	where GAMETYPE_ID = @st

rollback

select *
	from GAME
	where LOCATION_ID = 7


use lab3
--Грязное чтение, read uncommited
go
set transaction isolation level read uncommitted

go 

declare @st int

set @st = (select GAMETYPE.GAMETYPE_ID 
	from GAMETYPE 
	where GAMETYPE.[NAME] = 'Голосящий КиВиН')

begin tran

select *
		from GAME
		where LOCATION_ID = 7

commit

select *
	from GAME
	where LOCATION_ID = 7

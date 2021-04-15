use lab3 
--Грязное чтение, read uncommited
set transaction isolation level read uncommitted

declare @st int

set @st = (select GAMETYPE.GAMETYPE_ID 
	from GAMETYPE 
	where GAMETYPE.[NAME] = 'Голосящий КиВиН')

begin tran
	
update GAME
	set LOCATION_ID = 7
	where GAMETYPE_ID = @st

rollback
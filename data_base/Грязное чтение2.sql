use lab3 
--������� ������, read uncommited
set transaction isolation level read uncommitted

declare @st int

set @st = (select GAMETYPE.GAMETYPE_ID 
	from GAMETYPE 
	where GAMETYPE.[NAME] = '��������� �����')

begin tran
	
update GAME
	set LOCATION_ID = 7
	where GAMETYPE_ID = @st

rollback
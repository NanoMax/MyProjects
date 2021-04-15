use lab3
--добавить еше одну команду

select *
	from TEAM
	where TEAM.[NAME] = 'АССА'

insert into TEAM values('АССА', 1, 'МахГУ')

declare @Obj int
set @Obj = (select [OBJECT].[OBJECT_ID] from [OBJECT] where [OBJECT].[NAME] = 'ВУЗ')

update TEAM
set TEAM.OBJECT_ID = @Obj
where TEAM.[NAME] = 'АССА'

select *
	from TEAM
	where TEAM.[NAME] = 'АССА'


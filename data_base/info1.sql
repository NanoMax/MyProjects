use LAB3
--Город, количество команд, количество побед в финалах	
go
if OBJECT_ID('dbo.info1', 'V') is not null drop view dbo.info1

go 
create view info1 as
	select help.city, help.num, sum(case ABOUT_GAME.PLACE when 1 then 1 else 0 end) as res
	from (select TEAM.REPRESENTATIVE as city, count(TEAM.[NAME]) as num
	from TEAM, [OBJECT]
	where TEAM.[OBJECT_ID] = [OBJECT].[OBJECT_ID] and
	[OBJECT].[NAME] = 'Город'
	group by TEAM.REPRESENTATIVE) as help 
	left join TEAM on TEAM.REPRESENTATIVE = help.city
	left join ABOUT_GAME on ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID
	left join GAME on GAME.GAME_ID = ABOUT_GAME.GAME_ID
	left join STAGE on STAGE.STAGE_ID = GAME.STAGE_ID
	where STAGE.[NAME] like '%финал%'
	group by help.city, help.num

go 
select *
	from info1

--выберем команду города, где больше всего победители/команд
select top(1) with ties info1.city, cast(info1.res as float)/info1.num as ratio
	from info1
	where info1.num<>0
	order by ratio desc

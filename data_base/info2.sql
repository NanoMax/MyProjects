use lab3
--тип игры, год, количестов команд в этом году 
go
if OBJECT_ID('dbo.info2') is not null drop view dbo.info2

go
create view info2 as
	select GAMETYPE.[NAME] as game, year(GAME.[DATE]) as 'year', count(DISTINCT ABOUT_GAME.TEAM_ID) 'quant'
	from GAMETYPE 
	left join GAME on GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID
	left join ABOUT_GAME on ABOUT_GAME.GAME_ID = GAME.GAME_ID
	group by GAMETYPE.[NAME], year(GAME.[DATE])

go 
select *
	from info2

--команды которые участвовали в Чемпионате, в котором больше всего команд
declare @Game int
set @Game = (select top(1) info2.[year]
	from info2 
	where info2.game = 'Чемпионат высшей лиги'
	order by quant desc, info2.[year])

select distinct TEAM.[NAME]
	from ABOUT_GAME, GAME, TEAM, GAMETYPE
	where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
	GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID and
	ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
	GAMETYPE.[NAME] = 'Чемпионат высшей лиги' and
	year(GAME.[DATE]) = @Game
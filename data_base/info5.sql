use lab3
--команда, лучший сезон в чемпионате
go
if OBJECT_ID('dbo.info5') is not null drop view dbo.info5

go
create view info5 as
	select help.team, help.[year], help.res
	from (select TEAM.[NAME] as team, year(GAME.[DATE]) as 'year', avg(cast(ABOUT_GAME.PLACE as float)) as res
		from TEAM 
		left join ABOUT_GAME on ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID 
		left join GAME on GAME.GAME_ID = ABOUT_GAME.GAME_ID
		where ABOUT_GAME.PLACE <> 0
		group by TEAM.[NAME], year(GAME.[DATE])
	) as help left join 
	  (select TEAM.[NAME] as team, year(GAME.[DATE]) as 'year', avg(cast(ABOUT_GAME.PLACE as float)) as res
		from TEAM 
		left join ABOUT_GAME on ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID 
		left join GAME on GAME.GAME_ID = ABOUT_GAME.GAME_ID
		where ABOUT_GAME.PLACE <> 0
		group by TEAM.[NAME], year(GAME.[DATE])
	) as help1 
		on  help.team = help1.team and help.res > help1.res
	where help1.res is NULL
	
go
select *		
	from info5
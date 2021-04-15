--команда, дата, игра, место(для уже прошедших игр)
use lab3
go
if OBJECT_ID('dbo.info4') is not null drop view dbo.info4

go
create view info4 as
	select TEAM.[NAME] as team, GAME.[DATE],  STAGE.[NAME] + ' ' + GAMETYPE.[NAME] as 'game', ABOUT_GAME.PLACE as 'place'
	from ABOUT_GAME, GAME, TEAM, STAGE, GAMETYPE 
	where ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
	GAME.GAME_ID = ABOUT_GAME.GAME_ID and 
	GAME.STAGE_ID = STAGE.STAGE_ID and
	GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID and
	GAME.[DATE] < '2020.09.30'
	group by TEAM.[NAME], GAME.[DATE], STAGE.[NAME], GAMETYPE.[NAME], ABOUT_GAME.PLACE

go
select * 
	from info4
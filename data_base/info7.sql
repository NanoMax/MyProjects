use lab3
--выступления команд в финале занимавших 1 место в этих игр в финале
go
if object_id('dbo.info7') is not null drop view dbo.info7

go 
create view info7 as
	select TEAM.[NAME] as team, VIDEOS.LIINK_FOR_VIDEO as link, VIDEOS.[NAME] as video, TIME_CODE.TIME_START as time
	from ABOUT_GAME, GAME, TEAM, TIME_CODE, VIDEOS, STAGE
	where ABOUT_GAME.PLACE = 1 and 
	GAME.GAME_ID = ABOUT_GAME.GAME_ID and
	TIME_CODE.GAME_ID = GAME.GAME_ID and
	TIME_CODE.TEAM_ID = TEAM.TEAM_ID and
	VIDEOS.VIDEO_ID = GAME.VIDEO_ID and
	GAME.STAGE_ID = STAGE.STAGE_ID and
	STAGE.[NAME] = 'Финал'

go
select *
	from info7 
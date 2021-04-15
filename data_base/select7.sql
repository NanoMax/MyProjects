use lab3 
--вывести моменты участия в полуфинале и финале команды, которая выиграла чемпионат 2019 года
declare @Win int
set @Win = (select TEAM.TEAM_ID 
	from TEAM, ABOUT_GAME, GAME, GAMETYPE, STAGE
	where GAME.GAME_ID = ABOUT_GAME.GAME_ID and
	GAME.STAGE_ID = STAGE.STAGE_ID and
	GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID and
	TEAM.TEAM_ID = ABOUT_GAME.TEAM_ID and
	GAMETYPE.[NAME] = 'Чемпионат высшей лиги' and
	STAGE.[NAME] = 'Финал' and
	year(GAME.[DATE]) = 2019 and
	ABOUT_GAME.PLACE = 1
);

with
games as (
	select GAME.GAME_ID as game
	from ABOUT_GAME, GAME, GAMETYPE, STAGE
	where ABOUT_GAME.TEAM_ID = @Win and
	ABOUT_GAME.GAME_ID = GAME.GAME_ID and
	GAMETYPE.GAMETYPE_ID = GAME.GAMETYPE_ID and
	year(GAME.[DATE]) = 2019
	group by GAME.GAME_ID
)

select STAGE.[NAME], VIDEOS.LIINK_FOR_VIDEO, TIME_CODE.TIME_START
	from games, GAME, VIDEOS, TIME_CODE, STAGE
	where TIME_CODE.GAME_ID = games.game and
	TIME_CODE.TEAM_ID = @Win and
	GAME.GAME_ID = TIME_CODE.GAME_ID and
	VIDEOS.VIDEO_ID = GAME.VIDEO_ID and
	STAGE.STAGE_ID = GAME.STAGE_ID

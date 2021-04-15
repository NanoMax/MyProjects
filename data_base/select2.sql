use lab3 
--команда луше сыгравшая в 1/8 финала
select top(1) with ties TEAM.[NAME], avg(cast(ABOUT_GAME.PLACE as float)) as res, count(ABOUT_GAME.PLACE) as quantity
	from ABOUT_GAME 
	inner join GAME on ABOUT_GAME.GAME_ID = GAME.GAME_ID
	inner join GAMETYPE on GAMETYPE.GAMETYPE_ID = GAME.GAMETYPE_ID 
	inner join TEAM on TEAM.TEAM_ID = ABOUT_GAME.TEAM_ID
	inner join STAGE on STAGE.STAGE_ID = GAME.STAGE_ID
	where GAMETYPE.[NAME] = 'Чемпионат высшей лиги' and
	(STAGE.[NAME] = 'Первая 1/8 финала' or STAGE.[NAME] = 'Вторая 1/8 финала' 
	or STAGE.[NAME] = 'Третья 1/8 финала' or STAGE.[NAME] = 'Четвертая 1/8 финала')
	group by TEAM.[NAME]
	order by res, quantity desc
	
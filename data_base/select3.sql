use lab3;
--показать команды которые выступали до 2018 года(включительно)	
with in2018(team) as(
	select TEAM.[NAME]
		from TEAM, ABOUT_GAME, GAME
			where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
			ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
			year(GAME.[DATE]) = 2018
		group by TEAM.[NAME]
),
noin2018(team) as(
	select TEAM.[NAME]
		from TEAM, ABOUT_GAME, GAME
			where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
			ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
			year(GAME.[DATE]) > 2018
		group by TEAM.[NAME]
)

select team	
	from in2018 except
	select team 
	from noin2018	

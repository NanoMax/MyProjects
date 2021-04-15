use lab3;
--для команды принимавшей участие в чемпиаонате 2018 в которой больше всего девушек вывести ее рез-ты в этом чемпионате
with help 
as(
	select TEAM.TEAM_ID as team, count(PERSON.GENDER_ID) as women 
		from TEAM, PERSON, GENDER
		where PERSON.TEAM_ID = TEAM.TEAM_ID and
		GENDER.GENDER_ID = PERSON.GENDER_ID and
		GENDER.[NAME] = 'ЖЕН'
		group by TEAM.TEAM_ID
),
new as
(
	select help.team
		from help, ABOUT_GAME, GAME, GAMETYPE
		where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
		ABOUT_GAME.TEAM_ID = help.team and
		GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID and
		year(GAME.[DATE]) = 2018 and
		GAMETYPE.[NAME] = 'Чемпионат высшей лиги'
		group by team
),
teams as
(
	select top(1) with ties help.team as team, help.women as women
		from help, new
		where help.team = new.team
		order by help.women desc
)

select GAMETYPE.[NAME], STAGE.[NAME], ABOUT_GAME.PLACE
	from teams, ABOUT_GAME, GAME, STAGE, GAMETYPE
	where teams.team = ABOUT_GAME.TEAM_ID and
	GAME.GAME_ID = ABOUT_GAME.GAME_ID and
	GAME.GAMETYPE_ID = GAMETYPE.GAMETYPE_ID and
	GAME.STAGE_ID = STAGE.STAGE_ID	

	

--команды которые в сезоне 2019 играли хуже чем в сезоне 2018 по итогам всех рейтинговых игр
use lab3;
with 
new as(
	select TEAM.[NAME] as team, avg(cast(ABOUT_GAME.PLACE as float)) as score
		from TEAM, ABOUT_GAME, GAME
			where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
			ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
			ABOUT_GAME.PLACE <> 0 and
			year(GAME.DATE) =2019
		group by TEAM.[NAME]
),
old as(
	select TEAM.[NAME] as team, avg(cast(ABOUT_GAME.PLACE as float)) as score
		from TEAM, ABOUT_GAME, GAME
				where ABOUT_GAME.GAME_ID = GAME.GAME_ID and
				ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID and
				ABOUT_GAME.PLACE <> 0 and
				year(GAME.DATE) = 2018
			group by TEAM.[NAME]
)

select new.team
	from new
	inner join old
	on new.team = old.team
	where new.score < old.score



	 
use lab3;
--вывести ссылки на подборки записей команд хорошо показавших себ€ на встрече выпускников(3 место и высше)
with help
as (
	select TEAM.TEAM_ID as team
 		from ABOUT_GAME
		inner join GAME on GAME.GAME_ID = ABOUT_GAME.GAME_ID
		inner join TEAM on TEAM.TEAM_ID = ABOUT_GAME.TEAM_ID
		inner join GAMETYPE on GAMETYPE.GAMETYPE_ID = GAME.GAMETYPE_ID
		where GAMETYPE.[NAME] = '¬стреча выпускников' and 
		ABOUT_GAME.PLACE < 4 
		group by TEAM.TEAM_ID
)

select VIDEOS.LIINK_FOR_VIDEO, VIDEOS.[NAME], TEAM.[NAME]
from help	
	inner join VIDEO_SELECTION on VIDEO_SELECTION.TEAM_ID = help.team
	inner join VIDEOS on VIDEOS.VIDEO_ID = VIDEO_SELECTION.VIDEO_ID
	inner join TEAM on TEAM.TEAM_ID = help.team
 






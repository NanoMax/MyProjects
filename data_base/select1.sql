use lab3
--��������� ������� ������� ����� ����� ��������� � ������ �����
select top(1) with ties TEAM.[NAME], avg(cast(ABOUT_GAME.PLACE as float)) as res, count(ABOUT_GAME.PLACE) as quant
	from  ABOUT_GAME, GAME, TEAM, GAMETYPE, [OBJECT]
	where GAME.GAME_ID = ABOUT_GAME.GAME_ID and
	TEAM.TEAM_ID = ABOUT_GAME.TEAM_ID and
	GAMETYPE.GAMETYPE_ID = GAME.GAME_ID and
	[OBJECT].[OBJECT_ID] = TEAM.[OBJECT_ID] and
	GAMETYPE.[NAME] = '������ �����' and
	[OBJECT].[NAME] = '���'
	group by TEAM.[NAME]
	order by res, quant desc 


use lab3 
--������� ���� ��������� � 1/8 ������
select top(1) with ties TEAM.[NAME], avg(cast(ABOUT_GAME.PLACE as float)) as res, count(ABOUT_GAME.PLACE) as quantity
	from ABOUT_GAME 
	inner join GAME on ABOUT_GAME.GAME_ID = GAME.GAME_ID
	inner join GAMETYPE on GAMETYPE.GAMETYPE_ID = GAME.GAMETYPE_ID 
	inner join TEAM on TEAM.TEAM_ID = ABOUT_GAME.TEAM_ID
	inner join STAGE on STAGE.STAGE_ID = GAME.STAGE_ID
	where GAMETYPE.[NAME] = '��������� ������ ����' and
	(STAGE.[NAME] = '������ 1/8 ������' or STAGE.[NAME] = '������ 1/8 ������' 
	or STAGE.[NAME] = '������ 1/8 ������' or STAGE.[NAME] = '��������� 1/8 ������')
	group by TEAM.[NAME]
	order by res, quantity desc
	
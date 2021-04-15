use lab3
--удалить ссылки на покупку билетов на уже прошедшие игры

select *
	from GAME 
	where LINK_FOR_BUY is not NULL

update GAME
	set	LINK_FOR_BUY = NULL
	where GAME.DATE < '2020-09-30'

select *
	from GAME
	where LINK_FOR_BUY is not NULL
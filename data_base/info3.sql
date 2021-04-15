use lab3
--вуз, количество команд, год, в котором они выступали, средний результат вуза, количестов игр
go
if OBJECT_ID('dbo.info3') is not null drop view dbo.info3

go
create view info3 as
	select help.vuz, help.num, year(GAME.[DATE]) as 'year', avg(cast(ABOUT_GAME.PLACE as float)) as res, count(ABOUT_GAME.PLACE) as 'quant'	
	from(select TEAM.REPRESENTATIVE as vuz, count(TEAM.[NAME]) as num
	from TEAM
	left join [OBJECT] on [OBJECT].[OBJECT_ID] = TEAM.[OBJECT_ID]
	where [OBJECT].[NAME] = 'ВУЗ'
	group by TEAM.REPRESENTATIVE) as help
	left join TEAM on TEAM.REPRESENTATIVE = help.vuz
	left join ABOUT_GAME on ABOUT_GAME.TEAM_ID = TEAM.TEAM_ID
	left join GAME on GAME.GAME_ID = ABOUT_GAME.GAME_ID
	where ABOUT_GAME.PLACE <> 0
	group by help.vuz, help.num, year(GAME.[DATE]) 

go 
select *
	from info3	

--выбрать вуз, команды которого которые сыграли в 2019 году хуже чем в 2018
select help1.vuz
	from (select * from info3 where [year] = 2019) as help1
	left join (select * from info3 where [year] = 2018) as help2 on help1.vuz = help2.vuz
	where help1.res < help2.res

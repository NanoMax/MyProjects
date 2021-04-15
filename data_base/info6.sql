use lab3
--год, лучшая команда этого года
go
if object_id('dbo.info6') is not null drop view dbo.info6

go
create view info6 as
	select top(select 100) help1.[year], help1.team
	from info5 as help1
	left join info5 as help2
	on help1.[year] = help2.[year] and help1.res > help2.res
	where help2.res is null
	order by help1.[year]

go
select *
	from info6

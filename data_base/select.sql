use lab3 
--выбрать вуз которые сыграли в 2019 году хуже чем в 2018
select help1.vuz
	from (select * from info3 where [year] = 2019) as help1
	left join (select * from info3 where [year] = 2018) as help2 on help1.vuz = help2.vuz
	where help1.res < help2.res

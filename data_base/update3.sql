use lab3
--изменить номер обьекта вуз на 2, а предприятия - на 4(как будто их перепутали)
select * 
	from TEAM 
	inner join [OBJECT] on [OBJECT].[OBJECT_ID] = TEAM.[OBJECT_ID]

alter table TEAM
	drop constraint TEAM_OBJECT_FK
alter table TEAM
	add constraint TEAM_OBJECT_FK
		foreign key ([OBJECT_ID])
		references [OBJECT]([OBJECT_ID])
		on update cascade


declare @VUZ int
set @VUZ = (select [OBJECT].OBJECT_ID from [OBJECT] where [OBJECT].[NAME] = 'Предприятие')

declare @Pred int
set @PRED = (select [OBJECT].OBJECT_ID from [OBJECT] where [OBJECT].[NAME] = 'ВУЗ')

declare @DOP int

set @DOP = (select max([OBJECT].[OBJECT_ID]) + 1 from [OBJECT]) --чтобы поменять ID

select @DOP, @VUZ, @PRED

update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @DOP where [OBJECT].[NAME] = 'ВУЗ'
 
update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @VUZ where [OBJECT].[NAME] = 'Предприятие'

update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @Pred where [OBJECT].[NAME] = 'ВУЗ'


select *
	from TEAM 
	inner join [OBJECT] on [OBJECT].[OBJECT_ID] = TEAM.[OBJECT_ID]
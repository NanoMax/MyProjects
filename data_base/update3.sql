use lab3
--�������� ����� ������� ��� �� 2, � ����������� - �� 4(��� ����� �� ����������)
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
set @VUZ = (select [OBJECT].OBJECT_ID from [OBJECT] where [OBJECT].[NAME] = '�����������')

declare @Pred int
set @PRED = (select [OBJECT].OBJECT_ID from [OBJECT] where [OBJECT].[NAME] = '���')

declare @DOP int

set @DOP = (select max([OBJECT].[OBJECT_ID]) + 1 from [OBJECT]) --����� �������� ID

select @DOP, @VUZ, @PRED

update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @DOP where [OBJECT].[NAME] = '���'
 
update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @VUZ where [OBJECT].[NAME] = '�����������'

update [OBJECT] 
	set [OBJECT].[OBJECT_ID] = @Pred where [OBJECT].[NAME] = '���'


select *
	from TEAM 
	inner join [OBJECT] on [OBJECT].[OBJECT_ID] = TEAM.[OBJECT_ID]
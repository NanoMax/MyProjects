use lab3
--�������� ��� ���� �������

select *
	from TEAM
	where TEAM.[NAME] = '����'

insert into TEAM values('����', 1, '�����')

declare @Obj int
set @Obj = (select [OBJECT].[OBJECT_ID] from [OBJECT] where [OBJECT].[NAME] = '���')

update TEAM
set TEAM.OBJECT_ID = @Obj
where TEAM.[NAME] = '����'

select *
	from TEAM
	where TEAM.[NAME] = '����'


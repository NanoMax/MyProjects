set transaction isolation level serializable 
--������, serializable

begin transaction

insert into [LOCATION] values('������� �����', 1, '����������� �������, �.1')

commit transaction

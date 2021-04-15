set transaction isolation level serializable 
--Фантом, serializable

begin transaction

insert into [LOCATION] values('Большой театр', 1, 'Театральная площадь, д.1')

commit transaction

begin transaction 

--неповторяемое чтение, repeatable read

update [LOCATION]
set CITY_ID = 1
where LOCATION_ID = 1

commit transaction
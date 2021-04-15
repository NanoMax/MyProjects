USE LAB3

DELETE FROM ABOUT_GAME
DELETE FROM TIME_CODE
DELETE FROM VIDEO_SELECTION
DELETE FROM GAME
DELETE FROM VIDEOS
DELETE FROM PERSON
DELETE FROM TEAM
DELETE FROM [LOCATION]
DELETE FROM CITY
DELETE FROM GAMETYPE
DELETE FROM GENDER
DELETE FROM [OBJECT]
DELETE FROM STAGE

DBCC CHECKIDENT('GENDER', RESEED, 0)
DBCC CHECKIDENT('PERSON', RESEED, 0)
DBCC CHECKIDENT('TEAM', RESEED, 0)
DBCC CHECKIDENT('TIME_CODE', RESEED, 0)
DBCC CHECKIDENT('VIDEOS', RESEED, 0)
DBCC CHECKIDENT('GAME', RESEED, 0)
DBCC CHECKIDENT('GAMETYPE', RESEED, 0)
DBCC CHECKIDENT('STAGE', RESEED, 0)
DBCC CHECKIDENT('LOCATION', RESEED, 0)
DBCC CHECKIDENT('CITY', RESEED, 0)

INSERT INTO [OBJECT] VALUES(1, 'ГОРОД')
INSERT INTO [OBJECT] VALUES(2, 'ВУЗ')
INSERT INTO [OBJECT] VALUES(3, 'СТРАНА')
INSERT INTO [OBJECT] VALUES(4, 'ПРЕДПРИЯТИЕ')
 
INSERT INTO TEAM VALUES('ПриМа', 2, 'Курский государственный технический университет') --1
INSERT INTO TEAM VALUES('Триод и Диод', 2, 'СФ МЭИ') --2
INSERT INTO TEAM VALUES('Сборная Пятигорска', 1, 'Пятигорск') --3
INSERT INTO TEAM VALUES('Сборная Физтеха', 2, 'МФТИ') --4
INSERT INTO TEAM VALUES('БГУ', 2, 'БГУ') --5
INSERT INTO TEAM VALUES('Казахи', 3, 'Казахстан') --6
INSERT INTO TEAM VALUES('Нарты из Абхазии', 3, 'Абхазия') --7
INSERT INTO TEAM VALUES('Обычные люди', 2, 'Московский энергетический институт') --8
INSERT INTO TEAM VALUES('Полиграф Полиграфыч', 1, 'Омск') --9
INSERT INTO TEAM VALUES('Раисы', 1, 'Иркутск') --10
INSERT INTO TEAM VALUES('Вятка', 1, 'Киров') --11
INSERT INTO TEAM VALUES('Сборная Камызякского края', 1, 'Камызяк') --12
INSERT INTO TEAM VALUES('Союз', 1, 'Тюмень') --13
INSERT INTO TEAM VALUES('Азия MIX', 1, 'Бишкек') --14
INSERT INTO TEAM VALUES('Так-то', 1, 'Красноярск') --15
INSERT INTO TEAM VALUES('Сборная Забайкальского края', 1, 'Чита') --16
INSERT INTO TEAM VALUES('Сборная Большого московского цирка', 1, 'Москва') --17
INSERT INTO TEAM VALUES('Театр уральского зрителя', 1, 'Челябинск') --18
INSERT INTO TEAM VALUES('Сборная Великобритании', 1, 'Лондон') --19
INSERT INTO TEAM VALUES('Сборная бывших спортсменов', 1, 'Пермь') --20
INSERT INTO TEAM VALUES('Без консервантов ', 1, 'Санкт-Петербург') --21
INSERT INTO TEAM VALUES('РУДН', 2, 'Рудн') --22
INSERT INTO TEAM VALUES('Сборная вузов Чеченской республики', 1, 'Грозный') --23
INSERT INTO TEAM VALUES('Русская дорога (Армавир)', 1, 'Армавир') --24
INSERT INTO TEAM VALUES('Борцы', 1, 'Сургут')--25
INSERT INTO TEAM VALUES('Подъём', 1, 'Москва') --26
INSERT INTO TEAM VALUES('Будем дружить семьями', 1, 'Москва') --27
INSERT INTO TEAM VALUES('НАТЕ', 1, 'Брюховецкая') --28
INSERT INTO TEAM VALUES('Nаполеон Dинамит', 1, 'Тюмень') --29
INSERT INTO TEAM VALUES('Морская академия', 1, 'Мурманск') --30
INSERT INTO TEAM VALUES('Планета Сочи', 1, 'Сочи') --31
INSERT INTO TEAM VALUES('Плюшки имени Ярослава Мудрого', 1, 'Тверь') --32
INSERT INTO TEAM VALUES('Юра', 2, 'Синергия') --33
INSERT INTO TEAM VALUES('Сборная татнефти', 1, 'Альметьевск') --34
INSERT INTO TEAM VALUES('Доктор Хаусс', 1,'Могилев') --35
INSERT INTO TEAM VALUES('Буряты', 1,'Иркутск') --36
INSERT INTO TEAM VALUES('Дети Тьюринга', 2,'БГУ') --37
INSERT INTO TEAM VALUES('G-Drive', 4, 'Газпром нефти') --38
INSERT INTO TEAM VALUES('Рязанский проспект', 2, 'ГУУ') --39
INSERT INTO TEAM VALUES('Громокошки', 1, 'Липецк') --40
INSERT INTO TEAM VALUES('Полусотров', 2, 'КФУ') --41
INSERT INTO TEAM VALUES('Волжане', 2, 'СамГТУ') --42
INSERT INTO TEAM VALUES('Михаил Дудиков', 2, 'СКФУ') --43
INSERT INTO TEAM VALUES('Армянская сборная', 3, 'Армения') --44
INSERT INTO TEAM VALUES('Станция Динамо', 2, 'РЭУ Плеханова') --45
INSERT INTO TEAM VALUES('Такая история', 2, 'ОГУ им.Тургенева')--46

--про новые команды пока что мало чего известно но данный будут пополняться

INSERT INTO GENDER VALUES('МУЖ')
INSERT INTO GENDER VALUES('ЖЕН')

INSERT INTO PERSON VALUES(1, 'Александр', 'Якушев', 1, '1976-05-03') --1
INSERT INTO PERSON VALUES(1, 'Антон', 'Васильев', 1, '1981-09-09') --2
INSERT INTO PERSON VALUES(1, 'Владимир', 'Тарарыкин', 1, '1977-03-12') --3
INSERT INTO PERSON VALUES(1, 'Александр', 'Агарков', 1, '1967-07-24') --4
INSERT INTO PERSON VALUES(1, 'Александр', 'Кравцов', 1, '1977-09-14') --5
INSERT INTO PERSON VALUES(1, 'Денис', 'Синяев', 1, '1971-09-30') --6
INSERT INTO PERSON VALUES(1, 'Алексей', 'Жиленков', 1, '1974-10-08') --7
INSERT INTO PERSON VALUES(1, 'Андрей', 'Болохонцев', 1, '1975-02-19') --8
INSERT INTO PERSON VALUES(1, 'Александр', 'Волобуев', 1, '1975-04-10') --9
INSERT INTO PERSON VALUES(1, 'Сергей', 'Рейх', 1, '1979-01-02') --10
INSERT INTO PERSON VALUES(1, 'Александр', 'Добин', 1, '1972-10-10') --11
INSERT INTO PERSON VALUES(2, 'Максим', 'Киселёв', 1, '1974-08-01') --12
INSERT INTO PERSON VALUES(2, 'Андрей', 'Скороход', 1, '1976-03-26') --13
INSERT INTO PERSON VALUES(2, 'Елизавета', 'Кожанова', 2, '1977-12-15') --14
INSERT INTO PERSON VALUES(2, 'Михаил', 'Масленников', 1, '1978-12-18') --15
INSERT INTO PERSON VALUES(2, 'Сергей', 'Алексеев', 1, '1983-08-09') --16
INSERT INTO PERSON VALUES(2, 'Иван', 'Палагин', 1, '1986-11-03') --17
INSERT INTO PERSON VALUES(2, 'Александр', 'Марченков', 1, '1975-09-23') --18 
INSERT INTO PERSON VALUES(2, 'Максим', 'Шишканов', 1, '1980-03-18') --19
INSERT INTO PERSON VALUES(2, 'Максим', 'Стрижов', 1, '1984-06-25')
INSERT INTO PERSON VALUES(2, 'Дмитрий', 'Амбражевич', 1, '1986-01-21')
INSERT INTO PERSON VALUES(3, 'Семён', 'Слепаков', 1, '1976-01-05')
INSERT INTO PERSON VALUES(3, 'Елена', 'Борщева', 2, '1978-12-06')
INSERT INTO PERSON VALUES(3, 'Алексей', 'Ляпоров', 1, '1980-04-01')
INSERT INTO PERSON VALUES(3, 'Давид', 'Мурадян', 1, '1980-11-17')
INSERT INTO PERSON VALUES(3, 'Павел', 'Козмопулос', 1, '1986-05-27')
INSERT INTO PERSON VALUES(3, 'Евгений', 'Костиков', 1, '1976-10-26')
INSERT INTO PERSON VALUES(3, 'Илья', 'Романко', 1, '1976-12-09')
INSERT INTO PERSON VALUES(3, 'Михаил', 'Беляев', 1, '1978-06-27')
INSERT INTO PERSON VALUES(3, 'Евгений', 'Голотенко', 1, '1983-03-11')
INSERT INTO PERSON VALUES(3, 'Владимир', 'Якубов', 1, '1984-05-22')
INSERT INTO PERSON VALUES(4, 'Георгий', 'Гигашвили', 1, '1993-05-04')
INSERT INTO PERSON VALUES(4, 'Александр', 'Кашубин', 1, '1993-07-23')
INSERT INTO PERSON VALUES(4, 'Василий', 'Петяев', 1, '1996-03-15')
INSERT INTO PERSON VALUES(4, 'Александр', 'Виниченко', 1, '1996-07-18')
INSERT INTO PERSON VALUES(4, 'Максим', 'Королев', 1, '1996-10-25')
INSERT INTO PERSON VALUES(4, 'Максим', 'Гречнев', 1, '1994-02-14')
INSERT INTO PERSON VALUES(4, 'Виталий', 'Лихачев', 1, '1989-09-22')
INSERT INTO PERSON VALUES(4, 'Дмитрий', 'Побединский', 1, '1996-11-15')
INSERT INTO PERSON VALUES(4, 'Александр', 'Коротков', 1, '1997-07-28')
INSERT INTO PERSON VALUES(4, 'Павел', 'Марков', 1, '1991-07-27')
INSERT INTO PERSON VALUES(4, 'Дмитрий', 'Гуров', 1, '1991-04-09')
INSERT INTO PERSON VALUES(4, 'Кирилл', 'Легай', 1, '1993-05-24')
INSERT INTO PERSON VALUES(4, 'Дмитрий', 'Потемкин', 1, '1996-01-05')
INSERT INTO PERSON VALUES(4, 'Евгения', 'Степанцева', 2, '1993-05-26')
INSERT INTO PERSON VALUES(5, 'Виталий', 'Шляппо', 1, '1986-09-05')
INSERT INTO PERSON VALUES(5, 'Вадим', 'Галыгин', 1, '1985-09-16')
INSERT INTO PERSON VALUES(5, 'Андрей', 'Дерьков', 1, '1987-10-15')
INSERT INTO PERSON VALUES(5, 'Марина', 'Грицук', 2, '1992-03-03')
INSERT INTO PERSON VALUES(5, 'Анна', 'Паншина', 2, '1992-06-02')
INSERT INTO PERSON VALUES(5, 'Александр', 'Трофимов', 1, '1986-12-16')
INSERT INTO PERSON VALUES(5, 'Алексей', 'Ануфриев', 1, '1990-03-06')
INSERT INTO PERSON VALUES(5, 'Александр', 'Тыкун', 1, '1993-03-06')
INSERT INTO PERSON VALUES(5, 'Александр', 'Демешко', 1, '1987-05-15')
INSERT INTO PERSON VALUES(5, 'Наталья', 'Иванова', 2, '1988-08-08')
INSERT INTO PERSON VALUES(5, 'Леонид', 'Купридо', 1, '1989-07-17')
INSERT INTO PERSON VALUES(5, 'Вячеслав', 'Муругов', 1, '1990-10-04')
INSERT INTO PERSON VALUES(5, 'Александр', 'Гаврильчик', 1, '1991-10-01')
INSERT INTO PERSON VALUES(5, 'Сергей', 'Олехник', 1, '1983-03-18')
INSERT INTO PERSON VALUES(5, 'Валентин', 'Карпушевич', 1, '1993-03-18')
INSERT INTO PERSON VALUES(5, 'Сергей', 'Турбан', 1, '1982-12-03')
INSERT INTO PERSON VALUES(6, 'Нурлан', 'Коянбаев', 1, '1995-04-27')
INSERT INTO PERSON VALUES(6, 'Кумар', 'Лукманов', 1, '1993-06-08')
INSERT INTO PERSON VALUES(6, 'Ярослав', 'Мелехин', 1, '1992-01-16')
INSERT INTO PERSON VALUES(6, 'Нуржан', 'Бейсенов', 1, '1994-07-12')
INSERT INTO PERSON VALUES(6, 'Турсынбек', 'Кабатов', 1, '1991-02-13')
INSERT INTO PERSON VALUES(6, 'Нурдаулет', 'Шертим', 1, '1991-10-18')
INSERT INTO PERSON VALUES(6, 'Санат', 'Шапашов', 1, '1991-12-23')
INSERT INTO PERSON VALUES(6, 'Малик', 'Хасенов', 1, '1991-05-16')
INSERT INTO PERSON VALUES(6, 'Даут', 'Шайхисламов', 1, '1993-10-08')
INSERT INTO PERSON VALUES(6, 'Гульнара', 'Сильбаева', 2, '1993-06-28')
INSERT INTO PERSON VALUES(6, 'Малик', 'Хасенов', 1, '1991-10-30')
INSERT INTO PERSON VALUES(7, 'Тимур', 'Тания', 1, '1982-09-07')
INSERT INTO PERSON VALUES(7, 'Тимур', 'Аршба', 1, '1986-02-04')
INSERT INTO PERSON VALUES(7, 'тимур', 'Квексескири', 1, '1982-09-30')
INSERT INTO PERSON VALUES(7, 'Алхас', 'Каджая', 1, '1984-06-18')
INSERT INTO PERSON VALUES(7, 'Эрнест', 'Микаа', 1, '1986-04-09')
INSERT INTO PERSON VALUES(7, 'Дамей', 'Чамба', 1, '1984-10-01')
INSERT INTO PERSON VALUES(7, 'Роланд', 'Бганба', 1, '1980-05-16')
INSERT INTO PERSON VALUES(7, 'Саид', 'Хашба', 1, '1980-04-01')
INSERT INTO PERSON VALUES(7, 'Даур', 'Чамагуа', 1, '1986-09-19')
INSERT INTO PERSON VALUES(7, 'Руслан', 'Шакая', 1, '1980-10-01')
INSERT INTO PERSON VALUES(7, 'Вианор', 'Бебия', 1, '1988-12-13')
INSERT INTO PERSON VALUES(8, 'Дмитрий', 'Шпеньков', 1, '1980-10-17')
INSERT INTO PERSON VALUES(8, 'Михаил', 'Белянин', 1, '1987-10-15')
INSERT INTO PERSON VALUES(8, 'Евгений', 'Штылев', 1, '1981-08-19')
INSERT INTO PERSON VALUES(8, 'Прохор', 'Забабашкин', 1, '1989-02-09')
INSERT INTO PERSON VALUES(8, 'Станислав', 'Халин', 1, '1981-09-22')
INSERT INTO PERSON VALUES(8, 'Евгений', 'Трикоз', 1, '1983-07-29')
INSERT INTO PERSON VALUES(8, 'Александр', 'Вялых', 1, '1981-03-27')
INSERT INTO PERSON VALUES(8, 'Елена', 'Кравченко', 2, '1981-12-15')
INSERT INTO PERSON VALUES(8, 'Олег', 'Серебряков', 1, '1986-01-27')
INSERT INTO PERSON VALUES(9, 'Илья', 'Шевцов', 1, '1987-03-06')
INSERT INTO PERSON VALUES(9, 'Илья', 'Мотовилов', 1, '1990-07-26')
INSERT INTO PERSON VALUES(9, 'Владимир', 'Пушкарев', 1, '1991-06-18')
INSERT INTO PERSON VALUES(9, 'Константин', 'Переход', 1, '1989-09-27')
INSERT INTO PERSON VALUES(9, 'Александр', 'Туркин', 1, '1986-08-05')
INSERT INTO PERSON VALUES(9, 'Кирилл', 'Рубаненко', 1, '1987-10-27')
INSERT INTO PERSON VALUES(9, 'Алексей', 'Николаев', 1, '1990-10-16')
INSERT INTO PERSON VALUES(9, 'Александр', 'Николаев', 1, '1991-09-26')
INSERT INTO PERSON VALUES(10, 'Вера', 'Гасаранова', 2, '1992-10-19')
INSERT INTO PERSON VALUES(10, 'Елена', 'Хохоненко', 2, '1992-09-16')
INSERT INTO PERSON VALUES(10, 'Анна', 'Беклемишева', 2, '1986-09-04')
INSERT INTO PERSON VALUES(10, 'Анастасия', 'Перцева', 2, '1994-10-12')
INSERT INTO PERSON VALUES(10, 'Ирина', 'Халтанова', 2, '1986-08-13')
INSERT INTO PERSON VALUES(10, 'Любовь', 'Гребенщикова', 2, '1992-04-07')
INSERT INTO PERSON VALUES(10, 'Анастасия', 'Жукова', 2, '1986-06-12')
INSERT INTO PERSON VALUES(10, 'Любовь', 'Астраханцева', 2, '1987-01-14')
INSERT INTO PERSON VALUES(10, 'Валерия', 'Гресько', 2, '1994-07-20')
INSERT INTO PERSON VALUES(10, 'Валентин', 'Тимощук', 2, '1986-12-24')
INSERT INTO PERSON VALUES(10, 'Егор', 'Быргазов', 1, '1991-02-01')
INSERT INTO PERSON VALUES(11, 'Дмитрий', 'Бушуев', 1, '1990-03-08')
INSERT INTO PERSON VALUES(11, 'Артем', 'Гагара', 1, '1992-01-06')
INSERT INTO PERSON VALUES(11, 'Андрей', 'Кропотов', 1, '1991-07-30')
INSERT INTO PERSON VALUES(11, 'Денис', 'Остапчук', 1, '1987-10-28')
INSERT INTO PERSON VALUES(11, 'Никита', 'Трунов', 1, '1990-07-05')
INSERT INTO PERSON VALUES(11, 'Павел', 'Медведев', 1, '1988-01-12')
INSERT INTO PERSON VALUES(11, 'Руслан', 'Шишкин', 1, '1992-11-23')
INSERT INTO PERSON VALUES(11, 'Анна', 'Котова', 2, '1994-11-22')
INSERT INTO PERSON VALUES(11, 'Дмитрий', 'Шипатов', 1, '1988-09-09')
INSERT INTO PERSON VALUES(11, 'Илья', 'Захарченко', 1, '1993-02-05')
INSERT INTO PERSON VALUES(11, 'Алексей', 'Кощеев', 1, '1992-09-12')
INSERT INTO PERSON VALUES(12, 'Азамат', 'Мусагалиев', 1, '1984-10-25')
INSERT INTO PERSON VALUES(12, 'Денис', 'Дорохов', 1, '1981-04-03')
INSERT INTO PERSON VALUES(12, 'Вячеслав', 'Макаров', 1, '1983-11-16')
INSERT INTO PERSON VALUES(12, 'Ренат', 'Мухамбаев', 1, '1983-03-30')
INSERT INTO PERSON VALUES(12, 'Роман', 'Кулясов', 1, '1981-08-26')
INSERT INTO PERSON VALUES(12, 'Александр', 'Панекин', 1, '1988-11-15')
INSERT INTO PERSON VALUES(12, 'Данил', 'Альсеитов', 1, '1987-04-15')
INSERT INTO PERSON VALUES(12, 'Ирина', 'Илюхина', 2, '1988-04-19')
INSERT INTO PERSON VALUES(13, 'Ирина', 'Неуймина', 2, '1988-07-25')
INSERT INTO PERSON VALUES(13, 'Айдар', 'Гараев', 1, '1992-08-30')
INSERT INTO PERSON VALUES(13, 'Александр', 'Алымов', 1, '1985-12-24')
INSERT INTO PERSON VALUES(13, 'Елена', 'Гущина', 2, '1982-09-03')
INSERT INTO PERSON VALUES(13, 'Кирилл', 'Коковкин', 1, '1986-11-25')
INSERT INTO PERSON VALUES(13, 'Артем', 'Муратов', 1, '1984-08-29')
INSERT INTO PERSON VALUES(13, 'Виктор', 'Щетков', 1, '1988-08-30')
INSERT INTO PERSON VALUES(13, 'Максим', 'Морозов', 1, '1995-12-31')
INSERT INTO PERSON VALUES(14, 'Эльдар', 'Кененсаров', 1, '1988-08-15')
INSERT INTO PERSON VALUES(14, 'Данияр', 'Макашев', 1, '1987-07-27')
INSERT INTO PERSON VALUES(14, 'Руслан', 'Максимов', 1, '1987-06-25')
INSERT INTO PERSON VALUES(14, 'Бактияр', 'Касымалиев', 1, '1988-07-29')
INSERT INTO PERSON VALUES(14, 'Сергей', 'Душимов', 1, '1987-01-09')
INSERT INTO PERSON VALUES(14, 'Ситора', 'Фарамонова', 2, '1988-12-13')
INSERT INTO PERSON VALUES(14, 'Азамат', 'Токтосунов', 1, '1988-01-07')
INSERT INTO PERSON VALUES(14, 'Аким', 'Карасев', 1, '1986-02-20')
INSERT INTO PERSON VALUES(14, 'Ростислав', 'Ященко', 1, '1988-07-01')
INSERT INTO PERSON VALUES(14, 'Юлия', 'Каблукова', 2, '1987-03-23')
INSERT INTO PERSON VALUES(14, 'Наталья', 'Дудка', 2, '1988-11-29')
INSERT INTO PERSON VALUES(14, 'Камила', 'Абдил', 2, '1986-10-08')
INSERT INTO PERSON VALUES(15, 'Алексей', 'Юрьянов', 1, '1991-09-18')
INSERT INTO PERSON VALUES(15, 'Алина', 'Луну', 2, '1996-03-14')
INSERT INTO PERSON VALUES(15, 'Андрей', 'Поздняк', 1, '1998-01-13')
INSERT INTO PERSON VALUES(15, 'Александр', 'Бударин', 1, '1991-01-14')
INSERT INTO PERSON VALUES(15, 'Иван', 'Брагин', 1, '1993-12-15')
INSERT INTO PERSON VALUES(15, 'Михаил', 'Смоляров', 1, '1992-09-23')
INSERT INTO PERSON VALUES(15, 'Валерий', 'Равдин', 1, '1996-09-19')
INSERT INTO PERSON VALUES(15, 'Роман', 'Богданов', 1, '1990-07-09')
INSERT INTO PERSON VALUES(16, 'Дмитрий', 'Блохин', 1, '1992-03-31')
INSERT INTO PERSON VALUES(16, 'Александр', 'Химич', 1, '1996-01-29')
INSERT INTO PERSON VALUES(16, 'Сергей', 'Лучкин', 1, '1997-09-03')
INSERT INTO PERSON VALUES(16, 'Егор', 'Дубцов', 1, '1993-10-08')
INSERT INTO PERSON VALUES(16, 'Николай', 'Ковалев', 1, '1990-10-25')
INSERT INTO PERSON VALUES(16, 'Михаил', 'Тихи1', 1, '1991-07-08')
INSERT INTO PERSON VALUES(16, 'Максим', 'Постаногов', 1, '1994-10-25')
INSERT INTO PERSON VALUES(16, 'Иван', 'Сапожников', 1, '1993-04-15')
INSERT INTO PERSON VALUES(17, 'Борис', 'Никишин', 1, '1984-04-08')
INSERT INTO PERSON VALUES(17, 'Олег', 'Есенин', 1, '1985-08-03')
INSERT INTO PERSON VALUES(17, 'Артем', 'Бобцов', 1, '1996-09-03')
INSERT INTO PERSON VALUES(17, 'Анвар', 'Саттаров', 1, '1985-01-06')
INSERT INTO PERSON VALUES(17, 'Гарик', 'Петросян', 1, '1988-07-02')
INSERT INTO PERSON VALUES(17, 'Николай', 'Коновалов', 1, '1991-04-24')
INSERT INTO PERSON VALUES(17, 'Анна', 'Куркина', 2, '1991-08-10')
INSERT INTO PERSON VALUES(17, 'Тамара', 'Титченкова', 1, '1988-05-11')
INSERT INTO PERSON VALUES(18, 'Тима', 'Осадчий', 1, '1985-02-12')
INSERT INTO PERSON VALUES(18, 'Данил', 'Саломатов', 1, '1996-03-17')
INSERT INTO PERSON VALUES(18, 'Елизавета', 'Смолина',2, '1986-07-05')
INSERT INTO PERSON VALUES(19, 'Михаил', 'Гревцов', 1, '1984-04-05')
INSERT INTO PERSON VALUES(19, 'Алексей', 'Андреев', 1, '1993-01-28')
INSERT INTO PERSON VALUES(19, 'Анатолий', 'Михеев', 1, '1986-09-05')
INSERT INTO PERSON VALUES(19, 'Екатерина', 'Зарина', 2, '1985-09-16')
INSERT INTO PERSON VALUES(20, 'Павел', 'Соснин', 1, '1987-10-15')
INSERT INTO PERSON VALUES(20, 'Гена', 'Редькин', 1, '1992-03-04')
INSERT INTO PERSON VALUES(21, 'Арсений', 'Агапов', 1, '1992-06-02')
INSERT INTO PERSON VALUES(21, 'Алексей', 'Селюжицкий', 1, '1986-12-16')
INSERT INTO PERSON VALUES(21, 'Антон', 'Федоров', 1, '1990-03-06')
INSERT INTO PERSON VALUES(22, 'Трофим', 'Пустыльник', 1, '1993-10-07')
INSERT INTO PERSON VALUES(22, 'Игорь', 'Ким', 1, '1991-08-12')
INSERT INTO PERSON VALUES(22, 'Шевги', 'Ахадов', 1, '1990-06-05')
INSERT INTO PERSON VALUES(22, 'Алиса', 'Левкович', 2, '1989-01-19')
INSERT INTO PERSON VALUES(22, 'Юлия', 'Лосева', 2, '1988-04-26')
INSERT INTO PERSON VALUES(22, 'Далер', 'Рахимов', 1, '1986-09-11')
INSERT INTO PERSON VALUES(22, 'Амаду', 'Ба', 1, '1995-07-12')
INSERT INTO PERSON VALUES(23, 'Иса', 'Дадаев', 1, '1984-06-25')
INSERT INTO PERSON VALUES(23, 'Али', 'Мунаев', 1, '1990-08-29')
INSERT INTO PERSON VALUES(23, 'Иса', 'Абдурзаков', 1, '1996-08-30')
INSERT INTO PERSON VALUES(23, 'Дени', 'Хутаев', 1, '1985-02-07')
INSERT INTO PERSON VALUES(24, 'Алексей', 'Кривеня', 1, '1986-02-10')
INSERT INTO PERSON VALUES(24, 'Денис', 'Шуренко', 1, '1996-06-12')
INSERT INTO PERSON VALUES(24, 'Максим', 'Конюхов', 1, '1987-06-18')
INSERT INTO PERSON VALUES(24, 'Грант', 'Манасян', 1, '1992-07-29')
INSERT INTO PERSON VALUES(27, 'Святослав', 'Скворцов', 1, '1995-04-11')
INSERT INTO PERSON VALUES(27, 'Юлия', 'Никитина', 2, '1991-03-06')
INSERT INTO PERSON VALUES(27, 'Андрей', 'Бородин', 1, '1986-05-21')
INSERT INTO PERSON VALUES(27, 'Анна', 'Медведева', 2, '1994-06-17')
INSERT INTO PERSON VALUES(27, 'Анастасия', 'Смирнова', 2, '1988-10-04')
INSERT INTO PERSON VALUES(27, 'Руслан', 'Новиков', 1, '1992-10-27')
INSERT INTO PERSON VALUES(28, 'Сергей', 'Малофеев', 1, '1991-02-04')
INSERT INTO PERSON VALUES(28, 'Алексей', 'Туркулец', 1, '1993-02-22')
INSERT INTO PERSON VALUES(28, 'Дмитрий', 'Ксенофонтов', 1, '1994-05-17')
INSERT INTO PERSON VALUES(28, 'Владислав', '???', 1, '1987-01-12')
INSERT INTO PERSON VALUES(28, 'Михаил', 'Зубарев', 1, '1992-07-09')
INSERT INTO PERSON VALUES(28, 'Алексей', 'Денисюк', 1, '1986-09-03')
INSERT INTO PERSON VALUES(28, 'Сергей', 'Баленко', 1, '1987-08-31')
INSERT INTO PERSON VALUES(29, 'Владислав', 'Шмидт', 1, '1989-02-03')
INSERT INTO PERSON VALUES(29, 'Артем', 'Смирнов', 1, '1987-05-01')
INSERT INTO PERSON VALUES(29, 'Дмитрий', 'Орлов', 1, '1985-01-29')
INSERT INTO PERSON VALUES(29, 'Александр', 'Самаков', 1, '1992-10-28')
INSERT INTO PERSON VALUES(29, 'Роман', '???', 1, '1993-09-15')
INSERT INTO PERSON VALUES(30, 'Герман', 'Иванов', 1, '1985-11-26')

INSERT INTO CITY VALUES('Москва')
INSERT INTO CITY VALUES('Сочи')
INSERT INTO CITY VALUES('Санкт-Петрбург')
INSERT INTO CITY VALUES('Химки')
INSERT INTO CITY VALUES('Светлогорск')
INSERT INTO CITY VALUES('Красногорск')

INSERT INTO [LOCATION] VALUES('Концертный зал Химки', 4,'Ленинский просп., д.2А') --1
INSERT INTO [LOCATION] VALUES('Концертный зал Санкт-Петербурга', 3,'ул. Комиссара Смирнова, д.15') --2
INSERT INTO [LOCATION] VALUES('Концертный зал Москвы', 1,'ул. Шереметьевская, д. 2') --3
INSERT INTO [LOCATION] VALUES('Центральный Академический Театр Российской Армии', 1, 'Суворовская площадь, д.2') --4
INSERT INTO [LOCATION] VALUES('Гранд-отель Жемчужина', 2, 'ул. Черноморская, д.3') --5
INSERT INTO [LOCATION] VALUES('Янтарь-Холл', 5, 'ул. Ленина, д.11') --6
INSERT INTO [LOCATION] VALUES('Крокус Сити Холл', 6, 'ул. Международная, д.20') --7

INSERT INTO STAGE VALUES('Первая 1/8 финала') --1
INSERT INTO STAGE VALUES('Вторая 1/8 финала') --2
INSERT INTO STAGE VALUES('Третья 1/8 финала') --3
INSERT INTO STAGE VALUES('Четвертая 1/8 финала') --4
INSERT INTO STAGE VALUES('Первая четверть-финала') --5
INSERT INTO STAGE VALUES('Вторая четверть-финала') --6
INSERT INTO STAGE VALUES('Третья четверть-финала') --7
INSERT INTO STAGE VALUES('Первый полуфинал') --8
INSERT INTO STAGE VALUES('Второй полуфинал') --9 
INSERT INTO STAGE VALUES('Финал') --10
INSERT INTO STAGE VALUES('Без этапа') --11


INSERT INTO GAMETYPE VALUES('Летний кубок') --1
INSERT INTO GAMETYPE VALUES('Встреча выпускников') --2
INSERT INTO GAMETYPE VALUES('Чемпионат Высшей Лиги') --3
INSERT INTO GAMETYPE VALUES('Голосящий КиВиН') --4
INSERT INTO GAMETYPE VALUES('Особая игра') --5

INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=5VuU1lovSng', 'КВН Сборник лучших номеров от Примы!') --1
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vuZU4H7aFCY', 'КВН Прима - Чемпионский сезон 2009') --2
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=PJCvWSQGxCc', 'КВН - КВН Триод и Диод - Лучшие номера команды') --3
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=CXwrj4aw5pE', 'КВН Сборная Пятигорска - Золотые номера КВН') --4
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=bSs79vZ0s24', 'Триод и Диод. Андрей Скороход - лучшие выступления') --5
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=t4IdDIYYp-M', 'Нарты из Абхазии Лучшее') --6
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=3XXJYF8k6yc', 'Обычные люди лучшее') --7
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vJE1QjwdJBM', 'КВН ПриМа - Басни') --8
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=z7spBL00J7g', 'КВН Ольга Картункова: Лучшее!') --9
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=tRH8QOqbp7E', 'КВН - КВН Казахи - Лучшие СТЭМы') --10
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=895wUMT7C2c', 'КВН ЧП - Золотые номера КВН') --БГУ --11
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=BH7Ma2d-8F4', 'Команда КВН Раисы Нарезка №1') --12
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=JC70iZGR7iE', 'КВН Союз Тюмень лучшее') --13
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=5ssvYnyyZ0M', 'КВН Казахи Турсынбек почти все его шутки') --14
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=kTyY6cZiJgM', 'КВН Вятка - 2012 Высшая лига (ВСЕ ИГРЫ СЕЗОНА)') --15
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=Qzgo5_x6AHY', 'КВН СОЮЗ Все Голосящие КиВиНы') --16
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=wH0PRxc3xlc', 'КВН Раисы - Фристайло') --17
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=2FpG6coL-KM', 'Лучшие шутки Азия MIX в Высшей лиге!') --18
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=SIkT9kqG_10', 'КВН Камызяки Все Голосящие КиВиНы') --19
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=E8fHFqhNWDk', 'КВН Сборник лучших номеров от Вятки!') --20
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=fwSKQaVxig8', 'Так-то сборник') --21
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=d6V8GVpIWCQ', 'Самый Интересный Биатлон!!!') --22
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=nvcK4Ejdk8Q', 'Так-то выступление') --23
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=Z92ACjxX7Sg', 'Камызяки Лучшее выступление КВН')-- 24

INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vb3wJn35NqM', 'КВН 2019 Высшая Лига Первая 1/8') --25
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=qu2liv42RE4', 'КВН 2019 Высшая Лига Вторая 1/8') --26
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=8mzpOmLrZBU', 'КВН 2019 Высшая Лига Третья 1/8') --27
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=xlMTmSCnwO8', 'КВН 2019 Высшая Лига Четвертая 1/8') --28
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=b6U7ZOO27wA', 'КВН 2019 Высшая лига Первая 1/2') --29
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=8Il_ojvpe-0', 'КВН 2019 Высшая Лига Вторая 1/4') --30
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=_UwDY1lshmE', 'КВН 2019 Высшая Лига Третья 1/4') --31
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=b6U7ZOO27wA', 'КВН 2019 Высшая лига Первая 1/2 ') --32
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=tQVbOIuPN2s', 'КВН 2019 Высшая лига Вторая 1/2') --33
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=lVXc6PZpEpM', 'КВН 2019 Высшая лига Финал') --34
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=z3vnDkmOasU', 'КВН 2018 Высшая лига Первая 1/8 ') --35
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=EfgUMoJrWIE', 'КВН 2018 Высшая лига Вторая 1/8') --36
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=uzf85kvE0zc', 'КВН 2018 Высшая лига Третья 1/8') --37
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=VwZVC3Rolto', 'КВН 2018 Высшая лига Четвертая 1/8') --38
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=cXVfwHnAB-k', 'КВН 2018 Высшая лига Первая 1/4') --39
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=oq9FUN0622E', 'КВН 2018 Высшая лига Вторая 1/4') --40
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=NbTpaWtR94k', 'КВН 2018 Высшая лига Третья 1/4') --41
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=TZ6kKRX8fHU', 'КВН 2018 Высшая Лига Первая 1/2') --42
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=uvOnkpXy9JE', 'КВН 2018 Высшая Лига Вторая 1/2') --43
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=X5_4JwMS-OI', 'КВН 2018 Высшая Лига Финал') --44
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=rGXk6nKUk-E', 'КВН 2018 Голосящий КиВиН') --45
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=TMog9CRm-ew', 'КВН 2018 Летний кубок') --46
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=P-nCfhgL_rA', 'КВН 2019 Встреча выпускников') --47
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=y5OsjKjxJik', 'КВН 2019 Кубок мэра Москвы') --48
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=pUPZ6PplDJo', 'КВН 2019 Летний кубок') --49
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XmX_Ndn0G2s', 'КВН 2019 Голосящий КиВиН') --50
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=HgIVqBuAfaU', 'КВН 2020 Высшая лига Первая 1/8') --51
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=p6Yv7GDAASE', 'КВН 2020 Высшая лига Вторая 1/8') --52
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=wPNl5eKcV0M', 'КВН 2020 Высшая лига Третья 1/8') --53
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcQSpKQNLpc', 'КВН 2020 Высшая лига Четвертая 1/8') --54
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcdfpKQNLpc', 'КВН 2018 Встреча выпускников') --55
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcdfpKQNLpc', 'КВН 2017 Встреча выпускников') --56

INSERT INTO VIDEO_SELECTION VALUES(1, 1)
INSERT INTO VIDEO_SELECTION VALUES(1, 2)
INSERT INTO VIDEO_SELECTION VALUES(2, 3)
INSERT INTO VIDEO_SELECTION VALUES(3, 4)
INSERT INTO VIDEO_SELECTION VALUES(2, 5)
INSERT INTO VIDEO_SELECTION VALUES(7, 6)
INSERT INTO VIDEO_SELECTION VALUES(8, 7)
INSERT INTO VIDEO_SELECTION VALUES(1, 8)
INSERT INTO VIDEO_SELECTION VALUES(3, 9)
INSERT INTO VIDEO_SELECTION VALUES(6, 10)
INSERT INTO VIDEO_SELECTION VALUES(11, 11)
INSERT INTO VIDEO_SELECTION VALUES(10, 12)
INSERT INTO VIDEO_SELECTION VALUES(13, 13)
INSERT INTO VIDEO_SELECTION VALUES(6, 14)
INSERT INTO VIDEO_SELECTION VALUES(11, 15)
INSERT INTO VIDEO_SELECTION VALUES(13, 16)
INSERT INTO VIDEO_SELECTION VALUES(10, 17)
INSERT INTO VIDEO_SELECTION VALUES(14, 18)
INSERT INTO VIDEO_SELECTION VALUES(12, 19)
INSERT INTO VIDEO_SELECTION VALUES(11, 20)
INSERT INTO VIDEO_SELECTION VALUES(15, 21)
INSERT INTO VIDEO_SELECTION VALUES(9, 22)
INSERT INTO VIDEO_SELECTION VALUES(15, 23)
INSERT INTO VIDEO_SELECTION VALUES(12, 24)

INSERT INTO GAME VALUES(1, 1, 3, '2019-02-15', 'http://domkvn.ru/kupit-bilet-kvn/831.html', 25) --1
INSERT INTO GAME VALUES(1, 2, 3, '2019-02-28', 'http://domkvn.ru/kupit-bilet-kvn/832.html', 26) --2
INSERT INTO GAME VALUES(1, 3, 3, '2019-02-03 ','http://domkvn.ru/kupit-bilet-kvn/833.html', 27) --3
INSERT INTO GAME VALUES(1, 4, 3, '2019-03-14', 'http://domkvn.ru/kupit-bilet-kvn/834.html', 28) --4
INSERT INTO GAME VALUES(3, 5, 3, '2019-04-18', 'http://domkvn.ru/kupit-bilet-kvn/845.html', 29) --5
INSERT INTO GAME VALUES(3, 6, 3, '2019-05-11', 'http://domkvn.ru/kupit-bilet-kvn/846.html', 30) --6
INSERT INTO GAME VALUES(3, 7, 3, '2019-05-23', 'http://domkvn.ru/kupit-bilet-kvn/847.html', 31) --7
INSERT INTO GAME VALUES(4, 8, 3, '2019-09-28', 'http://domkvn.ru/kupit-bilet-kvn/849.html', 32) --8
INSERT INTO GAME VALUES(4, 9, 3, '2019-10-08', 'http://domkvn.ru/kupit-bilet-kvn/850.html', 33) --9
INSERT INTO GAME VALUES(7, 10, 3, '2019-12-14','http://domkvn.ru/kupit-bilet-kvn/851.html', 34) --10
INSERT INTO GAME VALUES(2, 1, 3, '2018-02-13', 'http://domkvn.ru/kupit-bilet-kvn/811.html', 35) --11 2018 1/8
INSERT INTO GAME VALUES(2, 2, 3, '2018-03-01', 'http://domkvn.ru/kupit-bilet-kvn/812.html', 36) --12
INSERT INTO GAME VALUES(2, 3, 3, '2018-03-16 ','http://domkvn.ru/kupit-bilet-kvn/813.html', 37) --13
INSERT INTO GAME VALUES(2, 4, 3, '2018-04-21', 'http://domkvn.ru/kupit-bilet-kvn/814.html', 38) --14
INSERT INTO GAME VALUES(4, 5, 3, '2018-05-11', 'http://domkvn.ru/kupit-bilet-kvn/815.html', 39) --15
INSERT INTO GAME VALUES(4, 6, 3, '2018-06-11', 'http://domkvn.ru/kupit-bilet-kvn/816.html', 40) --16
INSERT INTO GAME VALUES(4, 7, 3, '2018-06-25', 'http://domkvn.ru/kupit-bilet-kvn/819.html', 41) --17
INSERT INTO GAME VALUES(3, 8, 3, '2018-10-13', 'http://domkvn.ru/kupit-bilet-kvn/820.html', 42) --18
INSERT INTO GAME VALUES(3, 9, 3, '2018-10-20', 'http://domkvn.ru/kupit-bilet-kvn/821.html', 43) --19
INSERT INTO GAME VALUES(7, 10, 3, '2018-12-15', 'http://domkvn.ru/kupit-bilet-kvn/823.html', 44) --20
INSERT INTO GAME VALUES(6, 11, 4, '2018-07-20', 'http://domkvn.ru/kupit-bilet-kvn/322.html', 45) --21
INSERT INTO GAME VALUES(5, 11, 1, '2018-08-23', 'http://domkvn.ru/kupit-bilet-kvn/824.html', 46) --22
INSERT INTO GAME VALUES(4, 11, 2, '2019-11-16', 'http://domkvn.ru/kupit-bilet-kvn/830.html', 47) --23
INSERT INTO GAME VALUES(3, 11, 5, '2019-09-03', 'http://domkvn.ru/kupit-bilet-kvn/827.html', 48) --24
INSERT INTO GAME VALUES(5, 11, 1, '2019-08-23', 'http://domkvn.ru/kupit-bilet-kvn/826.html', 49) --25
INSERT INTO GAME VALUES(6, 11, 4, '2019-07-19', 'http://domkvn.ru/kupit-bilet-kvn/325.html', 50) --26
INSERT INTO GAME VALUES(1, 1, 3, '2020-02-12', 'http://domkvn.ru/kupit-bilet-kvn/853.html', 51) --27
INSERT INTO GAME VALUES(1, 2, 3, '2020-02-18', 'http://domkvn.ru/kupit-bilet-kvn/854.html', 52) --28
INSERT INTO GAME VALUES(1, 3, 3, '2020-02-27', 'http://domkvn.ru/kupit-bilet-kvn/855.html', 53) --29
INSERT INTO GAME VALUES(1, 4, 3, '2020-03-04', 'http://domkvn.ru/kupit-bilet-kvn/856.html', 54) --30
INSERT INTO GAME VALUES(3, 6, 3, '2020-10-01', 'http://domkvn.ru/kupit-bilet-kvn/861.html', NULL) --31 
INSERT INTO GAME VALUES(3, 6, 3, '2020-10-14', 'http://domkvn.ru/kupit-bilet-kvn/862.html', NULL) --32
INSERT INTO GAME VALUES(3, 6, 3, '2020-10-16', 'http://domkvn.ru/kupit-bilet-kvn/863.html', NULL) --33
INSERT INTO GAME VALUES(5, 11, 2, '2018-10-15', 'http://domkvn.ru/kupit-bilet-kvn/830.html', 55) --34
INSERT INTO GAME VALUES(4, 11, 2, '2019-11-23', 'http://domkvn.ru/kupit-bilet-kvn/830.html', 56) --35

INSERT INTO ABOUT_GAME VALUES(34, 2, 2)
INSERT INTO ABOUT_GAME VALUES(34, 11, 1)
INSERT INTO ABOUT_GAME VALUES(34, 3, 6)
INSERT INTO ABOUT_GAME VALUES(34, 12, 5)
INSERT INTO ABOUT_GAME VALUES(34, 8, 3)
INSERT INTO ABOUT_GAME VALUES(34, 9, 4)

INSERT INTO ABOUT_GAME VALUES(35, 14, 2)
INSERT INTO ABOUT_GAME VALUES(35, 3, 4)
INSERT INTO ABOUT_GAME VALUES(35, 6, 5)
INSERT INTO ABOUT_GAME VALUES(35, 15, 3)
INSERT INTO ABOUT_GAME VALUES(35, 4, 1)
INSERT INTO ABOUT_GAME VALUES(35, 9, 6)

INSERT INTO ABOUT_GAME VALUES(21, 13, 0)
INSERT INTO ABOUT_GAME VALUES(21, 14, 0)
INSERT INTO ABOUT_GAME VALUES(21, 32, 0)
INSERT INTO ABOUT_GAME VALUES(21, 31, 0)
INSERT INTO ABOUT_GAME VALUES(21, 17, 0)
INSERT INTO ABOUT_GAME VALUES(21, 22, 0)

INSERT INTO ABOUT_GAME VALUES(22, 7, 0)
INSERT INTO ABOUT_GAME VALUES(22, 19, 0)
INSERT INTO ABOUT_GAME VALUES(22, 18, 0)
INSERT INTO ABOUT_GAME VALUES(22, 31, 0)
INSERT INTO ABOUT_GAME VALUES(22, 33, 0)

INSERT INTO ABOUT_GAME VALUES(23, 3, 2)
INSERT INTO ABOUT_GAME VALUES(23, 4, 1)
INSERT INTO ABOUT_GAME VALUES(23, 5, 3)
INSERT INTO ABOUT_GAME VALUES(23, 1, 4)
INSERT INTO ABOUT_GAME VALUES(23, 8, 5)

INSERT INTO ABOUT_GAME VALUES(24, 27, 1)
INSERT INTO ABOUT_GAME VALUES(24, 29, 3)
INSERT INTO ABOUT_GAME VALUES(24, 12, 4)
INSERT INTO ABOUT_GAME VALUES(24, 11, 2)
INSERT INTO ABOUT_GAME VALUES(24, 23, 5)

INSERT INTO ABOUT_GAME VALUES(25, 21, 2)
INSERT INTO ABOUT_GAME VALUES(25, 22, 3)
INSERT INTO ABOUT_GAME VALUES(25, 32, 1)
INSERT INTO ABOUT_GAME VALUES(25, 31, 4)
INSERT INTO ABOUT_GAME VALUES(25, 19, 5)

INSERT INTO ABOUT_GAME VALUES(26, 32, 0)
INSERT INTO ABOUT_GAME VALUES(26, 31, 0)
INSERT INTO ABOUT_GAME VALUES(26, 29, 0)
INSERT INTO ABOUT_GAME VALUES(26, 27, 0)
INSERT INTO ABOUT_GAME VALUES(26, 26, 0)

INSERT INTO ABOUT_GAME VALUES(27, 35, 3)
INSERT INTO ABOUT_GAME VALUES(27, 33, 1)
INSERT INTO ABOUT_GAME VALUES(27, 34, 2)
INSERT INTO ABOUT_GAME VALUES(27, 36, 4)

INSERT INTO ABOUT_GAME VALUES(28, 24, 1)
INSERT INTO ABOUT_GAME VALUES(28, 37, 1)
INSERT INTO ABOUT_GAME VALUES(28, 38, 2)
INSERT INTO ABOUT_GAME VALUES(28, 39, 3)

INSERT INTO ABOUT_GAME VALUES(29, 41, 3)
INSERT INTO ABOUT_GAME VALUES(29, 40, 1)
INSERT INTO ABOUT_GAME VALUES(29, 17, 2)
INSERT INTO ABOUT_GAME VALUES(29, 42, 4)

INSERT INTO ABOUT_GAME VALUES(30, 45, 3)
INSERT INTO ABOUT_GAME VALUES(30, 43, 1)
INSERT INTO ABOUT_GAME VALUES(30, 44, 2)
INSERT INTO ABOUT_GAME VALUES(30, 46, 4)

INSERT INTO ABOUT_GAME VALUES(31, 17, NULL)
INSERT INTO ABOUT_GAME VALUES(31, 35, NULL)
INSERT INTO ABOUT_GAME VALUES(31, 40, NULL)
INSERT INTO ABOUT_GAME VALUES(31, 43, NULL)

INSERT INTO ABOUT_GAME VALUES(32, 36, NULL)
INSERT INTO ABOUT_GAME VALUES(32, 41, NULL)
INSERT INTO ABOUT_GAME VALUES(32, 39, NULL)
INSERT INTO ABOUT_GAME VALUES(32, 35, NULL)

INSERT INTO ABOUT_GAME VALUES(33, 38, NULL)
INSERT INTO ABOUT_GAME VALUES(33, 45, NULL)
INSERT INTO ABOUT_GAME VALUES(33, 44, NULL)
INSERT INTO ABOUT_GAME VALUES(33, 24, NULL)

INSERT INTO ABOUT_GAME VALUES(11, 16, 2)
INSERT INTO ABOUT_GAME VALUES(11, 31, 1)
INSERT INTO ABOUT_GAME VALUES(11, 19, 3)
INSERT INTO ABOUT_GAME VALUES(11, 17, 4)
INSERT INTO ABOUT_GAME VALUES(11, 18, 5)

INSERT INTO TIME_CODE VALUES('00:05:12', 11, 16) 
INSERT INTO TIME_CODE VALUES('00:35:16', 11, 16)
INSERT INTO TIME_CODE VALUES('01:05:21', 11, 16)
INSERT INTO TIME_CODE VALUES('00:12:13', 11, 31)
INSERT INTO TIME_CODE VALUES('00:42:45', 11, 31)
INSERT INTO TIME_CODE VALUES('01:12:07', 11, 31)
INSERT INTO TIME_CODE VALUES('00:19:44', 11, 19)
INSERT INTO TIME_CODE VALUES('00:49:12', 11, 19)
INSERT INTO TIME_CODE VALUES('01:20:50', 11, 19)
INSERT INTO TIME_CODE VALUES('00:26:09', 11, 17)
INSERT INTO TIME_CODE VALUES('00:50:19', 11, 17)
INSERT INTO TIME_CODE VALUES('01:31:19', 11, 17)
INSERT INTO TIME_CODE VALUES('00:30:19', 11, 18)
INSERT INTO TIME_CODE VALUES('00:55:39', 11, 18)
INSERT INTO TIME_CODE VALUES('01:38:10', 11, 18)

INSERT INTO ABOUT_GAME VALUES(12, 25, 2)
INSERT INTO ABOUT_GAME VALUES(12, 24, 1)
INSERT INTO ABOUT_GAME VALUES(12, 10, 3)
INSERT INTO ABOUT_GAME VALUES(12, 29, 4)
INSERT INTO ABOUT_GAME VALUES(12, 30, 5)

INSERT INTO TIME_CODE VALUES('00:06:15', 12, 25) 
INSERT INTO TIME_CODE VALUES('00:33:25', 12, 25)
INSERT INTO TIME_CODE VALUES('01:04:21', 12, 25)
INSERT INTO TIME_CODE VALUES('00:15:16', 12, 24)
INSERT INTO TIME_CODE VALUES('00:42:45', 12, 24)
INSERT INTO TIME_CODE VALUES('01:13:07', 12, 24)
INSERT INTO TIME_CODE VALUES('00:19:16', 12, 10)
INSERT INTO TIME_CODE VALUES('00:50:12', 12, 10)
INSERT INTO TIME_CODE VALUES('01:20:55', 12, 10)
INSERT INTO TIME_CODE VALUES('00:27:09', 12, 29)
INSERT INTO TIME_CODE VALUES('00:50:13', 12, 28)
INSERT INTO TIME_CODE VALUES('01:35:19', 12, 29)
INSERT INTO TIME_CODE VALUES('00:30:19', 12, 30)
INSERT INTO TIME_CODE VALUES('00:55:34', 12, 30)
INSERT INTO TIME_CODE VALUES('01:38:48', 12, 30)

INSERT INTO ABOUT_GAME VALUES(13, 11, 2)
INSERT INTO ABOUT_GAME VALUES(13, 25, 1)
INSERT INTO ABOUT_GAME VALUES(13, 28, 3)
INSERT INTO ABOUT_GAME VALUES(13, 27, 4)
INSERT INTO ABOUT_GAME VALUES(13, 26, 5)

INSERT INTO TIME_CODE VALUES('00:06:14', 13, 11) 
INSERT INTO TIME_CODE VALUES('00:36:59', 13, 11)
INSERT INTO TIME_CODE VALUES('01:05:34', 13, 11)
INSERT INTO TIME_CODE VALUES('00:12:18', 13, 25)
INSERT INTO TIME_CODE VALUES('00:41:45', 13, 25)
INSERT INTO TIME_CODE VALUES('01:15:02', 13, 25)
INSERT INTO TIME_CODE VALUES('00:18:40', 13, 28)
INSERT INTO TIME_CODE VALUES('00:49:42', 13, 28)
INSERT INTO TIME_CODE VALUES('01:20:51', 13, 28)
INSERT INTO TIME_CODE VALUES('00:27:12', 13, 27)
INSERT INTO TIME_CODE VALUES('00:51:14', 13, 27)
INSERT INTO TIME_CODE VALUES('01:30:37', 13, 27)
INSERT INTO TIME_CODE VALUES('00:30:43', 13, 26)
INSERT INTO TIME_CODE VALUES('00:57:39', 13, 26)
INSERT INTO TIME_CODE VALUES('01:40:10', 13, 26)

INSERT INTO ABOUT_GAME VALUES(14, 20, 2)
INSERT INTO ABOUT_GAME VALUES(14, 32, 1)
INSERT INTO ABOUT_GAME VALUES(14, 21, 3)
INSERT INTO ABOUT_GAME VALUES(14, 22, 4)
INSERT INTO ABOUT_GAME VALUES(14, 23, 5)

INSERT INTO TIME_CODE VALUES('00:05:34', 14, 20) 
INSERT INTO TIME_CODE VALUES('00:35:14', 14, 20)
INSERT INTO TIME_CODE VALUES('01:05:29', 14, 20)
INSERT INTO TIME_CODE VALUES('00:12:25', 14, 32)
INSERT INTO TIME_CODE VALUES('00:41:45', 14, 32)
INSERT INTO TIME_CODE VALUES('01:12:19', 14, 32)
INSERT INTO TIME_CODE VALUES('00:19:49', 14, 21)
INSERT INTO TIME_CODE VALUES('00:49:24', 14, 21)
INSERT INTO TIME_CODE VALUES('01:20:33', 14, 21)
INSERT INTO TIME_CODE VALUES('00:26:17', 14, 22)
INSERT INTO TIME_CODE VALUES('00:51:45', 14, 22)
INSERT INTO TIME_CODE VALUES('01:31:34', 14, 22)
INSERT INTO TIME_CODE VALUES('00:30:34', 14, 23)
INSERT INTO TIME_CODE VALUES('00:55:27', 14, 23)
INSERT INTO TIME_CODE VALUES('01:40:11', 14, 23)
--502
INSERT INTO ABOUT_GAME VALUES(15, 27, 2)
INSERT INTO ABOUT_GAME VALUES(15, 24, 1)
INSERT INTO ABOUT_GAME VALUES(15, 25, 3)
INSERT INTO ABOUT_GAME VALUES(15, 21, 4)
INSERT INTO ABOUT_GAME VALUES(15, 16, 5)

INSERT INTO TIME_CODE VALUES('00:05:45', 15, 27) 
INSERT INTO TIME_CODE VALUES('00:35:32', 15, 27)
INSERT INTO TIME_CODE VALUES('01:05:16', 15, 27)
INSERT INTO TIME_CODE VALUES('00:12:45', 15, 24)
INSERT INTO TIME_CODE VALUES('00:41:12', 15, 24)
INSERT INTO TIME_CODE VALUES('01:13:16', 15, 24)
INSERT INTO TIME_CODE VALUES('00:19:11', 15, 25)
INSERT INTO TIME_CODE VALUES('00:49:24', 15, 25)
INSERT INTO TIME_CODE VALUES('01:20:14', 15, 25)
INSERT INTO TIME_CODE VALUES('00:26:45', 15, 21)
INSERT INTO TIME_CODE VALUES('00:53:45', 15, 21)
INSERT INTO TIME_CODE VALUES('01:31:12', 15, 21)
INSERT INTO TIME_CODE VALUES('00:31:34', 15, 16)
INSERT INTO TIME_CODE VALUES('00:55:13', 15, 16)
INSERT INTO TIME_CODE VALUES('01:39:47', 15, 16)

INSERT INTO ABOUT_GAME VALUES(16, 15, 2)
INSERT INTO ABOUT_GAME VALUES(16, 11, 1)
INSERT INTO ABOUT_GAME VALUES(16, 10, 3)
INSERT INTO ABOUT_GAME VALUES(16, 20, 4)
INSERT INTO ABOUT_GAME VALUES(16, 29, 5)

INSERT INTO TIME_CODE VALUES('00:06:45', 16, 15) 
INSERT INTO TIME_CODE VALUES('00:35:52', 16, 15)
INSERT INTO TIME_CODE VALUES('01:05:16', 16, 15)
INSERT INTO TIME_CODE VALUES('00:12:45', 16, 11)
INSERT INTO TIME_CODE VALUES('00:41:12', 16, 11)
INSERT INTO TIME_CODE VALUES('01:13:16', 16, 11)
INSERT INTO TIME_CODE VALUES('00:19:11', 16, 10)
INSERT INTO TIME_CODE VALUES('00:49:24', 16, 10)
INSERT INTO TIME_CODE VALUES('01:20:14', 16, 10)
INSERT INTO TIME_CODE VALUES('00:26:45', 16, 20)
INSERT INTO TIME_CODE VALUES('00:53:45', 16, 20)
INSERT INTO TIME_CODE VALUES('01:31:12', 16, 20)
INSERT INTO TIME_CODE VALUES('00:31:34', 16, 16)
INSERT INTO TIME_CODE VALUES('00:55:13', 16, 16)
INSERT INTO TIME_CODE VALUES('01:39:47', 16, 16)

INSERT INTO ABOUT_GAME VALUES(17, 28, 2)
INSERT INTO ABOUT_GAME VALUES(17, 32, 1)
INSERT INTO ABOUT_GAME VALUES(17, 19, 3)
INSERT INTO ABOUT_GAME VALUES(17, 31, 4)
INSERT INTO ABOUT_GAME VALUES(17, 21, 5)

INSERT INTO TIME_CODE VALUES('00:05:09', 17, 28) 
INSERT INTO TIME_CODE VALUES('00:35:41', 17, 28)
INSERT INTO TIME_CODE VALUES('01:05:17', 17, 28)
INSERT INTO TIME_CODE VALUES('00:12:23', 17, 32)
INSERT INTO TIME_CODE VALUES('00:41:11', 17, 32)
INSERT INTO TIME_CODE VALUES('01:14:26', 17, 32)
INSERT INTO TIME_CODE VALUES('00:19:21', 17, 19)
INSERT INTO TIME_CODE VALUES('00:49:25', 17, 19)
INSERT INTO TIME_CODE VALUES('01:21:14', 17, 19)
INSERT INTO TIME_CODE VALUES('00:27:35', 17, 31)
INSERT INTO TIME_CODE VALUES('00:54:45', 17, 31)
INSERT INTO TIME_CODE VALUES('01:31:16', 17, 31)
INSERT INTO TIME_CODE VALUES('00:31:33', 17, 21)
INSERT INTO TIME_CODE VALUES('00:55:11', 17, 21)
INSERT INTO TIME_CODE VALUES('01:42:57', 17, 21)

INSERT INTO ABOUT_GAME VALUES(18, 15, 2)
INSERT INTO ABOUT_GAME VALUES(18, 32, 1)
INSERT INTO ABOUT_GAME VALUES(18, 27, 3)
INSERT INTO ABOUT_GAME VALUES(18, 31, 4)
INSERT INTO ABOUT_GAME VALUES(18, 19, 5)

INSERT INTO TIME_CODE VALUES('00:07:15', 18, 15) 
INSERT INTO TIME_CODE VALUES('00:35:32', 18, 15)
INSERT INTO TIME_CODE VALUES('01:07:23', 18, 15)
INSERT INTO TIME_CODE VALUES('00:12:11', 18, 32)
INSERT INTO TIME_CODE VALUES('00:41:34', 18, 32)
INSERT INTO TIME_CODE VALUES('01:13:23', 18, 32)
INSERT INTO TIME_CODE VALUES('00:21:12', 18, 27)
INSERT INTO TIME_CODE VALUES('00:50:24', 18, 27)
INSERT INTO TIME_CODE VALUES('01:20:14', 18, 27)
INSERT INTO TIME_CODE VALUES('00:26:45', 18, 31)
INSERT INTO TIME_CODE VALUES('00:53:45', 18, 31)
INSERT INTO TIME_CODE VALUES('01:31:12', 18, 31)
INSERT INTO TIME_CODE VALUES('00:31:34', 18, 19)
INSERT INTO TIME_CODE VALUES('00:55:13', 18, 19)
INSERT INTO TIME_CODE VALUES('01:39:47', 18, 19)

INSERT INTO ABOUT_GAME VALUES(19, 10, 2)
INSERT INTO ABOUT_GAME VALUES(19, 25, 1)
INSERT INTO ABOUT_GAME VALUES(19, 11, 3)
INSERT INTO ABOUT_GAME VALUES(19, 24, 4)
INSERT INTO ABOUT_GAME VALUES(19, 28, 5)

INSERT INTO TIME_CODE VALUES('00:06:12', 19, 10) 
INSERT INTO TIME_CODE VALUES('00:34:25', 19, 10)
INSERT INTO TIME_CODE VALUES('01:08:17', 19, 10)
INSERT INTO TIME_CODE VALUES('00:12:24', 19, 25)
INSERT INTO TIME_CODE VALUES('00:41:13', 19, 25)
INSERT INTO TIME_CODE VALUES('01:12:28', 19, 25)
INSERT INTO TIME_CODE VALUES('00:21:14', 19, 11)
INSERT INTO TIME_CODE VALUES('00:52:24', 19, 11)
INSERT INTO TIME_CODE VALUES('01:20:17', 19, 11)
INSERT INTO TIME_CODE VALUES('00:26:46', 19, 24)
INSERT INTO TIME_CODE VALUES('00:52:46', 19, 24)
INSERT INTO TIME_CODE VALUES('01:32:13', 19, 24)
INSERT INTO TIME_CODE VALUES('00:29:21', 19, 28)
INSERT INTO TIME_CODE VALUES('00:56:26', 19, 28)
INSERT INTO TIME_CODE VALUES('01:47:37', 19, 28)

INSERT INTO ABOUT_GAME VALUES(20, 10, 2)
INSERT INTO ABOUT_GAME VALUES(20, 11, 1)
INSERT INTO ABOUT_GAME VALUES(20, 32, 3)
INSERT INTO ABOUT_GAME VALUES(20, 24, 4)
INSERT INTO ABOUT_GAME VALUES(20, 15, 5)

INSERT INTO TIME_CODE VALUES('00:06:35', 20, 10) 
INSERT INTO TIME_CODE VALUES('00:35:56', 20, 10)
INSERT INTO TIME_CODE VALUES('01:07:12', 20, 10)
INSERT INTO TIME_CODE VALUES('00:12:14', 20, 11)
INSERT INTO TIME_CODE VALUES('00:41:23', 20, 11)
INSERT INTO TIME_CODE VALUES('01:13:17', 20, 11)
INSERT INTO TIME_CODE VALUES('00:21:19', 20, 32)
INSERT INTO TIME_CODE VALUES('00:50:41', 20, 32)
INSERT INTO TIME_CODE VALUES('01:20:54', 20, 32)
INSERT INTO TIME_CODE VALUES('00:26:51', 20, 24)
INSERT INTO TIME_CODE VALUES('00:53:45', 20, 24)
INSERT INTO TIME_CODE VALUES('01:32:42', 20, 24)
INSERT INTO TIME_CODE VALUES('00:32:34', 20, 15)
INSERT INTO TIME_CODE VALUES('00:54:16', 20, 15)
INSERT INTO TIME_CODE VALUES('01:39:49', 20, 15)

INSERT INTO ABOUT_GAME VALUES(1, 12, 2)
INSERT INTO ABOUT_GAME VALUES(1, 32, 1)
INSERT INTO ABOUT_GAME VALUES(1, 24, 3)
INSERT INTO ABOUT_GAME VALUES(1, 14, 4)
INSERT INTO ABOUT_GAME VALUES(1, 4, 5)

INSERT INTO TIME_CODE VALUES('00:06:17', 1, 12) 
INSERT INTO TIME_CODE VALUES('00:33:12', 1, 12)
INSERT INTO TIME_CODE VALUES('01:04:33', 1, 12)
INSERT INTO TIME_CODE VALUES('00:15:43', 1, 32)
INSERT INTO TIME_CODE VALUES('00:42:56', 1, 32)
INSERT INTO TIME_CODE VALUES('01:13:09', 1, 32)
INSERT INTO TIME_CODE VALUES('00:19:07', 1, 24)
INSERT INTO TIME_CODE VALUES('00:50:13', 1, 24)
INSERT INTO TIME_CODE VALUES('01:20:05', 1, 24)
INSERT INTO TIME_CODE VALUES('00:29:34', 1, 14)
INSERT INTO TIME_CODE VALUES('00:51:23', 1, 14)
INSERT INTO TIME_CODE VALUES('01:35:29', 1, 14)
INSERT INTO TIME_CODE VALUES('00:31:29', 1, 4)
INSERT INTO TIME_CODE VALUES('00:55:44', 1, 4)
INSERT INTO TIME_CODE VALUES('01:38:58', 1, 4)

INSERT INTO ABOUT_GAME VALUES(2, 11, 2)
INSERT INTO ABOUT_GAME VALUES(2, 16, 1)
INSERT INTO ABOUT_GAME VALUES(2, 22, 3)
INSERT INTO ABOUT_GAME VALUES(2, 15, 4)
INSERT INTO ABOUT_GAME VALUES(2, 13, 5)

INSERT INTO TIME_CODE VALUES('00:05:24', 2, 11) 
INSERT INTO TIME_CODE VALUES('00:35:45', 2, 11)
INSERT INTO TIME_CODE VALUES('01:07:12', 2, 11)
INSERT INTO TIME_CODE VALUES('00:12:32', 2, 16)
INSERT INTO TIME_CODE VALUES('00:41:32', 2, 16)
INSERT INTO TIME_CODE VALUES('01:13:47', 2, 16)
INSERT INTO TIME_CODE VALUES('00:21:11', 2, 22)
INSERT INTO TIME_CODE VALUES('00:50:09', 2, 22)
INSERT INTO TIME_CODE VALUES('01:20:18', 2, 22)
INSERT INTO TIME_CODE VALUES('00:27:06', 2, 15)
INSERT INTO TIME_CODE VALUES('00:53:18', 2, 15)
INSERT INTO TIME_CODE VALUES('01:31:14', 2, 15)
INSERT INTO TIME_CODE VALUES('00:33:32', 2, 13)
INSERT INTO TIME_CODE VALUES('00:54:19', 2, 13)
INSERT INTO TIME_CODE VALUES('01:39:47', 2, 13)
--687
INSERT INTO ABOUT_GAME VALUES(3, 17, 2)
INSERT INTO ABOUT_GAME VALUES(3, 2, 1)
INSERT INTO ABOUT_GAME VALUES(3, 18, 3)
INSERT INTO ABOUT_GAME VALUES(3, 23, 4)
INSERT INTO ABOUT_GAME VALUES(3, 25, 5)
INSERT INTO TIME_CODE VALUES('00:06:34', 3, 17) 
INSERT INTO TIME_CODE VALUES('00:35:23', 3, 17)
INSERT INTO TIME_CODE VALUES('01:05:19', 3, 17)
INSERT INTO TIME_CODE VALUES('00:12:35', 3, 2)
INSERT INTO TIME_CODE VALUES('00:41:02', 3, 2)
INSERT INTO TIME_CODE VALUES('01:13:58', 3, 2)
INSERT INTO TIME_CODE VALUES('00:19:43', 3, 18)
INSERT INTO TIME_CODE VALUES('00:49:12', 3, 18)
INSERT INTO TIME_CODE VALUES('01:20:34', 3, 18)
INSERT INTO TIME_CODE VALUES('00:27:32', 3, 23)
INSERT INTO TIME_CODE VALUES('00:54:55', 3, 23)
INSERT INTO TIME_CODE VALUES('01:29:42', 3, 23)
INSERT INTO TIME_CODE VALUES('00:31:32', 3, 25)
INSERT INTO TIME_CODE VALUES('00:56:43', 3, 25)
INSERT INTO TIME_CODE VALUES('01:41:57', 3, 25)

INSERT INTO ABOUT_GAME VALUES(4, 25, 2)
INSERT INTO ABOUT_GAME VALUES(4, 31, 1)
INSERT INTO ABOUT_GAME VALUES(4, 19, 3)
INSERT INTO ABOUT_GAME VALUES(4, 17, 4)
INSERT INTO ABOUT_GAME VALUES(4, 21, 5)

INSERT INTO TIME_CODE VALUES('00:05:34', 4, 25) 
INSERT INTO TIME_CODE VALUES('00:35:12', 4, 25)
INSERT INTO TIME_CODE VALUES('01:05:29', 4, 25)
INSERT INTO TIME_CODE VALUES('00:12:56', 4, 31)
INSERT INTO TIME_CODE VALUES('00:44:30', 4, 31)
INSERT INTO TIME_CODE VALUES('01:12:17', 4, 31)
INSERT INTO TIME_CODE VALUES('00:19:14', 4, 19)
INSERT INTO TIME_CODE VALUES('00:47:12', 4, 19)
INSERT INTO TIME_CODE VALUES('01:20:34', 4, 19)
INSERT INTO TIME_CODE VALUES('00:26:12', 4, 17)
INSERT INTO TIME_CODE VALUES('00:50:14', 4, 17)
INSERT INTO TIME_CODE VALUES('01:33:19', 4, 17)
INSERT INTO TIME_CODE VALUES('00:30:59', 4, 21)
INSERT INTO TIME_CODE VALUES('00:56:19', 4, 21)
INSERT INTO TIME_CODE VALUES('01:38:13', 4, 21)

INSERT INTO ABOUT_GAME VALUES(5, 32, 2)
INSERT INTO ABOUT_GAME VALUES(5, 25, 1)
INSERT INTO ABOUT_GAME VALUES(5, 2, 3)
INSERT INTO ABOUT_GAME VALUES(5, 31, 4)
INSERT INTO ABOUT_GAME VALUES(5, 12, 5)

INSERT INTO TIME_CODE VALUES('00:07:23', 5, 32) 
INSERT INTO TIME_CODE VALUES('00:33:14', 5, 32)
INSERT INTO TIME_CODE VALUES('01:04:45', 5, 32)
INSERT INTO TIME_CODE VALUES('00:15:46', 5, 25)
INSERT INTO TIME_CODE VALUES('00:42:12', 5, 25)
INSERT INTO TIME_CODE VALUES('01:13:19', 5, 25)
INSERT INTO TIME_CODE VALUES('00:20:07', 5, 31)
INSERT INTO TIME_CODE VALUES('00:51:13', 5, 31)
INSERT INTO TIME_CODE VALUES('01:21:15', 5, 31)
INSERT INTO TIME_CODE VALUES('00:29:24', 5, 12)
INSERT INTO TIME_CODE VALUES('00:51:45', 5, 12)
INSERT INTO TIME_CODE VALUES('01:35:32', 5, 12)
INSERT INTO TIME_CODE VALUES('00:31:33', 5, 2)
INSERT INTO TIME_CODE VALUES('00:54:14', 5, 2)
INSERT INTO TIME_CODE VALUES('01:38:22', 5, 2)

INSERT INTO ABOUT_GAME VALUES(6, 16, 2)
INSERT INTO ABOUT_GAME VALUES(6, 11, 1)
INSERT INTO ABOUT_GAME VALUES(6, 17, 3)
INSERT INTO ABOUT_GAME VALUES(6, 22, 4)
INSERT INTO ABOUT_GAME VALUES(6, 24, 5)

INSERT INTO TIME_CODE VALUES('00:05:45', 6, 16) 
INSERT INTO TIME_CODE VALUES('00:35:32', 6, 16)
INSERT INTO TIME_CODE VALUES('01:05:23', 6, 16)
INSERT INTO TIME_CODE VALUES('00:12:21', 6, 11)
INSERT INTO TIME_CODE VALUES('00:41:23', 6, 11)
INSERT INTO TIME_CODE VALUES('01:12:12', 6, 11)
INSERT INTO TIME_CODE VALUES('00:19:54', 6, 17)
INSERT INTO TIME_CODE VALUES('00:49:32', 6, 17)
INSERT INTO TIME_CODE VALUES('01:20:32', 6, 22)
INSERT INTO TIME_CODE VALUES('00:27:17', 6, 22)
INSERT INTO TIME_CODE VALUES('00:51:55', 6, 22)
INSERT INTO TIME_CODE VALUES('01:31:14', 6, 22)
INSERT INTO TIME_CODE VALUES('00:30:14', 6, 24)
INSERT INTO TIME_CODE VALUES('00:56:17', 6, 24)
INSERT INTO TIME_CODE VALUES('01:41:12', 6, 24)

INSERT INTO ABOUT_GAME VALUES(7, 18, 2)
INSERT INTO ABOUT_GAME VALUES(7, 19, 1)
INSERT INTO ABOUT_GAME VALUES(7, 14, 3)
INSERT INTO ABOUT_GAME VALUES(7, 15, 4)
INSERT INTO ABOUT_GAME VALUES(7, 23, 5)

INSERT INTO TIME_CODE VALUES('00:06:35', 7, 18) 
INSERT INTO TIME_CODE VALUES('00:35:56', 7, 18)
INSERT INTO TIME_CODE VALUES('01:07:12', 7, 18)
INSERT INTO TIME_CODE VALUES('00:12:14', 7, 19)
INSERT INTO TIME_CODE VALUES('00:41:23', 7, 19)
INSERT INTO TIME_CODE VALUES('01:13:17', 7, 19)
INSERT INTO TIME_CODE VALUES('00:21:19', 7, 14)
INSERT INTO TIME_CODE VALUES('00:50:41', 7, 14)
INSERT INTO TIME_CODE VALUES('01:20:54', 7, 14)
INSERT INTO TIME_CODE VALUES('00:26:51', 7, 15)
INSERT INTO TIME_CODE VALUES('00:53:45', 7, 15)
INSERT INTO TIME_CODE VALUES('01:32:42', 7, 15)
INSERT INTO TIME_CODE VALUES('00:32:34', 7, 23)
INSERT INTO TIME_CODE VALUES('00:54:16', 7, 23)
INSERT INTO TIME_CODE VALUES('01:39:49', 7, 23)

INSERT INTO ABOUT_GAME VALUES(8, 18, 2)
INSERT INTO ABOUT_GAME VALUES(8, 16, 1)
INSERT INTO ABOUT_GAME VALUES(8, 11, 3)
INSERT INTO ABOUT_GAME VALUES(8, 19, 4)
INSERT INTO ABOUT_GAME VALUES(8, 14, 5)

INSERT INTO TIME_CODE VALUES('00:05:34', 8, 16) 
INSERT INTO TIME_CODE VALUES('00:35:12', 8, 16)
INSERT INTO TIME_CODE VALUES('01:05:29', 8, 16)
INSERT INTO TIME_CODE VALUES('00:12:56', 8, 31)
INSERT INTO TIME_CODE VALUES('00:44:30', 8, 31)
INSERT INTO TIME_CODE VALUES('01:12:17', 8, 31)
INSERT INTO TIME_CODE VALUES('00:19:14', 8, 19)
INSERT INTO TIME_CODE VALUES('00:47:12', 8, 19)
INSERT INTO TIME_CODE VALUES('01:20:34', 8, 19)
INSERT INTO TIME_CODE VALUES('00:26:12', 8, 17)
INSERT INTO TIME_CODE VALUES('00:50:14', 8, 17)
INSERT INTO TIME_CODE VALUES('01:33:19', 8, 17)
INSERT INTO TIME_CODE VALUES('00:30:59', 8, 14)
INSERT INTO TIME_CODE VALUES('00:56:19', 8, 14)
INSERT INTO TIME_CODE VALUES('01:38:13', 8, 14)

INSERT INTO ABOUT_GAME VALUES(9, 15, 2)
INSERT INTO ABOUT_GAME VALUES(9, 13, 1)
INSERT INTO ABOUT_GAME VALUES(9, 31, 3)
INSERT INTO ABOUT_GAME VALUES(9, 22, 4)
INSERT INTO ABOUT_GAME VALUES(9, 24, 5)

INSERT INTO TIME_CODE VALUES('00:05:09', 9, 15) 
INSERT INTO TIME_CODE VALUES('00:35:41', 9, 15)
INSERT INTO TIME_CODE VALUES('01:05:17', 9, 15)
INSERT INTO TIME_CODE VALUES('00:12:23', 9, 13)
INSERT INTO TIME_CODE VALUES('00:41:11', 9, 13)
INSERT INTO TIME_CODE VALUES('01:14:26', 9, 13)
INSERT INTO TIME_CODE VALUES('00:19:21', 9, 24)
INSERT INTO TIME_CODE VALUES('00:49:25', 9, 24)
INSERT INTO TIME_CODE VALUES('01:21:14', 9, 24)
INSERT INTO TIME_CODE VALUES('00:27:35', 9, 22)
INSERT INTO TIME_CODE VALUES('00:54:45', 9, 22)
INSERT INTO TIME_CODE VALUES('01:31:16', 9, 22)
INSERT INTO TIME_CODE VALUES('00:31:33', 9, 31)
INSERT INTO TIME_CODE VALUES('00:55:11', 9, 31)
INSERT INTO TIME_CODE VALUES('01:42:57', 9, 31)

INSERT INTO ABOUT_GAME VALUES(10, 18, 2)
INSERT INTO ABOUT_GAME VALUES(10, 16, 1)
INSERT INTO ABOUT_GAME VALUES(10, 15, 3)
INSERT INTO ABOUT_GAME VALUES(10, 13, 4)
INSERT INTO ABOUT_GAME VALUES(10, 22, 5)

INSERT INTO TIME_CODE VALUES('00:05:19', 10, 18) 
INSERT INTO TIME_CODE VALUES('00:35:31', 10, 18)
INSERT INTO TIME_CODE VALUES('01:05:14', 10, 18)
INSERT INTO TIME_CODE VALUES('00:13:13', 10, 16)
INSERT INTO TIME_CODE VALUES('00:41:51', 10, 16)
INSERT INTO TIME_CODE VALUES('01:14:24', 10, 16)
INSERT INTO TIME_CODE VALUES('00:19:34', 10, 15)
INSERT INTO TIME_CODE VALUES('00:49:37', 10, 15)
INSERT INTO TIME_CODE VALUES('01:21:12', 10, 15)
INSERT INTO TIME_CODE VALUES('00:29:45', 10, 13)
INSERT INTO TIME_CODE VALUES('00:53:45', 10, 13)
INSERT INTO TIME_CODE VALUES('01:31:12', 10, 13)
INSERT INTO TIME_CODE VALUES('00:31:33', 10, 22)
INSERT INTO TIME_CODE VALUES('00:55:34', 10, 22)
INSERT INTO TIME_CODE VALUES('01:42:55', 10, 22)
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

INSERT INTO [OBJECT] VALUES(1, '�����')
INSERT INTO [OBJECT] VALUES(2, '���')
INSERT INTO [OBJECT] VALUES(3, '������')
INSERT INTO [OBJECT] VALUES(4, '�����������')
 
INSERT INTO TEAM VALUES('�����', 2, '������� ��������������� ����������� �����������') --1
INSERT INTO TEAM VALUES('����� � ����', 2, '�� ���') --2
INSERT INTO TEAM VALUES('������� ����������', 1, '���������') --3
INSERT INTO TEAM VALUES('������� �������', 2, '����') --4
INSERT INTO TEAM VALUES('���', 2, '���') --5
INSERT INTO TEAM VALUES('������', 3, '���������') --6
INSERT INTO TEAM VALUES('����� �� �������', 3, '�������') --7
INSERT INTO TEAM VALUES('������� ����', 2, '���������� �������������� ��������') --8
INSERT INTO TEAM VALUES('�������� ����������', 1, '����') --9
INSERT INTO TEAM VALUES('�����', 1, '�������') --10
INSERT INTO TEAM VALUES('�����', 1, '�����') --11
INSERT INTO TEAM VALUES('������� ������������ ����', 1, '�������') --12
INSERT INTO TEAM VALUES('����', 1, '������') --13
INSERT INTO TEAM VALUES('���� MIX', 1, '������') --14
INSERT INTO TEAM VALUES('���-��', 1, '����������') --15
INSERT INTO TEAM VALUES('������� �������������� ����', 1, '����') --16
INSERT INTO TEAM VALUES('������� �������� ����������� �����', 1, '������') --17
INSERT INTO TEAM VALUES('����� ���������� �������', 1, '���������') --18
INSERT INTO TEAM VALUES('������� ��������������', 1, '������') --19
INSERT INTO TEAM VALUES('������� ������ �����������', 1, '�����') --20
INSERT INTO TEAM VALUES('��� ������������ ', 1, '�����-���������') --21
INSERT INTO TEAM VALUES('����', 2, '����') --22
INSERT INTO TEAM VALUES('������� ����� ��������� ����������', 1, '�������') --23
INSERT INTO TEAM VALUES('������� ������ (�������)', 1, '�������') --24
INSERT INTO TEAM VALUES('�����', 1, '������')--25
INSERT INTO TEAM VALUES('������', 1, '������') --26
INSERT INTO TEAM VALUES('����� ������� �������', 1, '������') --27
INSERT INTO TEAM VALUES('����', 1, '�����������') --28
INSERT INTO TEAM VALUES('N������� D������', 1, '������') --29
INSERT INTO TEAM VALUES('������� ��������', 1, '��������') --30
INSERT INTO TEAM VALUES('������� ����', 1, '����') --31
INSERT INTO TEAM VALUES('������ ����� �������� �������', 1, '�����') --32
INSERT INTO TEAM VALUES('���', 2, '��������') --33
INSERT INTO TEAM VALUES('������� ��������', 1, '�����������') --34
INSERT INTO TEAM VALUES('������ �����', 1,'�������') --35
INSERT INTO TEAM VALUES('������', 1,'�������') --36
INSERT INTO TEAM VALUES('���� ��������', 2,'���') --37
INSERT INTO TEAM VALUES('G-Drive', 4, '������� �����') --38
INSERT INTO TEAM VALUES('��������� ��������', 2, '���') --39
INSERT INTO TEAM VALUES('����������', 1, '������') --40
INSERT INTO TEAM VALUES('����������', 2, '���') --41
INSERT INTO TEAM VALUES('�������', 2, '������') --42
INSERT INTO TEAM VALUES('������ �������', 2, '����') --43
INSERT INTO TEAM VALUES('��������� �������', 3, '�������') --44
INSERT INTO TEAM VALUES('������� ������', 2, '��� ���������') --45
INSERT INTO TEAM VALUES('����� �������', 2, '��� ��.���������')--46

--��� ����� ������� ���� ��� ���� ���� �������� �� ������ ����� �����������

INSERT INTO GENDER VALUES('���')
INSERT INTO GENDER VALUES('���')

INSERT INTO PERSON VALUES(1, '���������', '������', 1, '1976-05-03') --1
INSERT INTO PERSON VALUES(1, '�����', '��������', 1, '1981-09-09') --2
INSERT INTO PERSON VALUES(1, '��������', '���������', 1, '1977-03-12') --3
INSERT INTO PERSON VALUES(1, '���������', '�������', 1, '1967-07-24') --4
INSERT INTO PERSON VALUES(1, '���������', '�������', 1, '1977-09-14') --5
INSERT INTO PERSON VALUES(1, '�����', '������', 1, '1971-09-30') --6
INSERT INTO PERSON VALUES(1, '�������', '��������', 1, '1974-10-08') --7
INSERT INTO PERSON VALUES(1, '������', '����������', 1, '1975-02-19') --8
INSERT INTO PERSON VALUES(1, '���������', '��������', 1, '1975-04-10') --9
INSERT INTO PERSON VALUES(1, '������', '����', 1, '1979-01-02') --10
INSERT INTO PERSON VALUES(1, '���������', '�����', 1, '1972-10-10') --11
INSERT INTO PERSON VALUES(2, '������', '������', 1, '1974-08-01') --12
INSERT INTO PERSON VALUES(2, '������', '��������', 1, '1976-03-26') --13
INSERT INTO PERSON VALUES(2, '���������', '��������', 2, '1977-12-15') --14
INSERT INTO PERSON VALUES(2, '������', '�����������', 1, '1978-12-18') --15
INSERT INTO PERSON VALUES(2, '������', '��������', 1, '1983-08-09') --16
INSERT INTO PERSON VALUES(2, '����', '�������', 1, '1986-11-03') --17
INSERT INTO PERSON VALUES(2, '���������', '���������', 1, '1975-09-23') --18 
INSERT INTO PERSON VALUES(2, '������', '��������', 1, '1980-03-18') --19
INSERT INTO PERSON VALUES(2, '������', '�������', 1, '1984-06-25')
INSERT INTO PERSON VALUES(2, '�������', '����������', 1, '1986-01-21')
INSERT INTO PERSON VALUES(3, '����', '��������', 1, '1976-01-05')
INSERT INTO PERSON VALUES(3, '�����', '�������', 2, '1978-12-06')
INSERT INTO PERSON VALUES(3, '�������', '�������', 1, '1980-04-01')
INSERT INTO PERSON VALUES(3, '�����', '�������', 1, '1980-11-17')
INSERT INTO PERSON VALUES(3, '�����', '����������', 1, '1986-05-27')
INSERT INTO PERSON VALUES(3, '�������', '��������', 1, '1976-10-26')
INSERT INTO PERSON VALUES(3, '����', '�������', 1, '1976-12-09')
INSERT INTO PERSON VALUES(3, '������', '������', 1, '1978-06-27')
INSERT INTO PERSON VALUES(3, '�������', '���������', 1, '1983-03-11')
INSERT INTO PERSON VALUES(3, '��������', '������', 1, '1984-05-22')
INSERT INTO PERSON VALUES(4, '�������', '���������', 1, '1993-05-04')
INSERT INTO PERSON VALUES(4, '���������', '�������', 1, '1993-07-23')
INSERT INTO PERSON VALUES(4, '�������', '������', 1, '1996-03-15')
INSERT INTO PERSON VALUES(4, '���������', '���������', 1, '1996-07-18')
INSERT INTO PERSON VALUES(4, '������', '�������', 1, '1996-10-25')
INSERT INTO PERSON VALUES(4, '������', '�������', 1, '1994-02-14')
INSERT INTO PERSON VALUES(4, '�������', '�������', 1, '1989-09-22')
INSERT INTO PERSON VALUES(4, '�������', '�����������', 1, '1996-11-15')
INSERT INTO PERSON VALUES(4, '���������', '��������', 1, '1997-07-28')
INSERT INTO PERSON VALUES(4, '�����', '������', 1, '1991-07-27')
INSERT INTO PERSON VALUES(4, '�������', '�����', 1, '1991-04-09')
INSERT INTO PERSON VALUES(4, '������', '�����', 1, '1993-05-24')
INSERT INTO PERSON VALUES(4, '�������', '��������', 1, '1996-01-05')
INSERT INTO PERSON VALUES(4, '�������', '����������', 2, '1993-05-26')
INSERT INTO PERSON VALUES(5, '�������', '������', 1, '1986-09-05')
INSERT INTO PERSON VALUES(5, '�����', '�������', 1, '1985-09-16')
INSERT INTO PERSON VALUES(5, '������', '�������', 1, '1987-10-15')
INSERT INTO PERSON VALUES(5, '������', '������', 2, '1992-03-03')
INSERT INTO PERSON VALUES(5, '����', '�������', 2, '1992-06-02')
INSERT INTO PERSON VALUES(5, '���������', '��������', 1, '1986-12-16')
INSERT INTO PERSON VALUES(5, '�������', '��������', 1, '1990-03-06')
INSERT INTO PERSON VALUES(5, '���������', '�����', 1, '1993-03-06')
INSERT INTO PERSON VALUES(5, '���������', '�������', 1, '1987-05-15')
INSERT INTO PERSON VALUES(5, '�������', '�������', 2, '1988-08-08')
INSERT INTO PERSON VALUES(5, '������', '�������', 1, '1989-07-17')
INSERT INTO PERSON VALUES(5, '��������', '�������', 1, '1990-10-04')
INSERT INTO PERSON VALUES(5, '���������', '����������', 1, '1991-10-01')
INSERT INTO PERSON VALUES(5, '������', '�������', 1, '1983-03-18')
INSERT INTO PERSON VALUES(5, '��������', '����������', 1, '1993-03-18')
INSERT INTO PERSON VALUES(5, '������', '������', 1, '1982-12-03')
INSERT INTO PERSON VALUES(6, '������', '��������', 1, '1995-04-27')
INSERT INTO PERSON VALUES(6, '�����', '��������', 1, '1993-06-08')
INSERT INTO PERSON VALUES(6, '�������', '�������', 1, '1992-01-16')
INSERT INTO PERSON VALUES(6, '������', '��������', 1, '1994-07-12')
INSERT INTO PERSON VALUES(6, '���������', '�������', 1, '1991-02-13')
INSERT INTO PERSON VALUES(6, '���������', '������', 1, '1991-10-18')
INSERT INTO PERSON VALUES(6, '�����', '�������', 1, '1991-12-23')
INSERT INTO PERSON VALUES(6, '�����', '�������', 1, '1991-05-16')
INSERT INTO PERSON VALUES(6, '����', '�����������', 1, '1993-10-08')
INSERT INTO PERSON VALUES(6, '��������', '���������', 2, '1993-06-28')
INSERT INTO PERSON VALUES(6, '�����', '�������', 1, '1991-10-30')
INSERT INTO PERSON VALUES(7, '�����', '�����', 1, '1982-09-07')
INSERT INTO PERSON VALUES(7, '�����', '�����', 1, '1986-02-04')
INSERT INTO PERSON VALUES(7, '�����', '�����������', 1, '1982-09-30')
INSERT INTO PERSON VALUES(7, '�����', '������', 1, '1984-06-18')
INSERT INTO PERSON VALUES(7, '������', '�����', 1, '1986-04-09')
INSERT INTO PERSON VALUES(7, '�����', '�����', 1, '1984-10-01')
INSERT INTO PERSON VALUES(7, '������', '������', 1, '1980-05-16')
INSERT INTO PERSON VALUES(7, '����', '�����', 1, '1980-04-01')
INSERT INTO PERSON VALUES(7, '����', '�������', 1, '1986-09-19')
INSERT INTO PERSON VALUES(7, '������', '�����', 1, '1980-10-01')
INSERT INTO PERSON VALUES(7, '������', '�����', 1, '1988-12-13')
INSERT INTO PERSON VALUES(8, '�������', '��������', 1, '1980-10-17')
INSERT INTO PERSON VALUES(8, '������', '�������', 1, '1987-10-15')
INSERT INTO PERSON VALUES(8, '�������', '������', 1, '1981-08-19')
INSERT INTO PERSON VALUES(8, '������', '����������', 1, '1989-02-09')
INSERT INTO PERSON VALUES(8, '���������', '�����', 1, '1981-09-22')
INSERT INTO PERSON VALUES(8, '�������', '������', 1, '1983-07-29')
INSERT INTO PERSON VALUES(8, '���������', '�����', 1, '1981-03-27')
INSERT INTO PERSON VALUES(8, '�����', '���������', 2, '1981-12-15')
INSERT INTO PERSON VALUES(8, '����', '����������', 1, '1986-01-27')
INSERT INTO PERSON VALUES(9, '����', '������', 1, '1987-03-06')
INSERT INTO PERSON VALUES(9, '����', '���������', 1, '1990-07-26')
INSERT INTO PERSON VALUES(9, '��������', '��������', 1, '1991-06-18')
INSERT INTO PERSON VALUES(9, '����������', '�������', 1, '1989-09-27')
INSERT INTO PERSON VALUES(9, '���������', '������', 1, '1986-08-05')
INSERT INTO PERSON VALUES(9, '������', '���������', 1, '1987-10-27')
INSERT INTO PERSON VALUES(9, '�������', '��������', 1, '1990-10-16')
INSERT INTO PERSON VALUES(9, '���������', '��������', 1, '1991-09-26')
INSERT INTO PERSON VALUES(10, '����', '����������', 2, '1992-10-19')
INSERT INTO PERSON VALUES(10, '�����', '���������', 2, '1992-09-16')
INSERT INTO PERSON VALUES(10, '����', '�����������', 2, '1986-09-04')
INSERT INTO PERSON VALUES(10, '���������', '�������', 2, '1994-10-12')
INSERT INTO PERSON VALUES(10, '�����', '���������', 2, '1986-08-13')
INSERT INTO PERSON VALUES(10, '������', '������������', 2, '1992-04-07')
INSERT INTO PERSON VALUES(10, '���������', '������', 2, '1986-06-12')
INSERT INTO PERSON VALUES(10, '������', '������������', 2, '1987-01-14')
INSERT INTO PERSON VALUES(10, '�������', '�������', 2, '1994-07-20')
INSERT INTO PERSON VALUES(10, '��������', '�������', 2, '1986-12-24')
INSERT INTO PERSON VALUES(10, '����', '��������', 1, '1991-02-01')
INSERT INTO PERSON VALUES(11, '�������', '������', 1, '1990-03-08')
INSERT INTO PERSON VALUES(11, '�����', '������', 1, '1992-01-06')
INSERT INTO PERSON VALUES(11, '������', '��������', 1, '1991-07-30')
INSERT INTO PERSON VALUES(11, '�����', '��������', 1, '1987-10-28')
INSERT INTO PERSON VALUES(11, '������', '������', 1, '1990-07-05')
INSERT INTO PERSON VALUES(11, '�����', '��������', 1, '1988-01-12')
INSERT INTO PERSON VALUES(11, '������', '������', 1, '1992-11-23')
INSERT INTO PERSON VALUES(11, '����', '������', 2, '1994-11-22')
INSERT INTO PERSON VALUES(11, '�������', '�������', 1, '1988-09-09')
INSERT INTO PERSON VALUES(11, '����', '����������', 1, '1993-02-05')
INSERT INTO PERSON VALUES(11, '�������', '������', 1, '1992-09-12')
INSERT INTO PERSON VALUES(12, '������', '����������', 1, '1984-10-25')
INSERT INTO PERSON VALUES(12, '�����', '�������', 1, '1981-04-03')
INSERT INTO PERSON VALUES(12, '��������', '�������', 1, '1983-11-16')
INSERT INTO PERSON VALUES(12, '�����', '���������', 1, '1983-03-30')
INSERT INTO PERSON VALUES(12, '�����', '�������', 1, '1981-08-26')
INSERT INTO PERSON VALUES(12, '���������', '�������', 1, '1988-11-15')
INSERT INTO PERSON VALUES(12, '�����', '���������', 1, '1987-04-15')
INSERT INTO PERSON VALUES(12, '�����', '�������', 2, '1988-04-19')
INSERT INTO PERSON VALUES(13, '�����', '��������', 2, '1988-07-25')
INSERT INTO PERSON VALUES(13, '�����', '������', 1, '1992-08-30')
INSERT INTO PERSON VALUES(13, '���������', '������', 1, '1985-12-24')
INSERT INTO PERSON VALUES(13, '�����', '������', 2, '1982-09-03')
INSERT INTO PERSON VALUES(13, '������', '��������', 1, '1986-11-25')
INSERT INTO PERSON VALUES(13, '�����', '�������', 1, '1984-08-29')
INSERT INTO PERSON VALUES(13, '������', '������', 1, '1988-08-30')
INSERT INTO PERSON VALUES(13, '������', '�������', 1, '1995-12-31')
INSERT INTO PERSON VALUES(14, '������', '����������', 1, '1988-08-15')
INSERT INTO PERSON VALUES(14, '������', '�������', 1, '1987-07-27')
INSERT INTO PERSON VALUES(14, '������', '��������', 1, '1987-06-25')
INSERT INTO PERSON VALUES(14, '�������', '����������', 1, '1988-07-29')
INSERT INTO PERSON VALUES(14, '������', '�������', 1, '1987-01-09')
INSERT INTO PERSON VALUES(14, '������', '����������', 2, '1988-12-13')
INSERT INTO PERSON VALUES(14, '������', '����������', 1, '1988-01-07')
INSERT INTO PERSON VALUES(14, '����', '�������', 1, '1986-02-20')
INSERT INTO PERSON VALUES(14, '���������', '������', 1, '1988-07-01')
INSERT INTO PERSON VALUES(14, '����', '���������', 2, '1987-03-23')
INSERT INTO PERSON VALUES(14, '�������', '�����', 2, '1988-11-29')
INSERT INTO PERSON VALUES(14, '������', '�����', 2, '1986-10-08')
INSERT INTO PERSON VALUES(15, '�������', '�������', 1, '1991-09-18')
INSERT INTO PERSON VALUES(15, '�����', '����', 2, '1996-03-14')
INSERT INTO PERSON VALUES(15, '������', '�������', 1, '1998-01-13')
INSERT INTO PERSON VALUES(15, '���������', '�������', 1, '1991-01-14')
INSERT INTO PERSON VALUES(15, '����', '������', 1, '1993-12-15')
INSERT INTO PERSON VALUES(15, '������', '��������', 1, '1992-09-23')
INSERT INTO PERSON VALUES(15, '�������', '������', 1, '1996-09-19')
INSERT INTO PERSON VALUES(15, '�����', '��������', 1, '1990-07-09')
INSERT INTO PERSON VALUES(16, '�������', '������', 1, '1992-03-31')
INSERT INTO PERSON VALUES(16, '���������', '�����', 1, '1996-01-29')
INSERT INTO PERSON VALUES(16, '������', '������', 1, '1997-09-03')
INSERT INTO PERSON VALUES(16, '����', '������', 1, '1993-10-08')
INSERT INTO PERSON VALUES(16, '�������', '�������', 1, '1990-10-25')
INSERT INTO PERSON VALUES(16, '������', '����1', 1, '1991-07-08')
INSERT INTO PERSON VALUES(16, '������', '����������', 1, '1994-10-25')
INSERT INTO PERSON VALUES(16, '����', '����������', 1, '1993-04-15')
INSERT INTO PERSON VALUES(17, '�����', '�������', 1, '1984-04-08')
INSERT INTO PERSON VALUES(17, '����', '������', 1, '1985-08-03')
INSERT INTO PERSON VALUES(17, '�����', '������', 1, '1996-09-03')
INSERT INTO PERSON VALUES(17, '�����', '��������', 1, '1985-01-06')
INSERT INTO PERSON VALUES(17, '�����', '��������', 1, '1988-07-02')
INSERT INTO PERSON VALUES(17, '�������', '���������', 1, '1991-04-24')
INSERT INTO PERSON VALUES(17, '����', '�������', 2, '1991-08-10')
INSERT INTO PERSON VALUES(17, '������', '����������', 1, '1988-05-11')
INSERT INTO PERSON VALUES(18, '����', '�������', 1, '1985-02-12')
INSERT INTO PERSON VALUES(18, '�����', '���������', 1, '1996-03-17')
INSERT INTO PERSON VALUES(18, '���������', '�������',2, '1986-07-05')
INSERT INTO PERSON VALUES(19, '������', '�������', 1, '1984-04-05')
INSERT INTO PERSON VALUES(19, '�������', '�������', 1, '1993-01-28')
INSERT INTO PERSON VALUES(19, '��������', '������', 1, '1986-09-05')
INSERT INTO PERSON VALUES(19, '���������', '������', 2, '1985-09-16')
INSERT INTO PERSON VALUES(20, '�����', '������', 1, '1987-10-15')
INSERT INTO PERSON VALUES(20, '����', '�������', 1, '1992-03-04')
INSERT INTO PERSON VALUES(21, '�������', '������', 1, '1992-06-02')
INSERT INTO PERSON VALUES(21, '�������', '����������', 1, '1986-12-16')
INSERT INTO PERSON VALUES(21, '�����', '�������', 1, '1990-03-06')
INSERT INTO PERSON VALUES(22, '������', '����������', 1, '1993-10-07')
INSERT INTO PERSON VALUES(22, '�����', '���', 1, '1991-08-12')
INSERT INTO PERSON VALUES(22, '�����', '������', 1, '1990-06-05')
INSERT INTO PERSON VALUES(22, '�����', '��������', 2, '1989-01-19')
INSERT INTO PERSON VALUES(22, '����', '������', 2, '1988-04-26')
INSERT INTO PERSON VALUES(22, '�����', '�������', 1, '1986-09-11')
INSERT INTO PERSON VALUES(22, '�����', '��', 1, '1995-07-12')
INSERT INTO PERSON VALUES(23, '���', '������', 1, '1984-06-25')
INSERT INTO PERSON VALUES(23, '���', '������', 1, '1990-08-29')
INSERT INTO PERSON VALUES(23, '���', '����������', 1, '1996-08-30')
INSERT INTO PERSON VALUES(23, '����', '������', 1, '1985-02-07')
INSERT INTO PERSON VALUES(24, '�������', '�������', 1, '1986-02-10')
INSERT INTO PERSON VALUES(24, '�����', '�������', 1, '1996-06-12')
INSERT INTO PERSON VALUES(24, '������', '�������', 1, '1987-06-18')
INSERT INTO PERSON VALUES(24, '�����', '�������', 1, '1992-07-29')
INSERT INTO PERSON VALUES(27, '���������', '��������', 1, '1995-04-11')
INSERT INTO PERSON VALUES(27, '����', '��������', 2, '1991-03-06')
INSERT INTO PERSON VALUES(27, '������', '�������', 1, '1986-05-21')
INSERT INTO PERSON VALUES(27, '����', '���������', 2, '1994-06-17')
INSERT INTO PERSON VALUES(27, '���������', '��������', 2, '1988-10-04')
INSERT INTO PERSON VALUES(27, '������', '�������', 1, '1992-10-27')
INSERT INTO PERSON VALUES(28, '������', '��������', 1, '1991-02-04')
INSERT INTO PERSON VALUES(28, '�������', '��������', 1, '1993-02-22')
INSERT INTO PERSON VALUES(28, '�������', '�����������', 1, '1994-05-17')
INSERT INTO PERSON VALUES(28, '���������', '???', 1, '1987-01-12')
INSERT INTO PERSON VALUES(28, '������', '�������', 1, '1992-07-09')
INSERT INTO PERSON VALUES(28, '�������', '�������', 1, '1986-09-03')
INSERT INTO PERSON VALUES(28, '������', '�������', 1, '1987-08-31')
INSERT INTO PERSON VALUES(29, '���������', '�����', 1, '1989-02-03')
INSERT INTO PERSON VALUES(29, '�����', '�������', 1, '1987-05-01')
INSERT INTO PERSON VALUES(29, '�������', '�����', 1, '1985-01-29')
INSERT INTO PERSON VALUES(29, '���������', '�������', 1, '1992-10-28')
INSERT INTO PERSON VALUES(29, '�����', '???', 1, '1993-09-15')
INSERT INTO PERSON VALUES(30, '������', '������', 1, '1985-11-26')

INSERT INTO CITY VALUES('������')
INSERT INTO CITY VALUES('����')
INSERT INTO CITY VALUES('�����-��������')
INSERT INTO CITY VALUES('�����')
INSERT INTO CITY VALUES('�����������')
INSERT INTO CITY VALUES('�����������')

INSERT INTO [LOCATION] VALUES('���������� ��� �����', 4,'��������� �����., �.2�') --1
INSERT INTO [LOCATION] VALUES('���������� ��� �����-����������', 3,'��. ��������� ��������, �.15') --2
INSERT INTO [LOCATION] VALUES('���������� ��� ������', 1,'��. ��������������, �. 2') --3
INSERT INTO [LOCATION] VALUES('����������� ������������� ����� ���������� �����', 1, '����������� �������, �.2') --4
INSERT INTO [LOCATION] VALUES('�����-����� ���������', 2, '��. ������������, �.3') --5
INSERT INTO [LOCATION] VALUES('������-����', 5, '��. ������, �.11') --6
INSERT INTO [LOCATION] VALUES('������ ���� ����', 6, '��. �������������, �.20') --7

INSERT INTO STAGE VALUES('������ 1/8 ������') --1
INSERT INTO STAGE VALUES('������ 1/8 ������') --2
INSERT INTO STAGE VALUES('������ 1/8 ������') --3
INSERT INTO STAGE VALUES('��������� 1/8 ������') --4
INSERT INTO STAGE VALUES('������ ��������-������') --5
INSERT INTO STAGE VALUES('������ ��������-������') --6
INSERT INTO STAGE VALUES('������ ��������-������') --7
INSERT INTO STAGE VALUES('������ ���������') --8
INSERT INTO STAGE VALUES('������ ���������') --9 
INSERT INTO STAGE VALUES('�����') --10
INSERT INTO STAGE VALUES('��� �����') --11


INSERT INTO GAMETYPE VALUES('������ �����') --1
INSERT INTO GAMETYPE VALUES('������� �����������') --2
INSERT INTO GAMETYPE VALUES('��������� ������ ����') --3
INSERT INTO GAMETYPE VALUES('��������� �����') --4
INSERT INTO GAMETYPE VALUES('������ ����') --5

INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=5VuU1lovSng', '��� ������� ������ ������� �� �����!') --1
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vuZU4H7aFCY', '��� ����� - ����������� ����� 2009') --2
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=PJCvWSQGxCc', '��� - ��� ����� � ���� - ������ ������ �������') --3
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=CXwrj4aw5pE', '��� ������� ���������� - ������� ������ ���') --4
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=bSs79vZ0s24', '����� � ����. ������ �������� - ������ �����������') --5
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=t4IdDIYYp-M', '����� �� ������� ������') --6
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=3XXJYF8k6yc', '������� ���� ������') --7
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vJE1QjwdJBM', '��� ����� - �����') --8
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=z7spBL00J7g', '��� ����� ����������: ������!') --9
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=tRH8QOqbp7E', '��� - ��� ������ - ������ �����') --10
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=895wUMT7C2c', '��� �� - ������� ������ ���') --��� --11
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=BH7Ma2d-8F4', '������� ��� ����� ������� �1') --12
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=JC70iZGR7iE', '��� ���� ������ ������') --13
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=5ssvYnyyZ0M', '��� ������ ��������� ����� ��� ��� �����') --14
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=kTyY6cZiJgM', '��� ����� - 2012 ������ ���� (��� ���� ������)') --15
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=Qzgo5_x6AHY', '��� ���� ��� ��������� ������') --16
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=wH0PRxc3xlc', '��� ����� - ���������') --17
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=2FpG6coL-KM', '������ ����� ���� MIX � ������ ����!') --18
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=SIkT9kqG_10', '��� �������� ��� ��������� ������') --19
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=E8fHFqhNWDk', '��� ������� ������ ������� �� �����!') --20
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=fwSKQaVxig8', '���-�� �������') --21
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=d6V8GVpIWCQ', '����� ���������� �������!!!') --22
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=nvcK4Ejdk8Q', '���-�� �����������') --23
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=Z92ACjxX7Sg', '�������� ������ ����������� ���')-- 24

INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=vb3wJn35NqM', '��� 2019 ������ ���� ������ 1/8') --25
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=qu2liv42RE4', '��� 2019 ������ ���� ������ 1/8') --26
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=8mzpOmLrZBU', '��� 2019 ������ ���� ������ 1/8') --27
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=xlMTmSCnwO8', '��� 2019 ������ ���� ��������� 1/8') --28
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=b6U7ZOO27wA', '��� 2019 ������ ���� ������ 1/2') --29
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=8Il_ojvpe-0', '��� 2019 ������ ���� ������ 1/4') --30
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=_UwDY1lshmE', '��� 2019 ������ ���� ������ 1/4') --31
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=b6U7ZOO27wA', '��� 2019 ������ ���� ������ 1/2 ') --32
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=tQVbOIuPN2s', '��� 2019 ������ ���� ������ 1/2') --33
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=lVXc6PZpEpM', '��� 2019 ������ ���� �����') --34
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=z3vnDkmOasU', '��� 2018 ������ ���� ������ 1/8 ') --35
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=EfgUMoJrWIE', '��� 2018 ������ ���� ������ 1/8') --36
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=uzf85kvE0zc', '��� 2018 ������ ���� ������ 1/8') --37
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=VwZVC3Rolto', '��� 2018 ������ ���� ��������� 1/8') --38
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=cXVfwHnAB-k', '��� 2018 ������ ���� ������ 1/4') --39
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=oq9FUN0622E', '��� 2018 ������ ���� ������ 1/4') --40
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=NbTpaWtR94k', '��� 2018 ������ ���� ������ 1/4') --41
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=TZ6kKRX8fHU', '��� 2018 ������ ���� ������ 1/2') --42
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=uvOnkpXy9JE', '��� 2018 ������ ���� ������ 1/2') --43
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=X5_4JwMS-OI', '��� 2018 ������ ���� �����') --44
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=rGXk6nKUk-E', '��� 2018 ��������� �����') --45
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=TMog9CRm-ew', '��� 2018 ������ �����') --46
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=P-nCfhgL_rA', '��� 2019 ������� �����������') --47
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=y5OsjKjxJik', '��� 2019 ����� ���� ������') --48
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=pUPZ6PplDJo', '��� 2019 ������ �����') --49
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XmX_Ndn0G2s', '��� 2019 ��������� �����') --50
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=HgIVqBuAfaU', '��� 2020 ������ ���� ������ 1/8') --51
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=p6Yv7GDAASE', '��� 2020 ������ ���� ������ 1/8') --52
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=wPNl5eKcV0M', '��� 2020 ������ ���� ������ 1/8') --53
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcQSpKQNLpc', '��� 2020 ������ ���� ��������� 1/8') --54
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcdfpKQNLpc', '��� 2018 ������� �����������') --55
INSERT INTO VIDEOS VALUES('https://www.youtube.com/watch?v=XcdfpKQNLpc', '��� 2017 ������� �����������') --56

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
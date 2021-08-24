-- Task 2

--1 �������� � ��� ������ ��������, �������� � 2018 ����;
select a.name_, a.p_year 
	from albums as a 
	where a.p_year  = 2018
;

--2 �������� � ����������������� ������ ����������� �����;
select name_, duration 
	from tracks 
	order by duration desc 
	limit 1
;

--3 �������� ������, ����������������� ������� �� ����� 3,5 ������;
select t.name_
	from tracks as t
	where t.duration >= 210
;

--4 �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
select c.name_ 
	from collection as c 
	where c.p_year between 2018 and 2020
;

--5 �����������, ��� ��� ������� �� 1 �����;
select s.name_ 
	from singer as s 
	where s.name_ not like '% %'
;

--6 �������� ������, ������� �������� ����� "���"/"my".
select t.name_ 
	from tracks as t 
	where t.name_ ilike '%���%' or t.name_ ilike '%my%'
;


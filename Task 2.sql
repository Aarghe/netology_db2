-- Task 2

--1 название и год выхода альбомов, вышедших в 2018 году;
select a.name_, a.p_year 
	from albums as a 
	where a.p_year  = 2018
;

--2 название и продолжительность самого длительного трека;
select name_, duration 
	from tracks 
	order by duration desc 
	limit 1
;

--3 название треков, продолжительность которых не менее 3,5 минуты;
select t.name_
	from tracks as t
	where t.duration >= 210
;

--4 названия сборников, вышедших в период с 2018 по 2020 год включительно;
select c.name_ 
	from collection as c 
	where c.p_year between 2018 and 2020
;

--5 исполнители, чье имя состоит из 1 слова;
select s.name_ 
	from singer as s 
	where s.name_ not like '% %'
;

--6 название треков, которые содержат слово "мой"/"my".
select t.name_ 
	from tracks as t 
	where t.name_ ilike '%мой%' or t.name_ ilike '%my%'
;


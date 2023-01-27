drop table if exists city;

create table if not exists city(
	id INT,
	name VARCHAR,
	countrycode VARCHAR,
	district VARCHAR,
	population INT
);

create table if not exists station(
	id INT,
	city VARCHAR,
	state VARCHAR,
	lat_n INT,
	long_w INT
);

COPY CITY (id, name, countrycode, district, population)
FROM 'D:\Tech\iNeuron - Big Data Bootcamp 2.0\SQL Challenge Quesions\city.csv'
DELIMITER ','
CSV HEADER;

COPY station (id, city, state, lat_n, long_w)
FROM 'D:\Tech\iNeuron - Big Data Bootcamp 2.0\SQL Challenge Quesions\stationdata.csv'
DELIMITER ','
CSV HEADER;


select * from city;
select * from station;

-- Questions:

-- Q1. Query all columns for all American cities in the CITY table with populations larger than 100000;

select * from city 
where countrycode = 'USA' and population > 100000;

-- Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000

select name from city
where countrycode ='USA' and population > 120000;


-- Q3. Query all columns (attributes) for every row in the CITY table
SELECT * FROM information_schema.columns where table_name = 'city';

-- Q4. Query all columns for a city in CITY with the ID 1661
select * from city where id = 1661; 

-- Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * from city where countrycode = 'JPN';

-- Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select name from city where countrycode = 'JPN';

--Q7. Query a list of CITY and STATE from the STATION table
select city, state from station;

--Q8. Query a list of CITY names from STATION for cities that have an even ID number. 
--Print the results in any order, but exclude duplicates from the answer.
select distinct city, state from station
where id%2 = 0
order by city

--Q9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table
select count(city) total_city, count(distinct(city)) as unique_cities, count(city) - count(distinct(city)) difference
from station;

--Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
--(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically

select * from station
where city in
((select max(city) city from station order by city limit 1)
 union
 (select min(city) city from station order by city limit 1)
);

-- Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates
select distinct city
from station
where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%';

-- Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates
select distinct city
from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';

-- Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city
from station
where city not like 'A%' or city not like 'E%' or city not like 'I%' or city not like 'O%' or city not like 'U%';

-- Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates
select distinct city
from station
where city not like '%a' or city not like '%e' or city not like '%i' or city not like '%o' or city not like '%u';

-- Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

-- Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates

-- Create Product Table

drop table if exists product;

create table product(
	product_id INT,
	product_name VARCHAR,
	unit_price INT,
	primary key (product_id)
);

drop table if exists sales;

create table sales(
	seller_id INT,
	product_id INT,
	buyer_id INT,
	sale_date date,
	quantity INT,
	price INT,
	foreign key(product_id) references product(product_id)
);

insert into product values (1, 'S8', 1000),
						   (2, 'G4', 800),
						   (3, 'iPhone', 1400);

select * from product;

insert into sales values
(1, 1, 1, '2019-01-21', 2, 2000),
(1, 2, 2, '2019-02-17', 1, 800),
(2, 2, 3, '2019-06-02', 1, 800),
(3, 3, 4, '2019-05-13', 2, 2800);

select * from sales;

-- Q17. Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
--      between 2019-01-01 and 2019-03-31 inclusive

select * from product p
join sales s
on p.product_id = s.product_id
where sale_date >= '2019-01-01' and sale_date <= '2019-03-31';

-- Create Author table

drop table if exists authors;

create table authors(
	article_id int,
	author_id int,
	viewer_id int,
	view_date date
);

insert into authors values
(1, 3, 5, '2019-08-01'),
(1, 3, 6, '2019-08-02'),
(2, 7, 7, '2019-08-01'),
(2, 7, 6, '2019-08-02'),
(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3, 4, 4, '2019-07-21')

select * from authors;

-- Q18. Write an SQL query to find all the authors that viewed at least one of their own articles.
--      Return the result table sorted by id in ascending order
select distinct author_id
from authors
where author_id = viewer_id



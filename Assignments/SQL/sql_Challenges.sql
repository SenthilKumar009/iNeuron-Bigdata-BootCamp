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

-- Create delivery table

drop table if exists delivery;

create table delivery(
	delivery_id int,
	customer_id int,
	order_date date,
	customer_pref_delivery_date date,
	primary key (delivery_id)
);

insert into delivery values
(1, 1, '2019-08-01', '2019-08-02'),
(2, 5, '2019-08-02', '2019-08-02'),
(3, 1, '2019-08-11', '2019-08-11'),
(4, 3, '2019-08-24', '2019-08-26'),
(5, 4, '2019-08-21', '2019-08-22'),
(6, 2, '2019-08-11', '2019-08-13');
 
select * from delivery;

-- Q19: Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal places

with order_calc as
(select count(case when order_date = customer_pref_delivery_date then 1 end) * 1.0 immediate_order_count, count(*)*1.0 total_order,
	cast(count(case when order_date = customer_pref_delivery_date then 1 end) as float) / cast(count(*) as float) order_pct
 from delivery
)
select round((immediate_order_count/ total_order),2) as immediate_order_pct from order_calc;


-- Ad table creation

drop table if exists ads;

create table if not exists ads(
	ad_id int,
	user_id int,
	action VARCHAR
);

insert into ads values
(1, 1, 'Clicked'),
(2, 2, 'Clicked'),
(3, 3, 'Viewed'),
(5, 5, 'Ignored'),
(1, 7, 'Ignored'),
(2, 7, 'Viewed'),
(3, 5, 'Clicked'),
(1, 4, 'Viewed'),
(2, 11, 'Viewed'),
(1, 2, 'Clicked');

select * from ads;

-- Q20. Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
--		Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a tie.
with action_data as
(
 (select ad_id, action, count(*) action_count
  from ads
  where action = 'Clicked'
  group by ad_id, action
 )
 union
 (select ad_id, action, count(*) action_count
  from ads
  where action = 'Viewed'
  group by ad_id, action
 )
 union
 (select ad_id, action, count(*) action_count
  from ads
  where action = 'Ignored' and ad_id not in (select ad_id from ads where action = 'Clicked' or action = 'Viewed')
  group by ad_id, action
 )
)
select ad_id,
	   case when action = 'Clicked' or action = 'Viewed' then 
	   			 (select sum(action_count) from action_data where action = 'Clicked' group by action)/
				 ((select sum(action_count) from action_data where action = 'Clicked' group by action) +
				  (select sum(action_count) from action_data where action = 'Viewed' group by action)) * 100
		    else 0
	   end ctr_pct
from action_data

-- Q21. Write an SQL query to find the team size of each of the employees. Return result table in any order.

-- Create Table:
create table if not exists employee(
	employee_id int,
	team_id int
);

insert into employee values
(1, 8),
(2, 8),
(3, 8),
(4, 7),
(5, 9),
(6, 9);

select * from employee;

-- Solution:
WITH team_size as
(
	Select team_id, count(team_id) total_count
	from employee
	group by team_id
)
select e.employee_id, t.total_count team_size from employee e
join team_size t 
on e.team_id = t.team_id

'''
Q22. Write an SQL query to find the type of weather in each country for November 2019.
The type of weather is:
	● Cold if the average weather_state is less than or equal 15,
	● Hot if the average weather_state is greater than or equal to 25, and
	● Warm otherwise.

Return result table in any order.
'''

-- Create Table:
drop table countries;

create table if not exists countries(
	country_id int,
	country_name varchar,
	primary key (country_id)
);
drop table weather;

create table if not exists weather(
	country_id int,
	weather_state int,
	day date,
	primary key (country_id, day)
);

insert into countries values
(2, 'USA'),(3, 'Australia'),(7, 'Peru'),(5, 'China'),(8, 'Morocco'),(9, 'Spain')

insert into weather values
(2, 15, '2019-11-01'),(2, 12, '2019-10-28'),(2, 12, '2019-10-27'),(3, -2, '2019-11-10'),
(3, 0, '2019-11-11'),(3, 3, '2019-11-12'),(5, 16, '2019-11-07'),
(5, 18, '2019-11-09'),(5, 21, '2019-11-23'),(7, 25, '2019-11-28'),(7, 22, '2019-12-01'),
(7, 20, '2019-12-02'),(8, 25, '2019-11-05'),(8, 27, '2019-11-15'),
(8, 31, '2019-11-25'),(9, 7, '2019-10-23'),(9, 3, '2019-12-23')

select * from countries;

select c.country_name, 
	   case when avg(weather_state) <= 15 then 'Cold'
	   		when avg(weather_state) >= 25 then 'Hot'
			else 'Warm'
	   end as weather_type
from weather w
join countries c
on c.country_id = w.country_id
where day >= '2019-11-01' and day <= '2019-11-30'
group by c.country_id;

-- Q23. Write an SQL query to find the average selling price for each product. average_price should be rounded to 2 decimal places.

-- Create tables

drop table prices;

create table if not exists Prices(
	product_id int,
	start_date date,
	end_date date,
	price int,
	primary key (product_id, start_date, end_date)
);

create table if not exists unitsold(
	product_id int,
	purchase_date date,
	units int
);


insert into Prices values
(1, '2019-02-17', '2019-02-28', 5), (1, '2019-03-01', '2019-03-22', 20),(2, '2019-02-01', '2019-02-20', 15),(2, '2019-02-21', '2019-03-31', 30)

insert into unitsold values
(1, '2019-02-25', 100),(1, '2019-03-01', 15),(2, '2019-02-10', 200),(2, '2019-03-22', 30)

select * from unitsold;
select * from prices;

select p.product_id,
	   case when u.purchase_date >= p.start_date and u.purchase_date <= p.end_date then
	   			 p.price * u,units
			when 
from prices p
join unitsold u
on p.product_id = u.product_id

-- Q24. Write an SQL query to report the first login date for each player. Return the result table in any order

-- Create Tables:

create table if not exists Activity(
	player_id int,
	device_id int,
	event_date date,
	games_played int,
	primary key (player_id, event_date)
);


insert into activity values
(1, 2, '2016-03-01', 5),
(1, 2, '2016-05-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

select * from activity;

-- Solution:
select player_id, min(event_date) first_login
from activity
group by player_id
order by player_id;


-- Q25. Write an SQL query to report the device that is first logged in for each player. Return the result table in any order

select player_id, device_id
from activity
where event_date in
(select min(event_date) first_login
 from activity
 group by player_id)

-- Q26. Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.

-- Create Tables

drop table if exists products;

create table if not exists products(
	product_id int,
	product_name varchar,
	product_category varchar
);

create table if not exists prders(
	product_id int,
	order_date date,
	unit int
);


-- Data Load:
insert into products values
(1, 'Leetcode Solutions', 'Book'),
(2, 'Jewels of Stringology', 'Book'),
(3, 'HP', 'Laptop'),
(4, 'Lenovo', 'Laptop'),
(5, 'Leetcode', 'Kit T-shirt')

insert into prders values
(1, '2020-02-05', 60),
(1, '2020-02-10', 70),
(2, '2020-01-18', 30),
(2, '2020-02-11', 80),
(3, '2020-02-17', 2),
(3, '2020-02-24', 3),
(4, '2020-03-01', 20),
(4, '2020-03-04', 30),
(4, '2020-03-04', 60),
(5, '2020-02-25', 50),
(5, '2020-02-27', 50),
(5, '2020-03-01', 50);


-- Solution:

select p.product_name, sum(unit) total_units
from prders o
join products p
on p.product_id = o.product_id
where order_date > '2020-02-01' and order_date < '2020-02-28'
group by p.product_name
having sum(unit) >= 100;





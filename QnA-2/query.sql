/*
	2. Find the number of users in each country.
*/
select country, count(id) user_count from users group by country;

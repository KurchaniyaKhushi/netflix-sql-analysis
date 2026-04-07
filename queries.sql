SELECT * FROM netflix;

--TOTAL ROWS 
SELECT COUNT(*) 
FROM netflix;

--MOVIES VS TV SHOWS
SELECT type,COUNT (*) 
FROM netflix 
GROUP BY type;

--TOP countries
SELECT country,COUNT(*) AS TOTAL 
FROM netflix 
GROUP BY country 
ORDER BY TOTAL DESC 
LIMIT 5;

--clean data(empty values)
SELECT * 
FROM netflix 
WHERE country IS NULL OR country='';

--unique insights
SELECT release_year,COUNT(*) AS TOTAL 
FROM netflix 
GROUP BY release_year 
ORDER BY release_year DESC;


--most common rating
select rating,count(*) as total
FROM netflix
GROUP by rating
order by total desc;

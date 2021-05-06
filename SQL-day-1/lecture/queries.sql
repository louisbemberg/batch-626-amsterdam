SELECT field_name1, field_name2
FROM table_name

SELECT first_name, specialty
FROM doctors


SELECT *
FROM table_name


SELECT *
FROM doctors
WHERE age = 21

SELECT *
FROM doctors
WHERE age < 21


SELECT *
FROM doctors
WHERE age <= 21

SELECT *
FROM doctors
WHERE specialty = 'Surgeon'
------------------
SELECT *
FROM doctors
WHERE specialty LIKE '%Surgeon%'
------------------

SELECT *
FROM doctors
WHERE specialty LIKE 'Surgeon'
'dsajdgahsdgsa--Surgeon--ahvdjasda'


SELECT *
FROM patients
WHERE age < 5
OR age > 85          ||

SELECT *
FROM patients
WHERE age < 5
AND name = "John"    &&


SELECT *
FROM patients
WHERE age < 5
OR age > 85
ORDER BY age DESC

SELECT COUNT(*)
FROM doctors

SELECT COUNT(*)
FROM doctors
WHERE specialty LIKE '%Surgeon%'

SELECT COUNT(*) AS c, specialty
FROM doctors
GROUP BY specialty
ORDER BY c DESC


SELECT COUNT(*) c, specialty AS s
FROM doctors d
GROUP BY specialty
ORDER BY c DESC

SELECT *
FROM inhabitants
WHERE name LIKE '%o%'
or name LIKE '%O%'



MULTI TABLE QUERIES


SELECT *
FROM cities
JOIN inhabitants ON inhabitants.city_id = cities.id
WHERE inhabitants.name = "John"

SELECT *
FROM inhabitants
JOIN cities ON inhabitants.city_id = cities.id
WHERE city.name = 'Paris'

































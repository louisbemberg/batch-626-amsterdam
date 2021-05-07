CREATE TABLE `doctors` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `age` INTEGER,
  `specialty` TEXT
);


INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Who', 50, 'Time Traveller');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. House', 57, 'Surgeon');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Dolittle', 34, 'Veterinarian');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Octopus', 28, 'Brain Surgeon');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('John Smith', 39, 'Anesthesiologist');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Emma Reale', 31, 'Cardiologist');

QUERY1
SELECT *
FROM apartments
-- WHERE city = 'Amsterdam'

QUERY2
SELECT *
FROM rooms
WHERE id = 24628192

QUERY3
SELECT *
FROM apartments
WHERE city = 'Amsterdam'
AND dates =


INSERT INTO tablename (column1, column2, column3)
VALUES (data1, data2, data3)


CREATE TABLE `doctors` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `age` INTEGER,
  `specialty` TEXT
);

INSERT INTO doctors (age, name, specialty)
VALUES ('Marilou', 26, 'Dermatologist');



UPDATE tablename SET column1 = data1, column2 = data2, (...)
WHERE id = 3



DELETE FROM tablename ******* WHERE id = 32 *******































SELECT SUM(C.POPULATION) FROM CITY C INNER JOIN COUNTRY C2 ON C.COUNTRYCODE = C2.CODE AND C2.CONTINENT = 'Asia';

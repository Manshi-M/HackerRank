SELECT C2.CONTINENT, FLOOR(AVG(C.POPULATION)) FROM CITY C 
INNER JOIN COUNTRY C2 ON C.COUNTRYCODE = C2.CODE GROUP BY C2.CONTINENT;

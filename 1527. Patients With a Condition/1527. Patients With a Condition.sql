-- Write your PostgreSQL query statement below
SELECT * FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%';

--  here only 'DIAB1%' will include results with 'DIAB1' if its first in the string
--  '%DIAB1% will include results with 'DIAB1' if its anywhere in the string even in the middle of other words which is not acceptable
--  '% DIAB1%' will include results with 'DIAB1' if its anywhere in the string but only if its preceded by a space which is acceptable
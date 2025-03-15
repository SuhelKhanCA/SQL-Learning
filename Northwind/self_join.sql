-- SELF JOIN
SELECT A.CompanyName AS CompanyName1, B.CompanyName AS CompanyName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
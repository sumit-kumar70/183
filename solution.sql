-- LeetCode 183: Customers Who Never Order
-- Find all customers who never ordered anything.

SELECT Name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 FROM Orders o WHERE o.CustomerId = c.Id
);

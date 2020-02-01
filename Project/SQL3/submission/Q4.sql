-- 4.	Which is the item with the greatest amount in stock?  
-- Return the name and assume that all items have the same type (grams).

SELECT IngredientName  
FROM Ingredients AS a
JOIN Stock AS b
ON b.IngredientID = a.IngredientID
Where Quantity IN (SELECT MAX(Quantity) FROM Stock)
;



